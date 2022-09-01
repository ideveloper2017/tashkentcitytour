<?php

namespace Botble\Tickets;

use Illuminate\Support\Facades\Schema;
use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove()
    {
        Schema::dropIfExists('tickets');
        Schema::dropIfExists('tickets_translations');
    }
}
