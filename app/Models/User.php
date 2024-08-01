<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'nama',
        'email',
        'password',
        'id_role',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [];

    public function role()
    {
        return $this->belongsTo(Role::class);
    }

    public function getRedirectRoute()
    {
        switch ($this->id_role) {
            case 1:
                return 'admin/';
            case 2:
                return 'admin_opd/';
            case 3:
                return 'user/';
            default:
                return 'beranda';
        }
    }

    public function getAuthPassword()
    {
        return $this->password;
    }

    public static function findByEmailAndPassword($email, $password)
    {
        // Find the user by username and plain text password
        $user = static::where('email', $email)->where('password', $password)->first();

        // Check if the user exists
        if ($user) {
            return $user;
        }

        return null;
    }
}
