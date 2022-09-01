<?php

namespace Botble\Tickets\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Tickets\Http\Requests\TicketsRequest;
use Botble\Tickets\Repositories\Interfaces\TicketsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Tickets\Tables\TicketsTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Tickets\Forms\TicketsForm;
use Botble\Base\Forms\FormBuilder;

class TicketsController extends BaseController
{
    /**
     * @var TicketsInterface
     */
    protected $ticketsRepository;

    /**
     * @param TicketsInterface $ticketsRepository
     */
    public function __construct(TicketsInterface $ticketsRepository)
    {
        $this->ticketsRepository = $ticketsRepository;
    }

    /**
     * @param TicketsTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(TicketsTable $table)
    {
        page_title()->setTitle(trans('plugins/tickets::tickets.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/tickets::tickets.create'));

        return $formBuilder->create(TicketsForm::class)->renderForm();
    }

    /**
     * @param TicketsRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(TicketsRequest $request, BaseHttpResponse $response)
    {
        $tickets = $this->ticketsRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(TICKETS_MODULE_SCREEN_NAME, $request, $tickets));

        return $response
            ->setPreviousUrl(route('tickets.index'))
            ->setNextUrl(route('tickets.edit', $tickets->id))
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
        $tickets = $this->ticketsRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $tickets));

        page_title()->setTitle(trans('plugins/tickets::tickets.edit') . ' "' . $tickets->name . '"');

        return $formBuilder->create(TicketsForm::class, ['model' => $tickets])->renderForm();
    }

    /**
     * @param int $id
     * @param TicketsRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, TicketsRequest $request, BaseHttpResponse $response)
    {
        $tickets = $this->ticketsRepository->findOrFail($id);

        $tickets->fill($request->input());

        $tickets = $this->ticketsRepository->createOrUpdate($tickets);

        event(new UpdatedContentEvent(TICKETS_MODULE_SCREEN_NAME, $request, $tickets));

        return $response
            ->setPreviousUrl(route('tickets.index'))
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
            $tickets = $this->ticketsRepository->findOrFail($id);

            $this->ticketsRepository->delete($tickets);

            event(new DeletedContentEvent(TICKETS_MODULE_SCREEN_NAME, $request, $tickets));

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
            $tickets = $this->ticketsRepository->findOrFail($id);
            $this->ticketsRepository->delete($tickets);
            event(new DeletedContentEvent(TICKETS_MODULE_SCREEN_NAME, $request, $tickets));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
