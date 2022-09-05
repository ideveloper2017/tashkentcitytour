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
        Schema::create('routes', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255);
            $table->string('days',50);
            $table->string('times',255);
            $table->string('routeData',255);
            $table->string('status', 60)->default('published');
            $table->timestamps();
        });

        Schema::create('routes_translations', function (Blueprint $table) {
            $table->string('lang_code');
            $table->integer('routes_id');
            $table->string('name', 255)->nullable();

            $table->primary(['lang_code', 'routes_id'], 'routes_translations_primary');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('routes');
        Schema::dropIfExists('routes_translations');
    }
};
