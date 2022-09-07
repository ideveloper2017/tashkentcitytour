<?php

namespace Botble\Routes\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Routes\Repositories\Interfaces\RoutesInterface;

class RoutesCacheDecorator extends CacheAbstractDecorator implements RoutesInterface
{

    public function getRoutes(array $params)
    {
        // TODO: Implement getRoutes() method.
    }
}
