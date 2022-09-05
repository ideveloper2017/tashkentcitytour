<?php

namespace Botble\Routes\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Routes\Http\Requests\RoutesRequest;
use Botble\Routes\Models\Routes;

class RoutesForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {
        $this
            ->setupModel(new Routes)
            ->setValidatorClass(RoutesRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label'      => trans('core/base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('core/base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('days', 'text', [
                'label'      => trans('plugins/routes::routes.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('plugins/routes::routes.name'),
                    'data-counter' => 120,
                ],
            ])
            ->add('times', 'textarea', [
                'label'      => trans('plugins/routes::routes.times'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('plugins/routes::routes.times'),
                    'data-counter' => 120,
                ],
            ])    ->add('routeData', 'textarea', [
                'label'      => trans('plugins/routes::routes.routedata'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('plugins/routes::routes.routedata'),
                    'data-counter' => 120,
                ],
            ])
            ->add('status', 'customSelect', [
                'label'      => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'class' => 'form-control select-full',
                ],
                'choices'    => BaseStatusEnum::labels(),
            ])
            ->setBreakFieldPoint('status');
    }
}
