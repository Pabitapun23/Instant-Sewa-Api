<?php

namespace App\Http\Controllers;

use App\Models\Models\SubCategoryServiceProvider;
use Illuminate\Http\Request;

class SubCategoryServiceProviderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
       public function store(Request $request)
    {
        $rules = [
            'service_provider_id' => 'required',
            'subcategories_id' =>'required',
        ];
        $this->validate($request, $rules);
         $services = SubCategoryServiceProvider::create($request->all());
        return $services;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Models\SubCategoryServiceProvider  $subCategoryServiceProvider
     * @return \Illuminate\Http\Response
     */
    public function show(SubCategoryServiceProvider $subCategoryServiceProvider)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Models\SubCategoryServiceProvider  $subCategoryServiceProvider
     * @return \Illuminate\Http\Response
     */
    public function edit(SubCategoryServiceProvider $subCategoryServiceProvider)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Models\SubCategoryServiceProvider  $subCategoryServiceProvider
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, SubCategoryServiceProvider $subCategoryServiceProvider)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Models\SubCategoryServiceProvider  $subCategoryServiceProvider
     * @return \Illuminate\Http\Response
     */
    public function destroy(SubCategoryServiceProvider $subCategoryServiceProvider)
    {
        //
    }
    
}
