<?php

namespace Botble\Schedule\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Schedule\Http\Requests\ScheduleRequest;
use Botble\Schedule\Repositories\Interfaces\ScheduleInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Schedule\Tables\ScheduleTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Schedule\Forms\ScheduleForm;
use Botble\Base\Forms\FormBuilder;

class ScheduleController extends BaseController
{
    /**
     * @var ScheduleInterface
     */
    protected $scheduleRepository;

    /**
     * @param ScheduleInterface $scheduleRepository
     */
    public function __construct(ScheduleInterface $scheduleRepository)
    {
        $this->scheduleRepository = $scheduleRepository;
    }

    /**
     * @param ScheduleTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(ScheduleTable $table)
    {
        page_title()->setTitle(trans('plugins/schedule::schedule.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/schedule::schedule.create'));

        return $formBuilder->create(ScheduleForm::class)->renderForm();
    }

    /**
     * @param ScheduleRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(ScheduleRequest $request, BaseHttpResponse $response)
    {
        $schedule = $this->scheduleRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(SCHEDULE_MODULE_SCREEN_NAME, $request, $schedule));

        return $response
            ->setPreviousUrl(route('schedule.index'))
            ->setNextUrl(route('schedule.edit', $schedule->id))
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
        $schedule = $this->scheduleRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $schedule));

        page_title()->setTitle(trans('plugins/schedule::schedule.edit') . ' "' . $schedule->name . '"');

        return $formBuilder->create(ScheduleForm::class, ['model' => $schedule])->renderForm();
    }

    /**
     * @param int $id
     * @param ScheduleRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, ScheduleRequest $request, BaseHttpResponse $response)
    {
        $schedule = $this->scheduleRepository->findOrFail($id);

        $schedule->fill($request->input());

        $schedule = $this->scheduleRepository->createOrUpdate($schedule);

        event(new UpdatedContentEvent(SCHEDULE_MODULE_SCREEN_NAME, $request, $schedule));

        return $response
            ->setPreviousUrl(route('schedule.index'))
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
            $schedule = $this->scheduleRepository->findOrFail($id);

            $this->scheduleRepository->delete($schedule);

            event(new DeletedContentEvent(SCHEDULE_MODULE_SCREEN_NAME, $request, $schedule));

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
            $schedule = $this->scheduleRepository->findOrFail($id);
            $this->scheduleRepository->delete($schedule);
            event(new DeletedContentEvent(SCHEDULE_MODULE_SCREEN_NAME, $request, $schedule));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
