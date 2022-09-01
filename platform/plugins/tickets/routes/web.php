<?php

Route::group(['namespace' => 'Botble\Tickets\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'tickets', 'as' => 'tickets.'], function () {
            Route::resource('', 'TicketsController')->parameters(['' => 'tickets']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'TicketsController@deletes',
                'permission' => 'tickets.destroy',
            ]);
        });
    });

});
