<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckRole
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle($request, Closure $next, $role)
    {

        if (Auth::check() && Auth::user()->id_role == $role) {
            return $next($request);
        } elseif (Auth::check()) {
            $user = Auth::user();
            return redirect($user->getRedirectRoute())->with('error', 'Unauthorized action.');
            // return redirect()->back()->with('error', 'Unauthorized action.');
        }

        return redirect()->route('login')->with('error', 'You need to login first.');
    }
}
