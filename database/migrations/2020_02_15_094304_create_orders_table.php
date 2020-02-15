<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('user_id');
            $table->string('fname');
            $table->string('lname');
            $table->string('poc_id');
            $table->longtext('address');
            $table->string('state');
            $table->string('city');
            $table->integer('pincode');
            $table->string('contact');
            $table->integer('rating')->nullable($value = 0 );
            $table->integer('quantity')->nullable($value =0);
            $table->integer('status')->nullable($value =0);
            $table->integer('price')->nullable($value =0);
            $table->integer('paidamount');
            $table->string('vegetable');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
