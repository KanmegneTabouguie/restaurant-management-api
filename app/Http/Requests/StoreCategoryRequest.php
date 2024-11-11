<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreCategoryRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        // Only Admins can create categories
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
            'name' => 'required|string|max:100|unique:categories,name',
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
            'name.required' => 'The category name is required.',
            'name.string' => 'The category name must be a string.',
            'name.max' => 'The category name cannot exceed 100 characters.',
            'name.unique' => 'The category name has already been taken.',
        ];
    }
}

