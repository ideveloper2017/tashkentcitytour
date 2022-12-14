<ul {!! clean($options) !!}>
    @foreach ($menu_nodes as $key => $row)
        <li  @if ($row->url == Request::url()) class="{{ $row->css_class }} active" @endif>
            <a href="{{ $row->url }}" target="{{ $row->target }}">
                @if ($row->icon_font)<i class='{{ trim($row->icon_font) }}'></i> @endif{{ $row->title }}
                @if ($row->has_child) <span class="toggle-icon"><i class="fa fa-angle-down"></i></span>@endif
            </a>
            @if ($row->has_child)
                {!!
                    Menu::generateMenu([
                        'menu'       => $menu,
                        'menu_nodes' => $row->child,
                        'view'       => 'main-menu',
                        'options'    => ['class' => 'sub-menu'],
                    ])
                !!}
            @endif
        </li>
    @endforeach
</ul>
