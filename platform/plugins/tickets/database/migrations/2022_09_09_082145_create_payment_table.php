<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePaymentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payments', function (Blueprint $table) {
            $table->id();
            $table->integer('order_id')->default(0);
            $table->integer('partner_id')->default(0);
            $table->date('date');
            $table->integer('amount')->default(0);
            $table->integer('click_trans_id')->default(0);
            $table->integer('paid')->default(0);
            $table->integer('status');
            $table->index(['click_trans_id']);
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
        Schema::dropIfExists('payments');
    }
}
