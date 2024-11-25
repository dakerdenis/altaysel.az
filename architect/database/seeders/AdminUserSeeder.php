<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AdminUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Altaysel Admin',
            'email' => 'admin@altaysel.az',
            'password' =>  Hash::make('123'),
            'role' => 'admin', // Assuming you've added a 'role' field to the users table
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}
