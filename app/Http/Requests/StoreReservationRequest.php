<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreReservationRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        // Only authenticated users can create reservations
        return auth()->check();
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */

    public function rules()
    {
        return [
            'reservation_date' => 'required|date|after_or_equal:today',
            'reservation_time' => 'required|date_format:H:i',
            'number_of_guests' => 'required|integer|min:1|max:20',
            'special_requests' => 'nullable|string|max:255',
            'menu_items' => 'nullable|array',
            'menu_items.*.menu_item_id' => 'required_with:menu_items|integer|exists:menu_items,id',
            'menu_items.*.quantity' => 'required_with:menu_items|integer|min:1',
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
            'reservation_date.required' => 'The reservation date is required.',
            'reservation_date.date' => 'The reservation date must be a valid date.',
            'reservation_date.after_or_equal' => 'The reservation date cannot be in the past.',
            'reservation_time.required' => 'The reservation time is required.',
            'reservation_time.date_format' => 'The reservation time must be in the format HH:MM.',
            'number_of_guests.required' => 'The number of guests is required.',
            'number_of_guests.integer' => 'The number of guests must be an integer.',
            'number_of_guests.min' => 'There must be at least one guest.',
            'number_of_guests.max' => 'The number of guests cannot exceed 20.',
            'special_requests.string' => 'The special requests must be a valid string.',
            'special_requests.max' => 'The special requests cannot exceed 255 characters.',
            'menu_items.array' => 'The menu items must be an array.',
            'menu_items.*.menu_item_id.required_with' => 'Each menu item must have a menu_item_id.',
            'menu_items.*.menu_item_id.integer' => 'The menu_item_id must be an integer.',
            'menu_items.*.menu_item_id.exists' => 'The selected menu item does not exist.',
            'menu_items.*.quantity.required_with' => 'Each menu item must have a quantity.',
            'menu_items.*.quantity.integer' => 'The quantity must be an integer.',
            'menu_items.*.quantity.min' => 'The quantity must be at least 1.',
        ];
    }
}
