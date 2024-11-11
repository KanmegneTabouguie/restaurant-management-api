<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class PasswordResetController extends Controller
{
    /**
     * Send a password reset link to the user's email.
     */
    public function sendResetLinkEmail(Request $request)
    {
        // Validate request data
        $validated = $request->validate([
            'email' => 'required|string|email',
        ]);

        // Send the password reset link
        $status = Password::sendResetLink(
            $validated
        );

        // Check status and respond accordingly using if-else
        if ($status === Password::RESET_LINK_SENT) {
            return response()->json(['message' => __($status)], 200);
        } else {
            throw ValidationException::withMessages([
                'email' => [__($status)],
            ]);
        }
    }

    /**
     * Reset the user's password using a valid token.
     */
    public function reset(Request $request)
    {
        // Validate request data
        $validated = $request->validate([
            'token'    => 'required|string',
            'email'    => 'required|string|email',
            'password' => 'required|string|min:8|confirmed', // password_confirmation field required
        ]);

        // Attempt to reset the password
        $status = Password::reset(
            $validated,
            function ($user, $password) {
                $user->forceFill([
                    'password' => Hash::make($password),
                ])->save();

                // Optionally, revoke all tokens...
                $user->tokens()->delete();
            }
        );

        // Check status and respond accordingly using if-else
        if ($status === Password::PASSWORD_RESET) {
            return response()->json(['message' => __($status)], 200);
        } else {
            throw ValidationException::withMessages([
                'email' => [__($status)],
            ]);
        }
    }

    /**
     * Show the password reset form.
     */
    public function showResetForm($token)
    {
        // In an API context, you might return a view or a message indicating the token is valid.
        // Alternatively, if integrating with a frontend framework, the frontend can handle the form.

        // Example response:
        return response()->json([
            'message' => 'Provide your email and new password to reset your password.',
            'token'   => $token,
        ], 200);
    }
}
