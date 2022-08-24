<?php

register_page_template([
    'default'        => __('Default'),
    'full'           => __('Full'),
    'homepage'       => __('Homepage'),
    'homepage2'      => __('Homepage 2'),
    'no-breadcrumbs' => __('No Breadcrumbs'),
    'right-sidebar'  => __('Right sidebar'),
]);

register_sidebar([
    'id'          => 'footer_sidebar_1',
    'name'        => __('Footer sidebar 1'),
    'description' => __('Sidebar in the footer of page'),
]);

register_sidebar([
    'id'          => 'footer_sidebar_2',
    'name'        => __('Footer sidebar 2'),
    'description' => __('Sidebar in the footer of page'),
]);

register_sidebar([
    'id'          => 'footer_sidebar_3',
    'name'        => __('Footer sidebar 3'),
    'description' => __('Sidebar in the footer of page'),
]);

register_sidebar([
    'id'          => 'footer_sidebar_4',
    'name'        => __('Footer sidebar 4'),
    'description' => __('Sidebar in the footer of page'),
]);

register_sidebar([
    'id'   => 'footer_copyright_menu',
    'name' => __('Footer copyright menu'),
]);

RvMedia::setUploadPathAndURLToPublic();
