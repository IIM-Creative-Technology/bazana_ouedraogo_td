<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class EnsureTokenIsValid
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // if ($request->input('token') !== 'LEMOTDEPASSE') {
        //     return $next($request);
        // }

        // return $next($request);

       if ($request->input('token') !== 'LEMOTDEPASSE') {
            return $next($request);
        }else{
            return response()->json(['status' => false,'error' => "error"], 403);
        }

        // $response = $next($request); //You get the Response instance and store it

        // $response->header('LEMOTDEPASSE'); //you set the header
    
        // return $response;
    }
}
