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
        Schema::table('future_projects', function (Blueprint $table) {
            $table->text('video_url')->nullable()->after('images'); // Add video_url column after the images column
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('future_projects', function (Blueprint $table) {
            $table->dropColumn('video_url'); // Remove video_url column on rollback
        });
    }
};
