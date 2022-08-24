    <div class="banner-overlay"></div>
    <div class="container">
        <div class="banner-content">
            @if ($slider->title)
            <h3>   {!! clean($slider->title).' '.$key !!}</h3>
            @endif
                @if ($slider->description)
                    {!! clean($slider->description) !!}
                @endif
        </div>
    </div>

{{--<div class="slider-content" style="display: none">--}}
{{--    @if ($slider->title)--}}
{{--        <h1 class="display-2 mb-40">--}}
{{--            {!! clean($slider->title) !!}--}}
{{--        </h1>--}}
{{--    @endif--}}
{{--    @if ($slider->description)--}}
{{--        <p class="mb-65">{!! clean($slider->description) !!}</p>--}}
{{--    @endif--}}
{{--    @if ($shortcode->show_newsletter_form == 'yes' && is_plugin_active('newsletter'))--}}
{{--        <div class="newsletter">--}}
{{--            {!! Theme::partial('newsletter-form') !!}--}}
{{--        </div>--}}
{{--    @endif--}}
{{--</div>--}}
