<div class="swiper-wrapper" style="transform: translate3d(-7620px, 0px, 0px); transition-duration: 0ms;">
    @foreach($sliders as $key=>$slider)
{{--    <div class="banner-item slide-three swiper-slide swiper-slide-duplicate swiper-slide-next swiper-slide-duplicate-prev" data-swiper-slide-index="2" style="width: 1905px;">--}}
{{--        <div class="banner-overlay"></div>--}}
{{--        <div class="container">--}}
{{--            <div class="banner-content">--}}
{{--                <h3>Batter Education For Batter World</h3>--}}
{{--                <h2>The Best Education Theme</h2>--}}
{{--                <p>Completely conceptualize enterprise processes after synergistic template and infomediaries.--}}
{{--                    Conveniently transition awesome theme customer.</p>--}}
{{--                <ul>--}}
{{--                    <li><a href="#" class="button-default">Read More</a></li>--}}
{{--                    <li><a href="#" class="button-default">Buy Now</a></li>--}}
{{--                </ul>--}}
{{--            </div><!-- banner-content -->--}}
{{--        </div><!-- container -->--}}
{{--    </div>--}}
    <div class="banner-item slide-one swiper-slide swiper-slide-duplicate-active" data-swiper-slide-index="{{ $key+1 }}" style="background-image: url({{ RvMedia::getImageUrl($slider->image, null, false, RvMedia::getDefaultImage()) }}); width: 1905px;">
        {!! Theme::partial('shortcodes.sliders.content', compact('slider', 'shortcode','key')) !!}

    </div><!-- slide item -->
        <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets">
            <span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span></div>
{{--    <div class="banner-item slide-two swiper-slide" data-swiper-slide-index="1" style="width: 1905px;">--}}
{{--        <div class="banner-overlay"></div>--}}
{{--        <div class="container">--}}
{{--            <div class="banner-content">--}}
{{--                <h3>Batter Education For Batter World</h3>--}}
{{--                <h2>The Best Education Theme</h2>--}}
{{--                <p>Completely conceptualize enterprise processes after synergistic template and infomediaries.--}}
{{--                    Conveniently transition awesome theme customer.</p>--}}
{{--                <ul>--}}
{{--                    <li><a href="#" class="button-default">Read More</a></li>--}}
{{--                    <li><a href="#" class="button-default">Buy Now</a></li>--}}
{{--                </ul>--}}
{{--            </div><!-- banner-content -->--}}
{{--        </div><!-- container -->--}}
{{--    </div><!-- slide item -->--}}
{{--    <div class="banner-item slide-three swiper-slide swiper-slide-prev swiper-slide-duplicate-next" data-swiper-slide-index="2" style="width: 1905px;">--}}
{{--        <div class="banner-overlay"></div>--}}
{{--        <div class="container">--}}
{{--            <div class="banner-content">--}}
{{--                <h3>Batter Education For Batter World</h3>--}}
{{--                <h2>The Best Education Theme</h2>--}}
{{--                <p>Completely conceptualize enterprise processes after synergistic template and infomediaries.--}}
{{--                    Conveniently transition awesome theme customer.</p>--}}
{{--                <ul>--}}
{{--                    <li><a href="#" class="button-default">Read More</a></li>--}}
{{--                    <li><a href="#" class="button-default">Buy Now</a></li>--}}
{{--                </ul>--}}
{{--            </div><!-- banner-content -->--}}
{{--        </div><!-- container -->--}}
{{--    </div><!-- slide item -->--}}
{{--    <div class="banner-item slide-one swiper-slide swiper-slide-duplicate swiper-slide-active" data-swiper-slide-index="0" style="width: 1905px;">--}}
{{--        <div class="banner-overlay"></div>--}}
{{--        <div class="container">--}}
{{--            <div class="banner-content">--}}
{{--                <h3>Batter Education For Batter World</h3>--}}
{{--                <h2>The Best Education Theme</h2>--}}
{{--                <p>Completely conceptualize enterprise processes after synergistic template and infomediaries.--}}
{{--                    Conveniently transition awesome theme customer.</p>--}}
{{--                <ul>--}}
{{--                    <li><a href="#" class="button-default">Read More</a></li>--}}
{{--                    <li><a href="#" class="button-default">Buy Now</a></li>--}}
{{--                </ul>--}}
{{--            </div><!-- banner-content -->--}}
{{--        </div><!-- container -->--}}
{{--    </div>--}}
    @endforeach
</div>
{{--<div class="swiper-wrapper" style="transform: translate3d(-3810px, 0px, 0px); transition-duration: 0ms;">--}}
{{--    @foreach($sliders as $key=>$slider)--}}
{{--                <div class="banner-item slide-three swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next"--}}
{{--                     style="background-image: url({{ RvMedia::getImageUrl($slider->image, null, false, RvMedia::getDefaultImage()) }});  width: 1905px;">--}}
{{--                    {!! Theme::partial('shortcodes.sliders.content', compact('slider', 'shortcode')) !!}--}}
{{--                </div>--}}

{{--    @endforeach--}}


{{--    <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets">--}}
{{--        <span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span>--}}
{{--        <span class="swiper-pagination-bullet"></span>--}}
{{--    </div>--}}
{{--</div>--}}


{{--<div class="hero-slider-1 dot-style-1 dot-style-1-position-1 {{ $class ?? ''}}" style="display: none">--}}
{{--    @foreach($sliders as $slider)--}}
{{--        @if ($slider->link && !($shortcode->show_newsletter_form == 'yes' && is_plugin_active('newsletter')))--}}
{{--            <a href="{{ url($slider->link) }}">--}}
{{--        @endif--}}

{{--        <div class="single-hero-slider single-animation-wrap {{ $itemClass ?? ''}}" style="background-image: url({{ RvMedia::getImageUrl($slider->image, null, false, RvMedia::getDefaultImage()) }}); @if (!$loop->first) display: none; @endif">--}}
{{--            {!! Theme::partial('shortcodes.sliders.content', compact('slider', 'shortcode')) !!}--}}
{{--        </div>--}}

{{--        @if ($slider->link && !($shortcode->show_newsletter_form == 'yes' && is_plugin_active('newsletter')))--}}
{{--            </a>--}}
{{--        @endif--}}
{{--    @endforeach--}}
{{--</div>--}}
{{--<div class="slider-arrow hero-slider-1-arrow" style="display: none"></div>--}}
