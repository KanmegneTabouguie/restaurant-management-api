<?php

namespace App\Policies;

use App\Models\Contact;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class ContactPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any contact messages.
     * Only Admins can view all contacts.
     */
    public function viewAny(User $user)
    {
        return $user->role === 'Admin';
    }

    /**
     * Determine whether the user can view the contact message.
     * Only Admins can view contact messages.
     */
    public function view(User $user, Contact $contact)
    {
        return $user->role === 'Admin';
    }

    /**
     * Determine whether the user can create contact messages.
     * Public users can create contact messages.
     */
    public function create(User $user)
    {
        // Allow all users, including guests
        return true;
    }

    /**
     * Determine whether the user can update the contact message.
     * Only Admins can update contact messages.
     */
    public function update(User $user, Contact $contact)
    {
        return $user->role === 'Admin';
    }

    /**
     * Determine whether the user can delete the contact message.
     * Only Admins can delete contact messages.
     */
    public function delete(User $user, Contact $contact)
    {
        return $user->role === 'Admin';
    }
}
