<?php

namespace Botble\Routes\Providers;

use Botble\Routes\Models\Routes;
use Illuminate\Support\ServiceProvider;
use Botble\Routes\Repositories\Caches\RoutesCacheDecorator;
use Botble\Routes\Repositories\Eloquent\RoutesRepository;
use Botble\Routes\Repositories\Interfaces\RoutesInterface;
use Illuminate\Support\Facades\Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class RoutesServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(RoutesInterface::class, function () {
            return new RoutesCacheDecorator(new RoutesRepository(new Routes));
        });

        $this->setNamespace('plugins/routes')->loadHelpers();
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
                \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(Routes::class, [
                    'name',
                ]);
            } else {
                // Use language v1
                $this->app->booted(function () {
                    \Language::registerModule([Routes::class]);
                });
            }
        }

        Event::listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-routes',
                'priority'    => 5,
                'parent_id'   => null,
                'name'        => 'plugins/routes::routes.name',
                'icon'        => 'fa fa-list',
                'url'         => route('routes.index'),
                'permissions' => ['routes.index'],
            ]);
        });
    }
}
