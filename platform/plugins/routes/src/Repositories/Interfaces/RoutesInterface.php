<?php

namespace Botble\Routes\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface RoutesInterface extends RepositoryInterface
{
    public function getRoutes(array $params);
}
