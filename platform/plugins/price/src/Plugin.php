<?php

namespace Botble\Price;

use Illuminate\Support\Facades\Schema;
use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove()
    {
        Schema::dropIfExists('prices');
        Schema::dropIfExists('prices_translations');
    }
}
