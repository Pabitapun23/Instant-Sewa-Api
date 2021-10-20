<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRechargesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('recharges', function (Blueprint $table) {
            $table->id();
            $table->BigInteger('service_provider_id')->unsigned();
        $table->string('payment_id');
        $table->string('payer_id');
        $table->string('payer_email');
        $table->float('payment_recharge', 10, 2);
        $table->string('currency');
        $table->string('platform');
        $table->string('payment_status');
            $table->timestamps();
        });
            Schema::table('recharges', function($table) {
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
        Schema::dropIfExists('recharges');
    }
}
