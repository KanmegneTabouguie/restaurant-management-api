<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreReservationRequest;
use App\Http\Requests\UpdateReservationRequest;
use App\Models\Reservation;
use App\Models\MenuItem;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class ReservationController extends Controller
{
    /**
     * List all reservations.
     * Accessible by Admin only.
     */
    public function index()
    {
        $this->authorize('viewAny', Reservation::class);

        $reservations = Reservation::with(['user', 'menuItems'])->get();

        return response()->json($reservations, Response::HTTP_OK);
    }

    /**
     * Get reservation details.
     * Accessible by Admin or the Owner.
     */
    public function show($id)
    {
        $reservation = Reservation::with(['user', 'menuItems'])->find($id);

        if (!$reservation) {
            return response()->json(['message' => 'Reservation not found.'], Response::HTTP_NOT_FOUND);
        }

        $this->authorize('view', $reservation);

        return response()->json($reservation, Response::HTTP_OK);
    }

    /**
     * Create a new reservation.
     * Accessible by Authenticated users (Customers).
     */
    public function store(StoreReservationRequest $request)
    {
        $this->authorize('create', Reservation::class);

        $validated = $request->validated();

        // Create the reservation
        $reservation = Reservation::create([
            'user_id'          => Auth::id(),
            'reservation_date' => $validated['reservation_date'],
            'number_of_guests' => $validated['number_of_guests'],
            'special_requests' => $validated['special_requests'] ?? null,
            'status'           => 'Pending', // Default status
        ]);

        // Attach menu items if provided
        if (isset($validated['menu_items']) && is_array($validated['menu_items'])) {
            $attachData = [];
            foreach ($validated['menu_items'] as $menuItem) {
                $attachData[$menuItem['menu_item_id']] = ['quantity' => $menuItem['quantity']];
            }
            $reservation->menuItems()->attach($attachData);
        }

        // Load relationships for response
        $reservation->load(['user', 'menuItems']);

        return response()->json($reservation, Response::HTTP_CREATED);
    }

    /**
     * Update a reservation.
     * Accessible by Admin or the Owner.
     */
    public function update(UpdateReservationRequest $request, $id)
    {
        $reservation = Reservation::find($id);

        if (!$reservation) {
            return response()->json(['message' => 'Reservation not found.'], Response::HTTP_NOT_FOUND);
        }

        $this->authorize('update', $reservation);

        $validated = $request->validated();

        // Update reservation details
        $reservation->update([
            'reservation_date' => $validated['reservation_date'] ?? $reservation->reservation_date,
            'number_of_guests' => $validated['number_of_guests'] ?? $reservation->number_of_guests,
            'special_requests' => $validated['special_requests'] ?? $reservation->special_requests,
            'status'           => $validated['status'] ?? $reservation->status,
        ]);

        // Sync menu items if provided
        if (isset($validated['menu_items']) && is_array($validated['menu_items'])) {
            $syncData = [];
            foreach ($validated['menu_items'] as $menuItem) {
                $syncData[$menuItem['menu_item_id']] = ['quantity' => $menuItem['quantity']];
            }
            $reservation->menuItems()->sync($syncData);
        }

        // Load relationships for response
        $reservation->load(['user', 'menuItems']);

        return response()->json($reservation, Response::HTTP_OK);
    }

    /**
     * Cancel/Delete a reservation.
     * Accessible by Admin or the Owner.
     */
    public function destroy($id)
    {
        $reservation = Reservation::find($id);

        if (!$reservation) {
            return response()->json(['message' => 'Reservation not found.'], Response::HTTP_NOT_FOUND);
        }

        $this->authorize('delete', $reservation);

        $reservation->delete();

        return response()->json(['message' => 'Reservation deleted successfully.'], Response::HTTP_OK);
    }
}
