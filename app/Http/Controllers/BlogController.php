<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Blog; //ini cara memanggil model
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Validator;
use Input;
use App\Category;
use DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;
use Illuminate\Pagination\LengthAwarePaginator;

class BlogController extends Controller
{
    public function index()
	{
		$posts=DB::table('posts')->join('categories', 'posts.category', '=', 'categories.id')->select('posts.id', 'categories.name', 'posts.title', 'posts.slug', 'posts.short_description', 'posts.content', 'posts.image')->get();
		return view('posts.index',compact('posts'));
	}

	public function show($id)
	{
	   $posts=Blog::find($id);
	   $category = Category::all();
	   foreach ($category as $categories) 
	   {
	   		if($posts->category == $categories->id)
	   			$posts->category=$categories->name;
	   }
	   return view('posts.show',compact('posts', 'category'));
	}

	public function readmore($id)
	{
	   $posts=Blog::find($id);
	   $category = Category::all();
	   foreach ($category as $categories) 
	   {
	   		if($posts->category == $categories->id)
	   			$posts->category=$categories->name;
	   }
	   return view('posts.readmore',compact('posts', 'category'));
	}

	public function home()
	{
	   $posts=DB::table('posts')->join('categories', 'posts.category', '=', 'categories.id')->select('posts.id', 'categories.name', 'posts.title', 'posts.slug', 'posts.short_description', 'posts.content', 'posts.image')->paginate(2);
	   $category = Category::all();
	   return view('posts.home',compact('posts', 'category'));
	}

	public function read($slug)
    {
        $posts = Blog::where('slug', $slug)->first();
        $category = Category::all();
        foreach ($category as $categories) 
	   	{
	   		if($posts->category == $categories->id)
	   			$posts->category=$categories->name;
	   	}
        return view('posts.slug', compact('posts', 'category'));
    }

	public function create()
	{
		$category = Category::all();
		return view('posts.create', compact('category'));// ini halaman view
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(Request $request)
	{
	   	$posts=\Request::all();
	   	if($request->file('image'))
	   	{
	   		$pic = $request->file('image');
	    	$extension = $pic->getClientOriginalExtension();
	    	Storage::disk('public')->put($pic->getClientOriginalName(),  File::get($pic));
	    	$posts['image'] = $pic->getClientOriginalName();//.'.'.$extension;
	   	}
	   	$posts['slug'] = Str::slug($request->get('title'));
	   	$content=$request->get('content');
	   	$dom = new \domdocument();
        $dom->loadHtml($content, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD); 
        $content = $dom->savehtml();
	   	$posts['content'] = $content;
	   	Blog::create($posts);//ini insert ke database
	   	return redirect('posts');
	}

	public function edit($id)
	{
	   $posts=Blog::find($id);
	   $category = Category::all();
	   return view('posts.edit',compact('posts', 'category'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(Request $request, $id)
	{
	   //
	   $postUpdate=\Request::all();
	   if($request->file('image'))
	   	{
	   		$pic = $request->file('image');
	    	$extension = $pic->getClientOriginalExtension();
	    	Storage::disk('public')->put($pic->getClientOriginalName(),  File::get($pic));
	    	$posts['image'] = $pic->getClientOriginalName();//.'.'.$extension;
	   	}
	   	$postUpdate['slug'] = Str::slug($request->get('title'));
	   	$content=$request->get('content');
	   	$dom = new \domdocument();
        $dom->loadHtml($content, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD); 
        $content = $dom->savehtml();
	   	$postUpdate['content'] = $content;
	   	$posts=Blog::find($id);
	   	$posts->update($postUpdate);
	   	return redirect('posts');
	}

	public function destroy($id)
	{
	   Blog::find($id)->delete();
	   return redirect('posts');
	}
}
