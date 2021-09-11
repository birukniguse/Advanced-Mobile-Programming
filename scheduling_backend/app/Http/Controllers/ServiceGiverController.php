<?php

namespace App\Http\Controllers;

use App\Models\ServiceGiver;
use Illuminate\Http\Request;

class ServiceGiverController extends Controller
{
    public function index()
    {
        $data = ServiceGiver::all();
         return response()->json($data, 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // return view();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $serviceGiver = ServiceGiver::create([
            'bio' => $request->bio,
            'user_id' => $request->user_id,
            'service_id' => $request->service_id,
        ]);
        return response()->json(["data" => "saved successfully"]);
       
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ServiceGiver  $serviceGiver
     * @return \Illuminate\Http\Response
     */
    public function show(ServiceGiver $serviceGiver)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ServiceGiver  $serviceGiver
     * @return \Illuminate\Http\Response
     */
    public function edit(ServiceGiver $serviceGiver)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\ServiceGiver  $serviceGiver
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ServiceGiver $serviceGiver)
    {
        $upServiceGiver = ServiceGiver::findOrFail($serviceGiver->id);
        $upServiceGiver->bio = $serviceGiver->bio;
        $upServiceGiver->user_id = $serviceGiver->user_id;
        $upServiceGiver->service_id = $serviceGiver->service_id;
        return response()->json(["data" => "updated successfully"]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ServiceGiver  $serviceGiver
     * @return \Illuminate\Http\Response
     */
    public function destroy(ServiceGiver $serviceGiver)
    {
        $serviceGiver->delete();
        return response()->json(["data" => "deleted successfully"]);
    }
}
