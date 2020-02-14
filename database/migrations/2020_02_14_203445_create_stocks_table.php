<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStocksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stocks', function (Blueprint $table) {
            $table->bigIncrements('id');
            $tabe->string('user_id');
            $table->string('fname');
            $table->string('lname');
            $table->integer('age');
            $table->longtext('address');
            $table->string('state');
            $table->string('city');
            $table->integer('pincode');
            $table->integer('rating')->nullable($value = 0 );
            $table->integer('solded')->nullable($value =0);
            $table->integer('quantity')->nullable($value =0);
            $table->integer('remained')->nullable($value =0);
            $table->integer('poc_id');
            $table->integer('status')->nullable($value =0);
            $table->integer('price')->nullable($value =0);
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
        Schema::dropIfExists('stocks');
    }
}
