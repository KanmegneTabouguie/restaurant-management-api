<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdateMenuItemRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        // Only Admins can update menu items
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
            'name'          => [
                'sometimes',
                'required',
                'string',
                'max:150',
                Rule::unique('menu_items')->ignore($this->route('id')),
            ],
            'description'   => 'sometimes|required|string|max:500',
            'price'         => 'sometimes|required|numeric|min:0',
            'image_url'     => 'sometimes|nullable|url|max:255',
            'category_id'   => 'sometimes|required|integer|exists:categories,id',
            'availability'  => 'sometimes|required|boolean',
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
            'name.required' => 'The menu item name is required when provided.',
            'name.string' => 'The menu item name must be a string.',
            'name.max' => 'The menu item name cannot exceed 150 characters.',
            'name.unique' => 'The menu item name has already been taken.',
            'description.required' => 'The description is required when provided.',
            'description.string' => 'The description must be a string.',
            'description.max' => 'The description cannot exceed 500 characters.',
            'price.required' => 'The price is required when provided.',
            'price.numeric' => 'The price must be a numeric value.',
            'price.min' => 'The price must be at least 0.',
            'image_url.url' => 'The image URL must be a valid URL.',
            'image_url.max' => 'The image URL cannot exceed 255 characters.',
            'category_id.required' => 'The category ID is required when provided.',
            'category_id.integer' => 'The category ID must be an integer.',
            'category_id.exists' => 'The selected category does not exist.',
            'availability.required' => 'The availability field is required when provided.',
            'availability.boolean' => 'The availability must be true or false.',
        ];
    }
}
