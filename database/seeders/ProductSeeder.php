<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('products')->insert([
            ['name'=>'LG Mobile',
            'price'=>'200',
            'category'=>'Mobile',
            'description'=>'A smartphone with 4gb ram and much more features',
            'gallery'=>'https://www.lg.com/us/images/cell-phones/ls970/gallery/large03.jpg'
            ],
            ['name'=>'Oneplus 11',
            'price'=>'200',
            'category'=>'Mobile',
            'description'=>'A smartphone with 4gb ram and much more features',
            'gallery'=>'https://fdn.gsmarena.com/imgroot/news/23/01/oneplus-11-ofic/inline/-1200/gsmarena_001.jpg'
            ],
            ['name'=>'Samsung s23',
            'price'=>'200',
            'category'=>'Mobile',
            'description'=>'A smartphone with 4gb ram and much more features',
            'gallery'=>'https://www.cnet.com/a/img/resize/1275109e6c2ca1935eb08695280ae9b39f856433/hub/2023/01/31/16a47500-14fa-49ca-b521-968f517db52a/samsung-unpacked-2023-s23-22.jpg?auto=webp&fit=crop&height=675&width=1200'
            ],
            ['name'=>'Iphone 14',
            'price'=>'200',
            'category'=>'Mobile',
            'description'=>'A smartphone with 4gb ram and much more features',
            'gallery'=>'https://imageio.forbes.com/specials-images/imageserve/6321aca5df0a9fa9eee9950b/0x0.jpg?format=jpg&crop=1456,970,x63,y104,safe&width=1200'
            ],
            ['name'=>'Realme 10',
            'price'=>'200',
            'category'=>'Mobile',
            'description'=>'A smartphone with 4gb ram and much more features',
            'gallery'=>'https://imageio.forbes.com/specials-images/imageserve/63a25d3a2ff9be7c6dc9d407/DSC09458/960x0.jpg?format=jpg&width=960'
            ]
        ]);
    }
}
