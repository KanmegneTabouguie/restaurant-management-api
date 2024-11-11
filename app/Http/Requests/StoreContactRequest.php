<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreContactRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        // Allow all users (authenticated or not) to submit contact messages
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */

    public function rules()
    {
        return [
            'name' => 'required|string|max:100',
            'email' => 'required|email|max:150',
            'subject' => 'required|string|max:150',
            'message' => 'required|string|max:1000',
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
            'name.required' => 'Your name is required.',
            'name.string' => 'Your name must be a valid string.',
            'name.max' => 'Your name cannot exceed 100 characters.',
            'email.required' => 'Your email address is required.',
            'email.email' => 'Please provide a valid email address.',
            'email.max' => 'Your email address cannot exceed 150 characters.',
            'subject.required' => 'The subject is required.',
            'subject.string' => 'The subject must be a valid string.',
            'subject.max' => 'The subject cannot exceed 150 characters.',
            'message.required' => 'The message is required.',
            'message.string' => 'The message must be a valid string.',
            'message.max' => 'The message cannot exceed 1000 characters.',
        ];
    }
}
