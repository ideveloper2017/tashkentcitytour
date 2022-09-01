<?php

return [
    [
        'name' => 'Tickets',
        'flag' => 'tickets.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'tickets.create',
        'parent_flag' => 'tickets.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'tickets.edit',
        'parent_flag' => 'tickets.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'tickets.destroy',
        'parent_flag' => 'tickets.index',
    ],
];
