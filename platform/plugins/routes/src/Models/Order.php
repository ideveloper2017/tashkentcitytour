<?php

namespace Botble\Routes\Models;

use Botble\Base\Traits\EnumCastable;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;

class Order extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'orders';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'type',
        'email',
        'phone',
        'total',
        'partner_id',
        'partner_total',
        'paid',
        'payment_type',
        'card_num',
        'valid_m',
        'valid_y',
        'route_id',
        'order_hash',
        'order_date',
        'status',
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
    ];
}
