<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>
        <!-- Fonts-->
        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family={{ urlencode(theme_option('primary_font', 'Roboto')) }}" rel="stylesheet" type="text/css">
        <!-- CSS Library-->
        <style>
            :root {
                --primary-color: {{ theme_option('primary_color', '#ff2b4a') }};
                --primary-font: '{{ theme_option('primary_font', 'Roboto') }}', sans-serif;
            }
        </style>
        {!! Theme::header() !!}
    </head>
    <body @if (BaseHelper::siteLanguageDirection() == 'rtl') dir="rtl" @endif>
        {!! apply_filters(THEME_FRONT_BODY, null) !!}
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <header class="header-section">
            <div class="container-fluid">
                <div class="inner-header">
                    @if (theme_option('logo'))
                        <div class="logo">
                            <a href="./"><img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="{{ theme_option('site_title') }}"></a>
                        </div>
                    @endif

                    <div class="nav-right">
                        <a href="#" class="primary-btn">Make a Reservation</a>
                    </div>
                    <nav class="main-menu mobile-menu">
                        {!!
                            Menu::renderMenuLocation('main-menu', [
                                'options' => ['class' => 'menu sub-menu--slideLeft'],
                                'view'    => 'main-menu',
                            ])
                        !!}
{{--                        <ul>--}}
{{--                            <li class="active"><a href="./index.html">Home</a></li>--}}
{{--                            <li><a href="./about-us.html">About</a></li>--}}
{{--                            <li><a href="rooms.html">Rooms</a></li>--}}
{{--                            <li><a href="#">Pages</a>--}}
{{--                                <ul class="drop-menu">--}}
{{--                                    <li><a href="about-us.html">About Us</a></li>--}}
{{--                                    <li><a href="rooms.html">Rooms</a></li>--}}
{{--                                    <li><a href="services.html">Services</a></li>--}}
{{--                                </ul>--}}
{{--                            </li>--}}
{{--                            <li><a href="./blog.html">News</a></li>--}}
{{--                            <li><a href="./contact.html">Contact</a></li>--}}
{{--                        </ul>--}}
                    </nav>
                    <div id="mobile-menu-wrap"></div>
                </div>
            </div>
        </header>

