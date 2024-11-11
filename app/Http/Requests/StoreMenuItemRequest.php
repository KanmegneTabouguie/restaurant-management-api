<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreMenuItemRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        // Only Admins can create menu items
        return auth()->check() && auth()->user()->role === 'Admin';
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */

    public function rules()
    {
        return [
            'name'          => 'required|string|max:150|unique:menu_items,name',
            'description'   => 'required|string|max:500',
            'price'         => 'required|numeric|min:0',
            'image_url'     => 'nullable|url|max:255',
            'category_id'   => 'required|integer|exists:categories,id',
            'availability'  => 'required|boolean',
        ];
    }

    /**
     * Customize the error messages for validation rules.
     *
     * @return array
     */

    public function messages()
    {
        return [
            'name.required' => 'The menu item name is required.',
            'name.string' => 'The menu item name must be a string.',
            'name.max' => 'The menu item name cannot exceed 150 characters.',
            'name.unique' => 'The menu item name has already been taken.',
            'description.required' => 'The description is required.',
            'description.string' => 'The description must be a string.',
            'description.max' => 'The description cannot exceed 500 characters.',
            'price.required' => 'The price is required.',
            'price.numeric' => 'The price must be a numeric value.',
            'price.min' => 'The price must be at least 0.',
            'image_url.url' => 'The image URL must be a valid URL.',
            'image_url.max' => 'The image URL cannot exceed 255 characters.',
            'category_id.required' => 'The category ID is required.',
            'category_id.integer' => 'The category ID must be an integer.',
            'category_id.exists' => 'The selected category does not exist.',
            'availability.required' => 'The availability field is required.',
            'availability.boolean' => 'The availability must be true or false.',
        ];
    }
}
