<?php

namespace Database\Seeders;

use App\Models\Pemasukan;
use Illuminate\Database\Seeder;

class PemasukanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $pemasukan=[
            [
                'name'=>'John',
                'product'=>'nasi goreng',
                'quantity'=>'2',
                'price'=>'20000',
            ], 
            [
                'name'=>'Bondan',
                'product'=>'mie ayam',
                'quantity'=>'3',
                'price'=>'25000',
            ], 
            [
                'name'=>'Ajeng',
                'product'=>'mie goreng',
                'quantity'=>'5',
                'price'=>'50000',
            ], 
        ];
        foreach($pemasukan as $key => $value){
            Pemasukan::create($value);
        };
        
    }
}
