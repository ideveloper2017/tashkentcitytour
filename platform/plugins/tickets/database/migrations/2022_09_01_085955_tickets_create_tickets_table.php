<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

return new class extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tickets', function (Blueprint $table) {
            $table->id();
            $table->integer('order_id');
            $table->integer('partner_id');
            $table->integer('number');
            $table->integer('type');
            $table->date('date')->nullable();
            $table->time('time')->nullable();
            $table->integer('place')->nullable();
            $table->integer('amount')->nullable();
            $table->integer('total');
            $table->integer('paid')->nullable();
            $table->integer('activate')->nullable();
            $table->index(['order_id','number','date','time','paid']);
            $table->timestamps();
        });

        Schema::create('tickets_translations', function (Blueprint $table) {
            $table->string('lang_code');
            $table->integer('tickets_id');
            $table->string('name', 255)->nullable();

            $table->primary(['lang_code', 'tickets_id'], 'tickets_translations_primary');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tickets');
        Schema::dropIfExists('tickets_translations');
    }
};
