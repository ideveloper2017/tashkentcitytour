<?php

Route::group(['namespace' => 'Botble\Routes\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'routes', 'as' => 'routes.'], function () {
            Route::resource('', 'RoutesController')->parameters(['' => 'routes']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'RoutesController@deletes',
                'permission' => 'routes.destroy',
            ]);
        });
    });

});
