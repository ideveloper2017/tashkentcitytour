<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTicketsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tickets', function (Blueprint $table) {
//            $table->integer('order_id');
//            $table->integer('partner_id');
//            $table->integer('number');
//            $table->integer('type');
//            $table->date('date')->nullable();
//            $table->time('time')->nullable();
//            $table->integer('place')->nullable();
//            $table->integer('amount')->nullable();
//            $table->integer('total');
//            $table->integer('paid')->nullable();
//            $table->integer('activate')->nullable();
//            $table->index(['order_id','number','date','time','paid']);
        });
    }


    public function down()
    {
        Schema::table('tickets', function (Blueprint $table) {
            //
        });
    }
}
