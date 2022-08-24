<section class="news-section sec-pad">
    <div class="container">
        <div class="news-title centered">
            <div class="section-title"><h2>{!! clean($title) !!}</h2></div>
            <div class="title-text"><p>Jamiyat yangiliklari</p></div>
        </div>
        <div class="row">
            @foreach (get_latest_posts(6, [], ['slugable']) as $post)
            <div class="col-md-4 col-sm-6 col-xs-12 news-colmun">
                <div class="single-item wow fadeInUp animated animated animated" style="visibility: visible; animation-name: fadeInUp;">
                    <div class="img-box"><a href="{{ $post->url }}"><figure><img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt=""></figure></a></div>
                    <div class="news-content">
                        <div class="date">{{ $post->created_at->translatedFormat('d') }}<div class="text">{{ $post->created_at->translatedFormat('M') }}</div></div>
                        <ul class="meta">
                            <li><i class="fa fa-user" aria-hidden="true"></i>Admin</li>
                            <li><i class="fa fa-heart-o" aria-hidden="true"></i>350</li>
                            <li><i class="fa fa-comments-o" aria-hidden="true"></i>30</li>
                        </ul>
                        <h4><a href="{{ $post->url }}">{{ $post->name }}</a></h4>
                    </div>
                </div>
            </div>
            @endforeach

        </div>
    </div>
</section>

<section class="blog section-bg padding-120" style="display: none">
    <div class="container">
        <div class="section-header">
            <h3>{!! clean($title) !!}</h3>
        </div>
        <div class="blog-items">
            <div class="row">
                @foreach (get_latest_posts(6, [], ['slugable']) as $post)
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="blog-item">
                            <div class="blog-image">
                                <a href="{{ $post->url }}"><img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="blog image" class="img-responsive"></a>
                            </div>
                            <div class="blog-content">
                                <h4><a href="{{ $post->url }}">{{ $post->name }}</a></h4>
                                <p>{{ mb_substr($post->description,0,125) }}</p>
                            </div>
                            <ul>
                                <li><a href="#"><span class="icon flaticon-calendar"></span>{{ $post->created_at->translatedFormat('M d, Y') }}</a></li>
                            </ul>
                        </div><!-- blog item -->
                    </div>
                @endforeach
            </div><!-- row -->
        </div><!-- blog items -->
    </div><!-- container -->
</section>
