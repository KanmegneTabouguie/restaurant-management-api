<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Notification;

class NotificationPolicy
{
    public function viewAny(User $user)
    {
        return $user->role === 'Admin';
    }

    public function view(User $user, Notification $notification)
    {
        return $user->role === 'Admin';
    }

    public function create(User $user)
    {
        return $user->role === 'Admin';
    }

    public function delete(User $user, Notification $notification)
    {
        return $user->role === 'Admin';
    }
}
