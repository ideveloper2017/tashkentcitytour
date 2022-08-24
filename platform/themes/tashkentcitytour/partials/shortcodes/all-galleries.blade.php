@if (function_exists('render_galleries'))
    @php $galleries = get_galleries(8); @endphp
    <section class="gallery padding-120">
        <div class="container">
            @if (!$galleries->isEmpty())
            <div class="section-header">
                <h3>{{ trans('plugins/gallery::gallery.galleries') }}</h3>
            </div>
            <ul class="gallery-menu">
                <li class="active" data-filter="*">Show all</li>
                @foreach ($galleries as $gallery)
                     <li data-filter=".{{ $gallery->id }}">{{ $gallery->name }}</li>
                @endforeach
            </ul>

            <div class="gallery-items" style="position: relative; height: 1170.7px;">
                @foreach ($galleries as $gallery)
                <div class="gallery-item {{ $gallery->id }} packing" style="position: absolute; left: 0%; top: 0px;">
                    <div class="gallery-image">
                        <img src="{{ RvMedia::getImageUrl($gallery->image, 'medium') }}" alt="gallery image" class="img-responsive">
                        <div class="gallery-overlay"><div class="bg"></div></div>
                        <div class="gallery-content">
                            <a href="{{ RvMedia::getImageUrl($gallery->image, 'large') }}" data-rel="lightcase:myCollection"><i class="icon flaticon-expand"></i></a>
                            <h4>{{ $gallery->name }}</h4>
{{--                            <span>{{ trans('plugins/gallery::gallery.by') }} {{ $gallery->user ? $gallery->user->name : '' }}</span>--}}
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="gallery-button"><a href="{{ route('public.galleries') }}" class="button-default">View More Gallery</a></div>
                @endif
        </div><!-- container -->
    </section>
{{--    <section class="gallery padding-120">--}}
{{--        <div class="container">--}}
{{--                @if (!$galleries->isEmpty())--}}
{{--                    <div class="page-content">--}}
{{--                        <div class="post-group post-group--single">--}}
{{--                            <div class="post-group__header">--}}
{{--                                <h3 class="post-group__title"><a href="{{ route('public.galleries') }}">{{ trans('plugins/gallery::gallery.galleries') }}</a></h3>--}}
{{--                            </div>--}}
{{--                            <div class="post-group__content">--}}
{{--                                <div class="gallery-wrap">--}}
{{--                                    @foreach ($galleries as $gallery)--}}
{{--                                        <div class="gallery-item">--}}
{{--                                            <div class="img-wrap">--}}
{{--                                                <a href="{{ $gallery->url }}"><img src="{{ RvMedia::getImageUrl($gallery->image, 'medium') }}" alt="{{ $gallery->name }}"></a>--}}
{{--                                            </div>--}}
{{--                                            <div class="gallery-detail">--}}
{{--                                                <div class="gallery-title"><a href="{{ $gallery->url }}">{{ $gallery->name }}</a></div>--}}
{{--                                                <div class="gallery-author">{{ trans('plugins/gallery::gallery.by') }} {{ $gallery->user ? $gallery->user->name : '' }}</div>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}
{{--                                    @endforeach--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div style="clear: both"></div>--}}

{{--            @endif--}}
{{--            {!! render_galleries($limit ?: 8) !!}--}}
{{--        </div>--}}
{{--    </section>--}}
@endif
