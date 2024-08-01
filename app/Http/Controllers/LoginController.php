<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\JsonResponse;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Providers\RouteServiceProvider;

class LoginController extends Controller
{
    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo;

    public function __construct()
    {
        $this->middleware('guest')->except('logout');
        $this->redirectTo = $this->redirectToRole();
    }

    public function index()
    {
        $data = [
            'title' => 'Login'
        ];

        return view('login', $data);
    }

    protected function attemptLogin(Request $request)
    {
        $credentials = $this->credentials($request);

        $user = User::findByEmailAndPassword($credentials['email'], $credentials['password']);
        //$user = User::findByEmailAndPassword('ifa@mail.com', 'admin123');
        // dd($user);
        if ($user) {
            $this->guard()->login($user, false);
            $request->session()->regenerate();

            $this->clearLoginAttempts($request);

            if ($response = $this->authenticated($request, $this->guard()->user())) {
                return $response;
            }

            return $request->wantsJson()
                ? new JsonResponse([], 204)
                : redirect()->intended($this->redirectToRole());
        } else {
            return redirect()->back()->with('error', 'Username atau Password tidak sesuai!');
        }
    }

    protected function logout(Request $request)
    {
        $this->guard()->logout();
        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/login')->with('logout_message', 'You have successfully logged out.');
    }

    protected function redirectToRole()
    {
        // Jika user sudah login, gunakan metode getRedirectRoute dari model User
        if (auth()->check()) {
            return auth()->user()->getRedirectRoute();
        }

        // Default jika user tidak login
        return RouteServiceProvider::HOME;
    }
}
