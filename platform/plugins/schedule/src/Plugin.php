<?php

namespace Botble\Schedule;

use Illuminate\Support\Facades\Schema;
use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove()
    {
        Schema::dropIfExists('schedules');
        Schema::dropIfExists('schedules_translations');
    }
}
