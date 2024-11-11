<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreMenuItemRequest;
use App\Http\Requests\UpdateMenuItemRequest;
use App\Models\MenuItem;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class MenuItemController extends Controller
{
    /**
     * List all menu items.
     * Accessible by Public and Authenticated users.
     */
    public function index()
    {
        // Authorization not required as all users can view menu items
        $menuItems = MenuItem::with('category')->get();

        return response()->json($menuItems, Response::HTTP_OK);
    }

    /**
     * Get menu item details.
     * Accessible by Public and Authenticated users.
     */
    public function show($id)
    {
        // Authorization not required as all users can view a menu item
        $menuItem = MenuItem::with('category')->find($id);

        if (!$menuItem) {
            return response()->json(['message' => 'Menu item not found.'], Response::HTTP_NOT_FOUND);
        }

        return response()->json($menuItem, Response::HTTP_OK);
    }

    /**
     * Create a new menu item.
     * Accessible by Admin only.
     */
    public function store(StoreMenuItemRequest $request)
    {
        $this->authorize('create', MenuItem::class);

        $validated = $request->validated();

        $menuItem = MenuItem::create([
            'name'         => $validated['name'],
            'description'  => $validated['description'],
            'price'        => $validated['price'],
            'image_url'    => $validated['image_url'] ?? null,
            'category_id'  => $validated['category_id'],
            'availability' => $validated['availability'],
        ]);

        return response()->json($menuItem, Response::HTTP_CREATED);
    }

    /**
     * Update a menu item.
     * Accessible by Admin only.
     */
    public function update(UpdateMenuItemRequest $request, $id)
    {
        $menuItem = MenuItem::find($id);

        if (!$menuItem) {
            return response()->json(['message' => 'Menu item not found.'], Response::HTTP_NOT_FOUND);
        }

        $this->authorize('update', $menuItem);

        $validated = $request->validated();

        $menuItem->update([
            'name'         => $validated['name'] ?? $menuItem->name,
            'description'  => $validated['description'] ?? $menuItem->description,
            'price'        => $validated['price'] ?? $menuItem->price,
            'image_url'    => $validated['image_url'] ?? $menuItem->image_url,
            'category_id'  => $validated['category_id'] ?? $menuItem->category_id,
            'availability' => $validated['availability'] ?? $menuItem->availability,
        ]);

        return response()->json($menuItem, Response::HTTP_OK);
    }

    /**
     * Delete a menu item.
     * Accessible by Admin only.
     */
    public function destroy($id)
    {
        $menuItem = MenuItem::find($id);

        if (!$menuItem) {
            return response()->json(['message' => 'Menu item not found.'], Response::HTTP_NOT_FOUND);
        }

        $this->authorize('delete', $menuItem);

        $menuItem->delete();

        return response()->json(['message' => 'Menu item deleted successfully.'], Response::HTTP_OK);
    }
}
