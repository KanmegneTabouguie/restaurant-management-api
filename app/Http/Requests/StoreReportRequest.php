<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreReportRequest extends FormRequest
{
    public function authorize()
    {
        // Allow only admins to generate reports
        return auth()->check() && auth()->user()->role === 'Admin';
    }

    public function rules()
    {
        return [
            'type' => 'required|string|max:255',
            'data' => 'required|json',
        ];
    }

    public function messages()
    {
        return [
            'type.required' => 'The report type is required.',
            'type.string' => 'The report type must be a valid string.',
            'type.max' => 'The report type cannot exceed 255 characters.',
            'data.required' => 'The data field is required.',
            'data.json' => 'The data field must be a valid JSON object.',
        ];
    }
}
