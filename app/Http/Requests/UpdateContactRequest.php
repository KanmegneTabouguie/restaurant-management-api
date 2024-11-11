<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateContactRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        // Only Admins can update contact messages
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
            'name' => 'sometimes|required|string|max:100',
            'email' => 'sometimes|required|email|max:150',
            'subject' => 'sometimes|required|string|max:150',
            'message' => 'sometimes|required|string|max:1000',
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
            'name.required' => 'Your name is required when provided.',
            'name.string' => 'Your name must be a valid string.',
            'name.max' => 'Your name cannot exceed 100 characters.',
            'email.required' => 'Your email address is required when provided.',
            'email.email' => 'Please provide a valid email address.',
            'email.max' => 'Your email address cannot exceed 150 characters.',
            'subject.required' => 'The subject is required when provided.',
            'subject.string' => 'The subject must be a valid string.',
            'subject.max' => 'The subject cannot exceed 150 characters.',
            'message.required' => 'The message is required when provided.',
            'message.string' => 'The message must be a valid string.',
            'message.max' => 'The message cannot exceed 1000 characters.',
        ];
    }
}
