<?php

namespace Theme\Tashkentcitytour\Http\Controllers;

use Botble\Theme\Http\Controllers\PublicController;

class TashkentcitytourController extends PublicController
{

    public function getIndex()
    {
        return parent::getIndex();
    }

    public function getView($key = null)
    {
        return parent::getView($key);
    }

    /**
     * {@inheritDoc}
     */
    public function getSiteMap()
    {
        return parent::getSiteMap();
    }
}
