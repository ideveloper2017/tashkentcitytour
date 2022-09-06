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
        'before' => function($theme)
        {
            // You can remove this line anytime.
        },

        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme' => function (Theme $theme)
        {
            // Partial composer.
            // $theme->partialComposer('header', function($view) {
            //     $view->with('auth', \Auth::user());
            // });

            // You may use this event to set up your assets.
            $theme->asset()->usePath()->add('bootstrap', 'css/bootstrap.min.css');
            $theme->asset()->usePath()->add('font-awesome', 'css/font-awesome.min.css');
            $theme->asset()->usePath()->add('flaticon', 'css/flaticon.css');
            $theme->asset()->usePath()->add('owl.carousel.min', 'css/owl.carousel.min.css');
            $theme->asset()->usePath()->add('jquery-ui.min', 'css/jquery-ui.min.css');
            $theme->asset()->usePath()->add('nice-select', 'css/nice-select.css');
            $theme->asset()->usePath()->add('magnific-popup', 'css/magnific-popup.css');
            $theme->asset()->usePath()->add('slicknav.min', 'css/slicknav.min.css');
            $theme->asset()->usePath()->add('style.css', 'css/style.css');

            $theme->asset()->container('footer')->usePath()->add('jquery', 'js/jquery-3.3.1.min.js');
            $theme->asset()->container('footer')->usePath()->add('bootstrap', 'js/bootstrap.min.js');
            $theme->asset()->container('footer')->usePath()->add('jquery.magnific-popup.min', 'js/jquery.magnific-popup.min.js');
            $theme->asset()->container('footer')->usePath()->add('jquery-ui.min', 'js/jquery-ui.min.js');
            $theme->asset()->container('footer')->usePath()->add('jquery.nice-select.min', 'js/jquery.nice-select.min.js');
            $theme->asset()->container('footer')->usePath()->add('jquery.slicknav', 'js/jquery.slicknav.js');
            $theme->asset()->container('footer')->usePath()->add('owl.carousel.min', 'js/owl.carousel.min.js');
            $theme->asset()->container('footer')->usePath()->add('inputmask', 'js/inputmask.min.js');
            $theme->asset()->container('footer')->usePath()->add('jquery.inputmask.min', 'js/jquery.inputmask.min.js');
            $theme->asset()->container('footer')->usePath()->add('script', 'js/main.js');
            $theme->asset()->container('footer')->usePath()->add('tickets', 'js/ticket.js');

            if (function_exists('shortcode')) {
                $theme->composer(['page', 'post'], function (\Botble\Shortcode\View\View $view) {
                    $view->withShortcodes();
                });
            }
        },

        // Listen on event before render a layout,
        // this should call to assign style, script for a layout.
        'beforeRenderLayout' => [

            'default' => function ($theme)
            {
                // $theme->asset()->usePath()->add('ipad', 'css/layouts/ipad.css');
            }
        ]
    ]
];
