<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;


class ProductController extends Controller
{
    //
    function addProduct(Request $req){
        
        $product = new Product;
        $product->name = $req->input('name');
        $product->description = $req->input('description');
        $product->price = $req->input('price');
        $product->file_path = $req->file('file_path')->store('products');
        $product->save();
        return $product;
    }

    function showData(){
        return Product::all();
    }

    function deleteData($id){
        $result = Product::where('id', $id)->delete();
        if($result){
            return ["result" => "Product Delete Successfull"];
        } else{
           return ["result" => "opthion Failed"]; 
        }
    }

    function getProduct($id){
        return Product::find($id);
    }

    function updateProduct(Request $req,$id){

        $product = Product::find($id);
        $product->name = $req->input('name');
        $product->description = $req->input('description');
        $product->price = $req->input('price');
        if($req->file('file_path')){
            $product->file_path = $req->file('file_path')->store('products');
        }
       $product->save();
       return $product;

    }

    function search($key){
        return Product::where('name','LIKE',"%$key%")->get();
    }


}
