<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ServiceproviderService extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
     Schema::create('service_provider-service', function (Blueprint $table) {
          $table->BigInteger('service_provider_id')->unsigned();
           $table->BigInteger('subcategories_id')->unsigned();;
        });
        Schema::table('service_provider-service', function($table) {
             $table->foreign('service_provider_id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');

         });
         Schema::table('service_provider-service', function($table) {
             $table->foreign('subcategories_id')->references('id')->on('sub_categories')->onDelete('cascade')->onUpdate('cascade');
         });   //
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
