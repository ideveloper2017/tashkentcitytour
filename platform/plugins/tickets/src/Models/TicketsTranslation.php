<?php

namespace Botble\Tickets\Models;

use Botble\Base\Models\BaseModel;

class TicketsTranslation extends BaseModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'tickets_translations';

    /**
     * @var array
     */
    protected $fillable = [
        'lang_code',
        'tickets_id',
        'name',
    ];

    /**
     * @var bool
     */
    public $timestamps = false;
}
