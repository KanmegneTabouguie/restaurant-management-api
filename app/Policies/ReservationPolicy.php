<?php

namespace App\Policies;

use App\Models\Reservation;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class ReservationPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any reservations.
     * Only Admins can view all reservations.
     */
    public function viewAny(User $user)
    {
        return $user->role === 'Admin';
    }

    /**
     * Determine whether the user can view the reservation.
     * Admins or the owner can view the reservation.
     */
    public function view(User $user, Reservation $reservation)
    {
        return $user->role === 'Admin' || $user->id === $reservation->user_id;
    }

    /**
     * Determine whether the user can create reservations.
     * Authenticated users can create reservations.
     */
    public function create(User $user)
    {
        return true; // Any authenticated user can create a reservation
    }

    /**
     * Determine whether the user can update the reservation.
     * Admins or the owner can update the reservation.
     */
    public function update(User $user, Reservation $reservation)
    {
        return $user->role === 'Admin' || $user->id === $reservation->user_id;
    }

    /**
     * Determine whether the user can delete the reservation.
     * Admins or the owner can delete the reservation.
     */
    public function delete(User $user, Reservation $reservation)
    {
        return $user->role === 'Admin' || $user->id === $reservation->user_id;
    }

    // Additional methods (restore, forceDelete) can be defined as needed
}
