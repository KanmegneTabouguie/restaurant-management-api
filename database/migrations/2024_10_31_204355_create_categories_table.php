<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->id(); // category_id
            $table->string('name', 50)->unique();
            $table->timestamps();
        });

        // Update Menu_Items table to include category_id as a foreign key
        Schema::table('menu_items', function (Blueprint $table) {
            $table->foreignId('category_id')->nullable()->constrained()->nullOnDelete()->after('id');
            $table->dropColumn('category'); // Remove the existing 'category' string field
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Revert Menu_Items table changes
        Schema::table('menu_items', function (Blueprint $table) {
            $table->string('category', 50)->after('image_url');
            $table->dropForeign(['category_id']);
            $table->dropColumn('category_id');
        });

        Schema::dropIfExists('categories');
    }
}
