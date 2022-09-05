<?php

return [
    [
        'name' => 'Schedules',
        'flag' => 'schedule.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'schedule.create',
        'parent_flag' => 'schedule.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'schedule.edit',
        'parent_flag' => 'schedule.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'schedule.destroy',
        'parent_flag' => 'schedule.index',
    ],
];
