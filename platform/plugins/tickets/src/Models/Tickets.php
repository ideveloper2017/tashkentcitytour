<?php

namespace Botble\Tickets\Models;

use Botble\Base\Traits\EnumCastable;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;

class Tickets extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'tickets';

    /**
     * @var array
     */
    protected $fillable = [
        'order_id',
        'partner_id',
        'number',
        'type',
        'date',
        'time',
        'place',
        'amount',
        'total',
        'paid',
        'activate',
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
    ];
}
