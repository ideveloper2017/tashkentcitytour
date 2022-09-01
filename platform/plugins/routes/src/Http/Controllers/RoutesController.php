<?php

namespace Botble\Routes\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Routes\Http\Requests\RoutesRequest;
use Botble\Routes\Repositories\Interfaces\RoutesInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Routes\Tables\RoutesTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Routes\Forms\RoutesForm;
use Botble\Base\Forms\FormBuilder;

class RoutesController extends BaseController
{
    /**
     * @var RoutesInterface
     */
    protected $routesRepository;

    /**
     * @param RoutesInterface $routesRepository
     */
    public function __construct(RoutesInterface $routesRepository)
    {
        $this->routesRepository = $routesRepository;
    }

    /**
     * @param RoutesTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(RoutesTable $table)
    {
        page_title()->setTitle(trans('plugins/routes::routes.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/routes::routes.create'));

        return $formBuilder->create(RoutesForm::class)->renderForm();
    }

    /**
     * @param RoutesRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(RoutesRequest $request, BaseHttpResponse $response)
    {
        $routes = $this->routesRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(ROUTES_MODULE_SCREEN_NAME, $request, $routes));

        return $response
            ->setPreviousUrl(route('routes.index'))
            ->setNextUrl(route('routes.edit', $routes->id))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    /**
     * @param int $id
     * @param Request $request
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function edit($id, FormBuilder $formBuilder, Request $request)
    {
        $routes = $this->routesRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $routes));

        page_title()->setTitle(trans('plugins/routes::routes.edit') . ' "' . $routes->name . '"');

        return $formBuilder->create(RoutesForm::class, ['model' => $routes])->renderForm();
    }

    /**
     * @param int $id
     * @param RoutesRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, RoutesRequest $request, BaseHttpResponse $response)
    {
        $routes = $this->routesRepository->findOrFail($id);

        $routes->fill($request->input());

        $routes = $this->routesRepository->createOrUpdate($routes);

        event(new UpdatedContentEvent(ROUTES_MODULE_SCREEN_NAME, $request, $routes));

        return $response
            ->setPreviousUrl(route('routes.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    /**
     * @param int $id
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function destroy(Request $request, $id, BaseHttpResponse $response)
    {
        try {
            $routes = $this->routesRepository->findOrFail($id);

            $this->routesRepository->delete($routes);

            event(new DeletedContentEvent(ROUTES_MODULE_SCREEN_NAME, $request, $routes));

            return $response->setMessage(trans('core/base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @throws Exception
     */
    public function deletes(Request $request, BaseHttpResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response
                ->setError()
                ->setMessage(trans('core/base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $routes = $this->routesRepository->findOrFail($id);
            $this->routesRepository->delete($routes);
            event(new DeletedContentEvent(ROUTES_MODULE_SCREEN_NAME, $request, $routes));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
