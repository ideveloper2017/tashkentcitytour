<?php

// Custom routes
// You can delete this route group if you don't need to add your custom routes.
Route::group(['namespace' => 'Theme\Tashkentcitytour\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        // Add your custom route here
        // Ex: Route::get('hello', 'TashkentcitytourController@getHello');
        Route::get('/routes','TashkentcitytourController@getRoutes')->name('public.routes');
        Route::get('/tickets','TashkentcitytourController@getTickets')->name('public.tickets');
        Route::post('ajax/get-route','TashkentcitytourController@getRoute')->name('public.ajax.get-route');
        Route::post('ajax/get-time','TashkentcitytourController@getTime')->name('public.ajax.get-time');
        Route::post('ajax/get-free-places','TashkentcitytourController@getFreePlaces')->name('public.ajax.get-free-places');
        Route::post('ajax/createorder','TashkentcitytourController@createOrder')->name('public.ajax.createorder');
        Route::post('site/thank','TashkentcitytourController@thank')->name('public.site.thank');
    });
});

Theme::routes();

Route::group(['namespace' => 'Theme\Tashkentcitytour\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        Route::get('/', 'TashkentcitytourController@getIndex')->name('public.index');
        Route::get('posts/videos', 'TashkentcitytourController@getNewsVideos')->name('public.posts-videos');
        Route::get('sitemap.xml', 'TashkentcitytourController@getSiteMap')->name('public.sitemap');
        Route::get('{slug?}' . config('core.base.general.public_single_ending_url'), 'TashkentcitytourController@getView')
            ->name('public.single');



    });
});
