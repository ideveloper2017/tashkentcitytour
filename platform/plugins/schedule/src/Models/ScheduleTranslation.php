<?php

namespace Botble\Schedule\Models;

use Botble\Base\Models\BaseModel;

class ScheduleTranslation extends BaseModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'schedules_translations';

    /**
     * @var array
     */
    protected $fillable = [
        'lang_code',
        'schedules_id',
        'name',
    ];

    /**
     * @var bool
     */
    public $timestamps = false;
}
