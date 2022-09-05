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
        Schema::create('schedules', function (Blueprint $table) {
            $table->id();
            $table->string('time', 10);
            $table->enum("day_1",['Y','N']);
            $table->enum("day_2",['Y','N']);
            $table->enum("day_3",['Y','N']);
            $table->enum("day_4",['Y','N']);
            $table->enum("day_5",['Y','N']);
            $table->enum("day_6",['Y','N']);
            $table->enum("day_7",['Y','N']);
            $table->string('status', 60)->default('published');
            $table->timestamps();
        });

        Schema::create('schedules_translations', function (Blueprint $table) {
            $table->string('lang_code');
            $table->integer('schedules_id');
            $table->string('name', 255)->nullable();

            $table->primary(['lang_code', 'schedules_id'], 'schedules_translations_primary');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('schedules');
        Schema::dropIfExists('schedules_translations');
    }
};
