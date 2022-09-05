<?php

namespace Botble\Schedule\Providers;

use Botble\Schedule\Models\Schedule;
use Illuminate\Support\ServiceProvider;
use Botble\Schedule\Repositories\Caches\ScheduleCacheDecorator;
use Botble\Schedule\Repositories\Eloquent\ScheduleRepository;
use Botble\Schedule\Repositories\Interfaces\ScheduleInterface;
use Illuminate\Support\Facades\Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class ScheduleServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(ScheduleInterface::class, function () {
            return new ScheduleCacheDecorator(new ScheduleRepository(new Schedule));
        });

        $this->setNamespace('plugins/schedule')->loadHelpers();
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
                \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(Schedule::class, [
                    'name',
                ]);
            } else {
                // Use language v1
                $this->app->booted(function () {
                    \Language::registerModule([Schedule::class]);
                });
            }
        }

        Event::listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-schedule',
                'priority'    => 5,
                'parent_id'   => null,
                'name'        => 'plugins/schedule::schedule.name',
                'icon'        => 'fa fa-list',
                'url'         => route('schedule.index'),
                'permissions' => ['schedule.index'],
            ]);
        });
    }
}
