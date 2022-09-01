<?php

namespace Botble\Tickets\Providers;

use Botble\Tickets\Models\Tickets;
use Illuminate\Support\ServiceProvider;
use Botble\Tickets\Repositories\Caches\TicketsCacheDecorator;
use Botble\Tickets\Repositories\Eloquent\TicketsRepository;
use Botble\Tickets\Repositories\Interfaces\TicketsInterface;
use Illuminate\Support\Facades\Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class TicketsServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(TicketsInterface::class, function () {
            return new TicketsCacheDecorator(new TicketsRepository(new Tickets));
        });

        $this->setNamespace('plugins/tickets')->loadHelpers();
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
                \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(Tickets::class, [
                    'name',
                ]);
            } else {
                // Use language v1
                $this->app->booted(function () {
                    \Language::registerModule([Tickets::class]);
                });
            }
        }

        Event::listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-tickets',
                'priority'    => 5,
                'parent_id'   => null,
                'name'        => 'plugins/tickets::tickets.name',
                'icon'        => 'fa fa-list',
                'url'         => route('tickets.index'),
                'permissions' => ['tickets.index'],
            ]);
        });
    }
}
