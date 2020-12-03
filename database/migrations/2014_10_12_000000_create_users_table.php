<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Schema\softDeletes;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('username');
            $table->string('fullname')->nullable();
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('address_address')->nullable();
            $table->double('address_latitude', 15, 8)->nullable();
            $table->double('address_longitude', 15, 8)->nullable();
            $table->string('phoneno')->nullable();
            $table->string('gender')->nullable();
            $table->string('avatar')->nullable();
            $table->rememberToken()->nullable();
            $table->string('verified')->nullable();
            $table->string('verification_token')->nullable();
            $table->string('user_type')->default('user');
            $table->timestamps();
             $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
