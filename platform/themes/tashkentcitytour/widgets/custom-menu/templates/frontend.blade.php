@if ($sidebar == 'footer_sidebar_2')
    <div class="col-md-3 col-sm-6 col-xs-12 footer-colmun">
        <div class="service-widget footer-widget">
            @else
             @endif
                <div class="footer-title">
                        <h4>{{ $config['name'] }}</h4>
                    </div>

                        {!!
                            Menu::generateMenu([
                                'slug'    => $config['menu_id'],
                                'options' => ['class' => ($config['menu_id'] == 'social' ? 'social social--simple social--widget' : '') . ($sidebar == 'footer_sidebar_2' ? ' list' : '') ]
                            ])
                        !!}


        @if ($sidebar == 'footer_sidebar_2')
    </div>
    </div>
@endif
