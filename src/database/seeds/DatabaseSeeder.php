<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *  php artisan db:seed --class=DatabaseSeeder
     * @return void
     */
    public function run()
    {

      $faker=Faker\Factory::create('es_VE');
//               'nombre'=>$faker->name,

        // $this->call(UsersTableSeeder::class);
        for ($i=0; $i < 100; $i++) {

          DB::table('telefonos')->insert([
          'numero' => $faker->phoneNumber              ,
          'descripcion' =>'casa',
          'empleados_id' => $faker->numberBetween($min=1,$max=9),

//numberBetween($min = 1000, $max = 9000)

          ]);


        }





































        /////////
        /*
        for ($i=0; $i < 100; $i++) {

          DB::table('empleados')->insert([
          'nombre' => $faker->firstNameMale ,
          'apellidos' => $faker->lastName.' '.$faker->lastName,
          'sexo' => 'M',
          'direccion' =>  $faker->direccion,
          'empleados_id' => $faker->numberBetween($min=1,$max=9),
          'areas_id' => $faker->numberBetween($min=102,$max=209),  //102 -209
          'cargos_id' =>$faker->numberBetween($min=1,$max=108),
//numberBetween($min = 1000, $max = 9000)

          ]);


        }

        */

    }
}
