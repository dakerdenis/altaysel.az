<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('map_projects', function (Blueprint $table) {
            $table->id();
            $table->year('year'); // Year with four digits
            $table->text('location')->default(''); // Provide an empty string as the default value// google maps location
            $table->integer('region_id');
            $table->string('name_ru'); // Name in Russian
            $table->string('name_az'); // Name in Azerbaijani
            $table->text('desc_ru'); // Description in Russian
            $table->text('desc_az'); // Description in Azerbaijani
            $table->text('main_image'); //Main Image
            $table->text('images'); // Image URLs
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('map_projects');
    }
};
