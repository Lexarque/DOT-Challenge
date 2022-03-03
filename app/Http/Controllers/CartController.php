<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class CartController extends Controller
{
    public function show(){
        $data = DB::table('carts')->join('games', 'games.id_games', 'carts.id_games')->join('users', 'users.id', 'carts.id_users')->select('carts.id_cart', 'carts.qty', 'carts.total_price','games.games_name', 'games.games_category','games.games_price', 'games.games_desc', 'users.name')->get();
        if($data -> isEmpty()){
            return Response()->json(['message' => 'carts table is empty'], 404);
        }else{
            return Response()->json($data);
        }
        
    }

    public function details($id){
        $data = DB::table('carts')->join('games', 'games.id_games', 'carts.id_games')->join('users', 'users.id', 'carts.id_users')->select('carts.id_cart', 'carts.qty', 'carts.total_price','games.games_name', 'games.games_category','games.games_price', 'games.games_desc', 'users.name')->where('id_cart', $id)->get();
        if($data -> isEmpty()){
            return Response()->json(['message' => 'cart id not found'], 404);
        }else{
            return Response()->json($data);
        }
    }

    public function store(Request $req){
        $validate = Validator::make($req->all(),
        [
            'qty' => 'required',
            'id_users' => 'required',
            'id_games' => 'required'
        ]); 

        if($validate->fails()){
            return Response()->json($validate->errors());
        }

        $qty = $req->qty;
        $id_games = $req->id_games;
        $base_price = DB::table('games')->where('id_games', $id_games)->value('games_price');
        $total_price = $qty * $base_price;
       
        $store = Cart::create([
            'qty' => $qty,
            'id_users' => $req->id_users,
            'id_games' => $id_games,
            'total_price' => $total_price
            
        ]);

        if($store){
            return Response()->json(["Data" => $store, "Status" => 'Sucess']);
        }else{
            return Response()->json(["Error" => ($store->errors()), "Status" => 'Fail']);
        }
    }

    public function update($id, Request $req)
    {

        

        $validator=Validator::make($req->all(),
        [
            'qty' => 'required|integer|min:1',
            'id_users' => 'required|integer|min:1',
            'id_games' => 'required|integer|min:1'
        ]);
 
        if($validator->fails()) {
            return Response()->json($validator->errors());
        }

        $qty = $req->qty;
        $id_games = $req->id_games;
        $base_price = DB::table('games')->where('id_games', $id_games)->value('games_price');
        $total = $base_price * $qty;
            
        $update = Cart::where('id_cart', $id)->update([
            'qty' => $qty,
            'id_users' => $req->id_users,
            'id_games' => $id_games,
            'total_price' => $total,
        ]);
            
        if($update) {
                return Response()->json(["Updated on id : " => ''.$id.'', "Status" => 'Sucess']);
            }else{
                return Response()->json(["Error" => ($update->errors()), "Status" => 'Failed']);
            }
        }

    public function destroy($id) {
    
        $delete = Cart::where('id_cart', $id)->delete();
        
        if($delete) 
        {
            return Response()->json(['Deleted on id : ' => ''.$id.'', 'Status' => 'Sucess']);
        }
        else 
        {
            return Response()->json(['Status' => 'Failed', 'Error' => 'id not found'],404);
        }
    }
}
