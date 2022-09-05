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
//        Schema::create('orders', function (Blueprint $table) {
//            $table->id();
//            $table->string('name',50)->default();
//            $table->integer('type');
//            $table->string('email')->nullable();
//            $table->string('phone',16)->nullable();
//            $table->float('total')->nullable();
//            $table->integer('partner_id')->default(0);
//            $table->decimal('partner_total',10,2)->default(0);
//            $table->integer('paid')->default(0);
//            $table->string('payment_type',50)->nullable();
//            $table->integer('card_num',20)->nullable();
//            $table->integer('valid_m',2);
//            $table->integer('valid_y',2);
//            $table->integer('route_id',11);
//            $table->string('order_hash',50);
//            $table->timestamp('order_date');
//            $table->timestamps();
//
//            $table->index(['partner_id','paid']);
//        });
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
