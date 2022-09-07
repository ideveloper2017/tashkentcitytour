<?php

namespace Botble\Price\Models;

use Botble\Base\Models\BaseModel;

class PriceTranslation extends BaseModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'prices_translations';

    /**
     * @var array
     */
    protected $fillable = [
        'lang_code',
        'prices_id',
        'name',
    ];

    /**
     * @var bool
     */
    public $timestamps = false;
}
