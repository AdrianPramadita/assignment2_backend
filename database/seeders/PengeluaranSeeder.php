<?php

namespace Database\Seeders;

use App\Models\Pengeluaran;
use Illuminate\Database\Seeder;

class PengeluaranSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $pengeluaran=[
            [
                'date'=>'02/02/2021',
                'cost'=>'January',
                'amount'=>'20000000',
            ], 
            [
                'date'=>'02/03/2021',
                'cost'=>'February',
                'amount'=>'30000000',
            ], 
            [
                'date'=>'02/04/2021',
                'cost'=>'March',
                'amount'=>'50000000',
            ], 
        ];
        foreach($pengeluaran as $key => $value){
            Pengeluaran::create($value);
        };
    }
}
