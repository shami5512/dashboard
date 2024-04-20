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
                ->with('traccar')->limit(5000)
                ->get();
        } else {
            $positions = Position::with('traccar')->limit(5000)->get();
        }

        $devices = Traccars::get();
        return view('backend.admin.device.index', compact('devices', 'positions'));
    }
}
