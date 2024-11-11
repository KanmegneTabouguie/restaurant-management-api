<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreNotificationRequest extends FormRequest
{
    public function authorize()
    {
        // Allow only admins to create notifications
        return auth()->check() && auth()->user()->role === 'Admin';
    }

    public function rules()
    {
        return [
            'user_id' => 'required|exists:users,id',
            'title' => 'required|string|max:255',
            'message' => 'required|string',
            'scheduled_at' => 'nullable|date',
        ];
    }

    public function messages()
    {
        return [
            'user_id.required' => 'The user ID is required.',
            'user_id.exists' => 'The specified user does not exist.',
            'title.required' => 'The title is required.',
            'title.string' => 'The title must be a valid string.',
            'title.max' => 'The title cannot exceed 255 characters.',
            'message.required' => 'The message content is required.',
            'scheduled_at.date' => 'The scheduled time must be a valid date.',
        ];
    }
}
