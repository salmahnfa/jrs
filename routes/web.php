<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\AdminOPDController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\RetribusiController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\TransaksiController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

URL::forceScheme('http');

Route::redirect('/', '/beranda');
Route::get('/beranda', [HomeController::class, 'index']);
Route::get('/tentang-retribusi', [PageController::class, 'tentang']);
Route::get('/tarif-retribusi', [PageController::class, 'tarif']);
Route::get('/retribusi-kebersihan', [PageController::class, 'retribusi_kebersihan']);
Route::get('/retribusi-limbah-cair', [PageController::class, 'retribusi_limbah_cair']);
Route::get('/faq', [PageController::class, 'faq']);

Route::get('/retribusiku', [PageController::class, 'retribusiku']);
Route::get('/bayar-retribusi', [PageController::class, 'bayar']);
Route::get('/konfirmasi', [PageController::class, 'konfirmasi']);
Route::get('/final', [PageController::class, 'final']);

// login
Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/auth/login', [LoginController::class, 'attemptLogin'])->name('auth.login');
Route::get('/auth/logout', [LoginController::class, 'logout'])->name('auth.logout');

Route::prefix('admin')->middleware(['checkrole:1'])->group(function () {
    Route::get('/', [AdminController::class, 'dashboard']);
    //Route::resource('/admins', AdminController::class)->except('show');
    Route::get('/admins', AdminController::class . '@index')->name('admins.index');
    Route::get('/admins/create', AdminController::class . '@create')->name('admins.create');
    Route::post('/admins', AdminController::class . '@store')->name('admins.store');
    Route::get('/admins/{post}', AdminController::class . '@show')->name('admins.show');
    Route::get('/admins/{post}/edit', AdminController::class . '@edit')->name('admins.edit');
    Route::put('/admins/{post}', AdminController::class . '@update')->name('admins.update');
    Route::delete('/admins/{post}', AdminController::class . '@destroy')->name('admins.destroy');

    Route::get('/admin_opds', AdminOPDController::class . '@index')->name('admin_opds.index');
    Route::get('/wajib_retribusis', UserController::class . '@index')->name('users.index');

    // Route::post('/admins', AdminController::class . '@store')->name('admins.store');
    Route::get('/retribusis', [AdminController::class, 'retribusis']);
    Route::get('/kategoris', [AdminController::class, 'kategoris']);
    Route::get('/transaksis', [AdminController::class, 'transaksis']);

    //Route::get('/transaksis', [TransaksiController::class, 'transaksis']);
});

Route::prefix('admin_opd')->middleware(['checkrole:2'])->group(function () {
//Route::prefix('admin_opd')->group(function () {
    Route::get('/', [AdminOPDController::class, 'dashboard']);
    Route::get('/transaksis', [AdminOPDController::class, 'transaksis']);
    Route::resource('/retribusis', RetribusiController::class)->except('show');
    Route::resource('/kategoris', KategoriController::class)->except('show');
});

Route::prefix('user')->middleware(['checkrole:3'])->group(function () {
    Route::get('/', [HomeController::class, 'index2']);
    Route::get('/retribusiku', [PageController::class, 'retribusiku']);
    Route::get('/bayar-retribusi', [PageController::class, 'bayar']);
});