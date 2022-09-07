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
        Schema::create('prices', function (Blueprint $table) {
            $table->id();
            $table->string('type', 255);
            $table->string('section', 255);
            $table->string('key', 255);
            $table->string('value');
            $table->string('status', 60)->default('published');
            $table->timestamps();
        });

        Schema::create('prices_translations', function (Blueprint $table) {
            $table->string('lang_code');
            $table->integer('prices_id');
            $table->string('name', 255)->nullable();

            $table->primary(['lang_code', 'prices_id'], 'prices_translations_primary');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('prices');
        Schema::dropIfExists('prices_translations');
    }
};
