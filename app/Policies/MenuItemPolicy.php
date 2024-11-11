<?php

namespace App\Policies;

use App\Models\MenuItem;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class MenuItemPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any menu items.
     * Accessible by all users.
     */
    public function viewAny(User $user)
    {
        return true; // All users can view menu items
    }

    /**
     * Determine whether the user can view the menu item.
     * Accessible by all users.
     */
    public function view(User $user, MenuItem $menuItem)
    {
        return true; // All users can view a menu item
    }

    /**
     * Determine whether the user can create menu items.
     * Only Admins can create menu items.
     */
    public function create(User $user)
    {
        return $user->role === 'Admin';
    }

    /**
     * Determine whether the user can update the menu item.
     * Only Admins can update menu items.
     */
    public function update(User $user, MenuItem $menuItem)
    {
        return $user->role === 'Admin';
    }

    /**
     * Determine whether the user can delete the menu item.
     * Only Admins can delete menu items.
     */
    public function delete(User $user, MenuItem $menuItem)
    {
        return $user->role === 'Admin';
    }

    // Additional methods (restore, forceDelete) can be defined as needed
}
