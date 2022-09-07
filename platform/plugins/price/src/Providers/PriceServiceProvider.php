<?php

namespace Botble\Price\Providers;

use Botble\Price\Models\Price;
use Illuminate\Support\ServiceProvider;
use Botble\Price\Repositories\Caches\PriceCacheDecorator;
use Botble\Price\Repositories\Eloquent\PriceRepository;
use Botble\Price\Repositories\Interfaces\PriceInterface;
use Illuminate\Support\Facades\Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class PriceServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(PriceInterface::class, function () {
            return new PriceCacheDecorator(new PriceRepository(new Price));
        });

        $this->setNamespace('plugins/price')->loadHelpers();
    }

    public function boot()
    {
        $this
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadAndPublishViews()
            ->loadRoutes(['web']);

        if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
            if (defined('LANGUAGE_ADVANCED_MODULE_SCREEN_NAME')) {
                // Use language v2
                \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(Price::class, [
                    'name',
                ]);
            } else {
                // Use language v1
                $this->app->booted(function () {
                    \Language::registerModule([Price::class]);
                });
            }
        }

        Event::listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-price',
                'priority'    => 5,
                'parent_id'   => null,
                'name'        => 'plugins/price::price.name',
                'icon'        => 'fa fa-list',
                'url'         => route('price.index'),
                'permissions' => ['price.index'],
            ]);
        });
    }
}
