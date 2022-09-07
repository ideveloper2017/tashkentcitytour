<?php

Route::group(['namespace' => 'Botble\Price\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'prices', 'as' => 'price.'], function () {
            Route::resource('', 'PriceController')->parameters(['' => 'price']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'PriceController@deletes',
                'permission' => 'price.destroy',
            ]);
        });
    });

});
