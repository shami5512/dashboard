<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Position;
use Illuminate\Pagination\Paginator;
use App\Models\Traccars;
class DeviceController extends Controller
{
    public function index(Request $request)
    {
        $deviceId = $request->input('id');
        $date = $request->input('date');
        if ($deviceId && $date) {
            $positions = Position::where('deviceid', $deviceId)
                ->whereRaw('DATE(devicetime) = ?', [$date])
                ->with('traccar')
                ->limit(5000)
                ->get();
            $user = Auth::user();
            $email = $user->email;

            // Check if the user has already accessed the page today
            if (Cache::has($email)) {
                // User has already accessed the page today, redirect or show an error message
                return redirect()->route('dashboard')->with('message', 'You can only search this page once per day.');
            }

            // If user hasn't accessed the page today, cache their email to prevent further access
            Cache::put($email, true, now()->addDay());
        } else {
            $positions = Position::with('traccar')->limit(5000)->get();
        }

        $devices = Traccars::get();
        return view('backend.user.device.index', compact('devices', 'positions'));
    }
}
