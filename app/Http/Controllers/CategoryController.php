<?php

namespace App\Http\Controllers;

use Request;
use App\Category; //ini cara memanggil model
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Validator;
use Input;

class CategoryController extends Controller
{
	public function index()
	{
		$categories=Category::all();
		return view('categories.index',compact('categories'));
	}

	public function show($id)
	{
	   //$categories=Category::find($id);
	   //return view('categories.show',compact('categories'));
	}

	public function create()
	{
	   return view('categories.create');// ini halaman view
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
	   $categories=Request::all();
	   Category::create($categories);//ini insert ke database
	   return redirect('categories');
	}

	public function edit($id)
	{
	   $categories=Category::find($id);
	   return view('categories.edit',compact('categories'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
	   //
	   $categoriesUpdate=Request::all();
	   $categories=Category::find($id);
	   $categories->update($categoriesUpdate);
	   return redirect('categories');
	}

	public function destroy($id)
	{
	   Category::find($id)->delete();
	   return redirect('categories');
	}
}
