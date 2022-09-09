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
            $table->increments('id');
            $table->string('name',50)->nullable();
            $table->integer('type');
            $table->string('email')->nullable();
            $table->string('phone',16)->nullable();
            $table->float('total')->nullable();
            $table->integer('partner_id');
            $table->decimal('partner_total',10,2);
            $table->integer('paid')->default(0);
            $table->string('payment_type',50)->nullable();
            $table->integer('card_num')->default(0);
            $table->integer('valid_m')->default(0);
            $table->integer('valid_y')->default(0);
            $table->unsignedInteger('route_id')->nullable()->default(0);
            $table->string('order_hash',50)->nullable();
            $table->timestamp('order_date');
            $table->timestamps();

//            $table->foreign('route_id')->references('id')->on('routes');
            $table->index(['partner_id','paid']);
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
