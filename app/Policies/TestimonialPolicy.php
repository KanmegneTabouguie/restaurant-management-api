<?php

namespace App\Policies;

use App\Models\Testimonial;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class TestimonialPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any testimonials.
     * Admins can view all; Public can view approved ones.
     */
    public function viewAny(User $user)
    {
        return $user->role === 'Admin';
    }

    /**
     * Determine whether the user can view the testimonial.
     * Admins can view all; Users can view their own.
     */
    public function view(User $user, Testimonial $testimonial)
    {
        return $user->role === 'Admin' || $user->id === $testimonial->user_id;
    }

    /**
     * Determine whether the user can create testimonials.
     * Only Customers can create testimonials.
     */
    public function create(User $user)
    {
        return $user->role === 'Customer';
    }

    /**
     * Determine whether the user can update the testimonial.
     * Only Admins can update testimonials.
     */
    public function update(User $user, Testimonial $testimonial)
    {
        return $user->role === 'Admin';
    }

    /**
     * Determine whether the user can delete the testimonial.
     * Only Admins can delete testimonials.
     */
    public function delete(User $user, Testimonial $testimonial)
    {
        return $user->role === 'Admin';
    }
}
