<?php

return [
    [
        'name' => 'Prices',
        'flag' => 'price.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'price.create',
        'parent_flag' => 'price.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'price.edit',
        'parent_flag' => 'price.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'price.destroy',
        'parent_flag' => 'price.index',
    ],
];
