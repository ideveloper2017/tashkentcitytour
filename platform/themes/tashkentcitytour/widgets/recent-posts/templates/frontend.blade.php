@if (is_plugin_active('blog'))
    @php
        $posts = get_recent_posts($config['number_display']);
    @endphp
    @if ($posts->count())
        @if ($sidebar == 'footer_sidebar')
            <div class="col-md-4 col-sm-8 col-xs-12 sidebar-side">
                <div class="widget widget--transparent widget__footer">
                    @else
                        <div class="sidebar-post sidebar-widget">
                            @endif
                            <div class="sidebar-widget">
                                <h4 class="sidebar-title">{{ $config['name'] }}</h4>
                            </div>
                            @foreach ($posts as $post)
                            <div class="single-post">
                                <div class="img-box"><a href="{{ $post->url }}"><figure><img src="{{ RvMedia::getImageUrl($post->image, 'thumb', false, RvMedia::getDefaultImage()) }}" style="width:85px;height: 85px;" alt="{{ $post->name }}"></figure></a></div>
                                <div class="post-title"><h6><a href="{{ $post->url }}">{{ $post->name }}</a></h6></div>
                                <ul class="post-time">
                                    <li><i class="fa fa-calendar" aria-hidden="true"></i></li>
                                    <li>{{ $post->created_at->translatedFormat('M d, Y') }}</li>
                                </ul>
                            </div>
                            @endforeach
{{--                            <div class="widget__content">--}}
{{--                                <ul @if ($sidebar == 'footer_sidebar') class="list list--light list--fadeIn" @endif>--}}
{{--                                    @foreach ($posts as $post)--}}
{{--                                        <li>--}}
{{--                                            @if ($sidebar == 'footer_sidebar')--}}
{{--                                                <a href="{{ $post->url }}" data-number-line="2">{{ $post->name }}</a>--}}
{{--                                            @else--}}
{{--                                                <article class="post post__widget clearfix">--}}
{{--                                                    <div class="post__thumbnail"><img src="{{ RvMedia::getImageUrl($post->image, 'thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}">--}}
{{--                                                        <a href="{{ $post->url }}" class="post__overlay"></a></div>--}}
{{--                                                    <header class="post__header">--}}
{{--                                                        <h5 class="post__title"><a href="{{ $post->url }}" data-number-line="2">{{ $post->name }}</a></h5>--}}
{{--                                                        <div class="post__meta"><span class="post__created-at">{{ $post->created_at->translatedFormat('M d, Y') }}</span></div>--}}
{{--                                                    </header>--}}
{{--                                                </article>--}}
{{--                                            @endif--}}
{{--                                        </li>--}}
{{--                                    @endforeach--}}
{{--                                </ul>--}}
{{--                            </div>--}}
                        </div>
                        @if ($sidebar == 'footer_sidebar')
                </div>
        @endif
    @endif
@endif
