<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = [
            [
                'name' => 'adminbaru',
                'email'=>'adminbaru@gmail.com',
                'password' => bcrypt('admin123'),
                'level'=> 'admin'
            ],
            [
                'name' => 'admin2',
                'email'=>'admin2@gmail.com',
                'password' => bcrypt('admin123'),
                'level'=> 'admin'
            ],
            [
                'name' => 'owner1',
                'email'=>'owner1@gmail.com',
                'password' => bcrypt('owner123'),
                'level'=> 'owner'
            ],
        ];
        foreach($user as $key => $value){
            User::create($value);
        }
    }
}
