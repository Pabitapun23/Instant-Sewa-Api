<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTempRatingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('temp_ratings', function (Blueprint $table) {
            $table->id();
            $table->float('average_rating');
            $table->BigInteger('service_provider_id')->unsigned();
            $table->timestamps();
        });
            Schema::table('temp_ratings', function($table) {
            $table->foreign('service_provider_id')->references('id')->on('users');
         });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('temp_ratings');
    }
}
