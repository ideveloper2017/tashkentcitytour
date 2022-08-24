<div class="sidebar-catagories sidebar-widget">
    <div class="sidebar-title">
        <h4>{{__('Categories')}}</h4>
    </div>
    <ul class="sidebar-list">
            @foreach(get_popular_categories(5) as $category)
                <li >
                    <a href="{{ $category->url }}">{{ $category->name }}  ({{ $category->posts_count }})</a>

                </li>
            @endforeach
        </ul>
</div>
