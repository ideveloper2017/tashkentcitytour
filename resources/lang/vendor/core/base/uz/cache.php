<?php

return [
    'cache_commands' => 'Kesh buyruqlarini tozalash',
    'cache_management' => 'Keshni boshqarish',
    'commands' => [
        'clear_cms_cache' => [
            'description' => 'CMS keshini tozalash: ma\'lumotlar bazasini keshlash, statik bloklar... Ma\'lumotlarni yangilashdan keyin o\'zgarishlarni ko\'rmasangiz, ushbu buyruqni ishga tushiring.',
            'success_msg' => 'Kesh tozalandi',
            'title' => 'Barcha CMS keshini tozalang',
        ],
        'clear_config_cache' => [
            'description' => 'Ishlab chiqarish muhitida biror narsani o\'zgartirganda, konfiguratsiya keshini yangilashingiz kerak bo\'lishi mumkin.',
            'success_msg' => 'Konfiguratsiya keshi tozalandi',
            'title' => 'Konfiguratsiya keshini tozalash',
        ],
        'clear_log' => [
            'description' => 'Tizim jurnali fayllarini tozalang',
            'success_msg' => 'Tizim jurnali tozalandi',
            'title' => 'Jurnalni tozalash',
        ],
        'clear_route_cache' => [
            'description' => 'Keshni marshrutlashni tozalash.',
            'success_msg' => 'Marshrut keshi tozalandi',
            'title' => 'Marshrut keshini tozalash',
        ],
        'refresh_compiled_views' => [
            'description' => 'Ko\'rinishlarni yangilash uchun yig\'ilgan ko\'rinishlarni tozalang',
            'success_msg' => 'Kesh ko\'rinishi yangilandi',
            'title' => 'Kompilyatsiya qilingan ko\'rinishlarni yangilang',
        ],
    ],
];
