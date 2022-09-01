<?php

namespace Botble\Routes;

use Illuminate\Support\Facades\Schema;
use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove()
    {
        Schema::dropIfExists('routes');
        Schema::dropIfExists('routes_translations');
    }
}
