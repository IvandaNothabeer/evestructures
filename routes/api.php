<?php

use Illuminate\Http\Request;
use App\Structure;
use App\StructureService;
use App\Character;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('structures', function() {
    if ( \Auth::guard('api')->getTokenForRequest() <> env('API_BEARER_TOKEN','')) return response()->json(['error' => 'Not Authorized'], 401);;

    // return a list of all structures
    return Structure::get(['structure_name','type_name']);
});

Route::get('states', function() {
    if ( \Auth::guard('api')->getTokenForRequest() <> env('API_BEARER_TOKEN','')) return response()->json(['error' => 'Not Authorized'], 401);;

    // return a list of all structures
    return Structure::get(['structure_name','type_name','state']);
});

Route::get('services', function() {
    if ( \Auth::guard('api')->getTokenForRequest() <> env('API_BEARER_TOKEN','')) return response()->json(['error' => 'Not Authorized'], 401);;

    // Return a list of Online Services
    return StructureService::where('state','LIKE', '%online%')->get();
});

Route::get('clonebays', function() {
    if ( \Auth::guard('api')->getTokenForRequest() <> env('API_BEARER_TOKEN','')) return response()->json(['error' => 'Not Authorized'], 401);;

    // Return a list of Online Clone Bays
    return StructureService::where('state','LIKE', '%online%', 'AND', 'name', 'LIKE', '%clone%')->get();
});

Route::get('characters', function() {
    //if ( \Auth::guard('api')->getTokenForRequest() <> env('API_BEARER_TOKEN','')) return response()->json(['error' => 'Not Authorized'], 401);;

    // Return a list of Online Clone Bays
    return Character::with('structures')->get();
    
});
