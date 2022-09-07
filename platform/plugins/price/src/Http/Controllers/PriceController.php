<?php

namespace Botble\Price\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Price\Http\Requests\PriceRequest;
use Botble\Price\Repositories\Interfaces\PriceInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Price\Tables\PriceTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Price\Forms\PriceForm;
use Botble\Base\Forms\FormBuilder;

class PriceController extends BaseController
{
    /**
     * @var PriceInterface
     */
    protected $priceRepository;

    /**
     * @param PriceInterface $priceRepository
     */
    public function __construct(PriceInterface $priceRepository)
    {
        $this->priceRepository = $priceRepository;
    }

    /**
     * @param PriceTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(PriceTable $table)
    {
        page_title()->setTitle(trans('plugins/price::price.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/price::price.create'));

        return $formBuilder->create(PriceForm::class)->renderForm();
    }

    /**
     * @param PriceRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(PriceRequest $request, BaseHttpResponse $response)
    {
        $price = $this->priceRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(PRICE_MODULE_SCREEN_NAME, $request, $price));

        return $response
            ->setPreviousUrl(route('price.index'))
            ->setNextUrl(route('price.edit', $price->id))
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
        $price = $this->priceRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $price));

        page_title()->setTitle(trans('plugins/price::price.edit') . ' "' . $price->name . '"');

        return $formBuilder->create(PriceForm::class, ['model' => $price])->renderForm();
    }

    /**
     * @param int $id
     * @param PriceRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, PriceRequest $request, BaseHttpResponse $response)
    {
        $price = $this->priceRepository->findOrFail($id);

        $price->fill($request->input());

        $price = $this->priceRepository->createOrUpdate($price);

        event(new UpdatedContentEvent(PRICE_MODULE_SCREEN_NAME, $request, $price));

        return $response
            ->setPreviousUrl(route('price.index'))
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
            $price = $this->priceRepository->findOrFail($id);

            $this->priceRepository->delete($price);

            event(new DeletedContentEvent(PRICE_MODULE_SCREEN_NAME, $request, $price));

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
            $price = $this->priceRepository->findOrFail($id);
            $this->priceRepository->delete($price);
            event(new DeletedContentEvent(PRICE_MODULE_SCREEN_NAME, $request, $price));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
