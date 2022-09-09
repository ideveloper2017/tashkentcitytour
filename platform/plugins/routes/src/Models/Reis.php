<?php

namespace Botble\Routes\Models;

use Botble\Base\Traits\EnumCastable;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;

class Reis extends BaseModel
{
    use EnumCastable;
    protected $table = 'reis';
    protected $fillable = [
        'date',
        'time',
        'total',
        'free',
        'route_id',
        'status',
    ];


    protected $casts = [
        'status' => BaseStatusEnum::class,
    ];

    public function updateCounters(array $data){

    }
}
