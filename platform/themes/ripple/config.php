<?php

use Botble\Theme\Theme;

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
    |
    | Set up inherit from another if the file is not exists,
    | this is work with "layouts", "partials" and "views"
    |
    | [Notice] assets cannot inherit.
    |
     */

    'inherit' => null, //default

    /*
    |--------------------------------------------------------------------------
    | Listener from events
    |--------------------------------------------------------------------------
    |
    | You can hook a theme when event fired on activities
    | this is cool feature to set up a title, meta, default styles and scripts.
    |
    | [Notice] these events can be overridden by package config.
    |
     */

    'events' => [

        // Before event inherit from package config and the theme that call before,
        // you can use this event to set meta, breadcrumb template or anything
        // you want inheriting.
        'before'             => function (Theme $theme) {

        },
        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme'  => function (Theme $theme) {
            // You may use this event to set up your assets.

            $version = '5.26.3';

            $theme->asset()->container('footer')->usePath()->add('jquery', 'plugins/jquery/jquery.min.js');
            $theme->asset()->container('footer')->usePath()
                ->add('bootstrap-js', 'plugins/bootstrap/js/bootstrap.min.js', ['jquery']);

            $theme->asset()->container('footer')->usePath()
                ->add('custom', 'js/custom.min.js', ['jquery'], [], $version);

            $theme->asset()->container('footer')->usePath()->add('ripple.js', 'js/ripple.js', ['jquery'], [], $version);

            $theme->asset()->usePath()->add('bootstrap-css', 'plugins/bootstrap/css/bootstrap.min.css');
            $theme->asset()->usePath()->add('font-awesome', 'plugins/font-awesome/css/font-awesome.min.css');
            $theme->asset()->usePath()->add('ionicons', 'plugins/ionicons/css/ionicons.min.css');
            $theme->asset()->usePath()->add('style', 'css/style.css', [], [], $version);

            $theme->asset()->container('footer')->usePath()->add('modernizr', 'js/vendor/modernizr-3.5.0.min.js');
            $theme->asset()->container('footer')->usePath()->add('jquery', 'js/vendor/jquery.min.js');
            $theme->asset()->container('footer')->usePath()->add('popper', 'js/vendor/popper.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('jquery.slicknav', 'js/vendor/jquery.slicknav.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('slick', 'js/vendor/slick.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('wow', 'js/vendor/wow.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('animated.headline', 'js/vendor/animated.headline.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('jquery.vticker', 'js/vendor/jquery.vticker-min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('scrollUp', 'js/vendor/jquery.scrollUp.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('sticky', 'js/vendor/jquery.sticky.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('perfect-scrollbar', 'js/vendor/perfect-scrollbar.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('waypoints', 'js/vendor/waypoints.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('jquery.counterup', 'js/vendor/counterup.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('theia', 'js/vendor/jquery.theia.sticky.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('lazyload', 'js/vendor/lazyload.min.js');
            $theme->asset()->container('footer')->usePath()->add('script', 'js/script.js', ['jquery'], [], $version);

            if (function_exists('shortcode')) {
                $theme->composer(['page', 'post'], function (\Botble\Shortcode\View\View $view) {
                    $view->withShortcodes();
                });
            }
        },

        // Listen on event before render a layout,
        // this should call to assign style, script for a layout.
        'beforeRenderLayout' => [

            'default' => function (Theme $theme) {
            },
        ],
    ],
];
