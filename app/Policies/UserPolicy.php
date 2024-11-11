<?php

namespace App\Policies;

use App\Models\User;

class UserPolicy
{
    /**
     * Determine if the user can view any user profiles.
     * Only Admins can view all users.
     */
    public function viewAny(User $user)
    {
        return $user->role === 'Admin';
    }

    /**
     * Determine if the user can view the specified user profile.
     */
    public function view(User $user, User $targetUser)
    {
        return $user->role === 'Admin' || $user->id === $targetUser->id;
    }

    /**
     * Determine if the user can update the specified user profile.
     */
    public function update(User $user, User $targetUser)
    {
        return $user->role === 'Admin' || $user->id === $targetUser->id;
    }

    /**
     * Determine if the user can delete the specified user profile.
     * Only Admins can delete user accounts.
     */
    public function delete(User $user, User $targetUser)
    {
        return $user->role === 'Admin';
    }

    /**
     * Determine if the user can view testimonials for the specified user.
     */
    public function viewTestimonials(User $user, User $targetUser)
    {
        return $user->role === 'Admin' || $user->id === $targetUser->id;
    }

    /**
     * Determine if the user can view reservations for the specified user.
     */
    public function viewReservations(User $user, User $targetUser)
    {
        return $user->role === 'Admin' || $user->id === $targetUser->id;
    }
}
