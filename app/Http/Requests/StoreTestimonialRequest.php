<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreTestimonialRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        // Only authenticated users (Customers) can submit testimonials
        return auth()->check() && auth()->user()->role === 'Customer';
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */

    public function rules()
    {
        return [
            'rating' => 'required|integer|min:1|max:5',
            'comment' => 'required|string|max:1000',
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
            'rating.required' => 'A rating is required.',
            'rating.integer' => 'The rating must be an integer.',
            'rating.min' => 'The rating must be at least 1.',
            'rating.max' => 'The rating cannot exceed 5.',
            'comment.required' => 'A comment is required.',
            'comment.string' => 'The comment must be a valid string.',
            'comment.max' => 'The comment cannot exceed 1000 characters.',
        ];
    }
}
