<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reis', function (Blueprint $table) {
            $table->id();
            $table->date('date');
            $table->time('time');
            $table->tinyInteger('total');
            $table->tinyInteger('free');
            $table->integer('route_id');
            $table->timestamps();

            //$table->foreign('route_id')->references('id')->on('routes')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('reis');
    }
}
