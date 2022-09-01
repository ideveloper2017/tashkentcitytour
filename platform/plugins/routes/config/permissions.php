<?php

return [
    [
        'name' => 'Routes',
        'flag' => 'routes.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'routes.create',
        'parent_flag' => 'routes.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'routes.edit',
        'parent_flag' => 'routes.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'routes.destroy',
        'parent_flag' => 'routes.index',
    ],
];
