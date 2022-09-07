<?php

namespace Botble\Price\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class PriceRequest extends Request
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'type'   => 'required',
            'section'   => 'required',
            'key'   => 'required',
            'value'   => 'required',
            'status' => Rule::in(BaseStatusEnum::values()),
        ];
    }
}
