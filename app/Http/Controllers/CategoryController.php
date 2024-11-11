<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCategoryRequest;
use App\Http\Requests\UpdateCategoryRequest;
use App\Models\Category;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CategoryController extends Controller
{
    /**
     * List all categories.
     * Accessible by Public and Authenticated users.
     */
    public function index()
    {
        // Authorization not required as all users can view categories
        $categories = Category::with('menuItems')->get();

        return response()->json($categories, Response::HTTP_OK);
    }

    /**
     * Get category details.
     * Accessible by Public and Authenticated users.
     */
    public function show($id)
    {
        // Authorization not required as all users can view a category
        $category = Category::with('menuItems')->find($id);

        if (!$category) {
            return response()->json(['message' => 'Category not found.'], Response::HTTP_NOT_FOUND);
        }

        return response()->json($category, Response::HTTP_OK);
    }

    /**
     * Create a new category.
     * Accessible by Admin only.
     */
    public function store(StoreCategoryRequest $request)
    {
        $this->authorize('create', Category::class);

        $validated = $request->validated();

        $category = Category::create([
            'name' => $validated['name'],
        ]);

        return response()->json($category, Response::HTTP_CREATED);
    }

    /**
     * Update a category.
     * Accessible by Admin only.
     */
    public function update(UpdateCategoryRequest $request, $id)
    {
        $category = Category::find($id);

        if (!$category) {
            return response()->json(['message' => 'Category not found.'], Response::HTTP_NOT_FOUND);
        }

        $this->authorize('update', $category);

        $validated = $request->validated();

        $category->update([
            'name' => $validated['name'] ?? $category->name,
        ]);

        return response()->json($category, Response::HTTP_OK);
    }

    /**
     * Delete a category.
     * Accessible by Admin only.
     */
    public function destroy($id)
    {
        $category = Category::find($id);

        if (!$category) {
            return response()->json(['message' => 'Category not found.'], Response::HTTP_NOT_FOUND);
        }

        $this->authorize('delete', $category);

        // Optional: Check if category has associated menu items before deletion
        if ($category->menuItems()->count() > 0) {
            return response()->json(['message' => 'Cannot delete category with associated menu items.'], Response::HTTP_BAD_REQUEST);
        }

        $category->delete();

        return response()->json(['message' => 'Category deleted successfully.'], Response::HTTP_OK);
    }
}
