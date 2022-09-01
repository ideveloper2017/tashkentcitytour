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
            $table->integer('type');
            $table->string('email')->nullable();
            $table->string('phone',16)->nullable();
            $table->date('scheduleday');
            $table->integer('scheduleroute')->default(0);
            $table->integer('scheduletime')->default(0);
            $table->integer('totaladult')->default(0);
            $table->integer('totalchildren')->default(0);
        });
    }


    public function down()
    {
        Schema::table('tickets', function (Blueprint $table) {
            //
        });
    }
}
