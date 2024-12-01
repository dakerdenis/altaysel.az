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
        Schema::table('map_projects', function (Blueprint $table) {
            $table->text('video_url')->nullable()->after('images'); // Adding the video_url column after 'images'
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('map_projects', function (Blueprint $table) {
            $table->dropColumn('video_url'); // Drop the column if rolled back
        });
    }
};
