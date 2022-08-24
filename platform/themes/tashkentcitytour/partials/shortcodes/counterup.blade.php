<section class="fact-counter centered">
    <div class="container">
        <div class="row">
            @foreach($counters as $counter)
            <div class="col-md-3 col-sm-6 col-xs-12 counter-colmun">
                <div class="single-item">
                    <article class="column wow fadeIn animated counted" data-wow-duration="0ms" style="visibility: visible; animation-duration: 0ms; animation-name: fadeIn;">
                        <div class="count-outer"><span class="count-text" data-speed="1500" data-stop="{{ $counter->number }}">{{ $counter->number }}</span><span>+</span></div>
                        <div class="text">{{ clean($counter->name) }}</div>
                    </article>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
{{--<section class="achievements section-notch">--}}
{{--    <div class="overlay padding-120">--}}
{{--        <div class="container">--}}
{{--            <div class="row">--}}
{{--                @foreach($counters as $counter)--}}
{{--                <div class="col-md-3 col-sm-6 col-xs-12">--}}
{{--                    <div class="achievement-item">--}}
{{--                        <i class="icon {{ $counter->icon }}"></i>--}}
{{--                        <span class="counter">{{ $counter->number }}</span>--}}
{{--                        <p>{{ clean($counter->name) }}</p>--}}
{{--                    </div><!-- achievement item -->--}}
{{--                </div>--}}
{{--                @endforeach--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</section>--}}
