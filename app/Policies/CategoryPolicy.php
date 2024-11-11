<?php

namespace App\Policies;

use App\Models\Category;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class CategoryPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any categories.
     * Accessible by all users.
     */
    public function viewAny(User $user)
    {
        return true; // All users can view categories
    }

    /**
     * Determine whether the user can view the category.
     * Accessible by all users.
     */
    public function view(User $user, Category $category)
    {
        return true; // All users can view a category
    }

    /**
     * Determine whether the user can create categories.
     * Only Admins can create categories.
     */
    public function create(User $user)
    {
        return $user->role === 'Admin';
    }

    /**
     * Determine whether the user can update the category.
     * Only Admins can update categories.
     */
    public function update(User $user, Category $category)
    {
        return $user->role === 'Admin';
    }

    /**
     * Determine whether the user can delete the category.
     * Only Admins can delete categories.
     */
    public function delete(User $user, Category $category)
    {
        return $user->role === 'Admin';
    }

    // Additional methods (restore, forceDelete) can be defined as needed
}
