<?php

Route::group(['namespace' => 'Botble\Schedule\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'schedules', 'as' => 'schedule.'], function () {
            Route::resource('', 'ScheduleController')->parameters(['' => 'schedule']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'ScheduleController@deletes',
                'permission' => 'schedule.destroy',
            ]);
        });
    });

});
