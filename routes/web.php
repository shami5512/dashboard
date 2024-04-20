<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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

Auth::routes();
Route::get('/', function () {
    return view('auth.login');
})->middleware('guest');
// Route::any('/register', [App\Http\Controllers\HomeController::class, 'index']);

Route::get('/index', [App\Http\Controllers\HomeController::class, 'index'])->name('dashboard');

Route::middleware(['auth', 'isAdmin'])->group(function () {
    Route::get('/admin/user/index', [App\Http\Controllers\Admin\ContactController::class, 'index'])->name('user.index');
    Route::get('/admin/user/create', [App\Http\Controllers\Admin\ContactController::class, 'create'])->name('user.create');
    Route::post('/admin/user/store', [App\Http\Controllers\Admin\ContactController::class, 'store'])->name('user.store');
    Route::get('/admin/user/edit/{id}', [App\Http\Controllers\Admin\ContactController::class, 'edit'])->name('user.edit');
    Route::post('/admin/user/update/{id}', [App\Http\Controllers\Admin\ContactController::class, 'update'])->name('user.update');
    Route::get('/admin/user/delete/{id}', [App\Http\Controllers\Admin\ContactController::class, 'delete'])->name('user.delete');

    // Profile Update Links
    Route::get('admin/profile', [App\Http\Controllers\Admin\ProfileController::class, 'index'])->name('admin.profile.index');
    Route::post('admin/profile/update', [App\Http\Controllers\Admin\ProfileController::class, 'update'])->name('admin.profile.update');

    Route::get('admin/device/index', [App\Http\Controllers\Admin\DeviceController::class, 'index'])->name('admin.device.index');
});


Route::get('user/device/index', [App\Http\Controllers\User\DeviceController::class, 'index'])->name('user.device.index');

Route::get('/profile', [App\Http\Controllers\User\ProfileController::class, 'index'])->name('user.profile.index');
Route::post('/profile/update', [App\Http\Controllers\User\ProfileController::class, 'update'])->name('user.profile.update');
Route::get('/password/change', [App\Http\Controllers\User\ProfileController::class, 'password'])->name('password.update');
Route::post('/password/change_post', [App\Http\Controllers\User\ProfileController::class, 'change_password'])->name('change.password');
