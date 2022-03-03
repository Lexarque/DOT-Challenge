<?php

namespace App\Http\Controllers;

use App\Models\Games;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class GamesController extends Controller
{
   public function show(){
    $data = DB::table('games')->get();
    if($data->isEmpty()){
        return Response()->json(['message' => 'games table is empty'], 404);
    }else
        return Response()->json($data);
    }

    public function show_by_category($category){
    $data = DB::table('games')->where('games_category', 'LIKE', '%' .$category. '%')->get();
    if($data->isEmpty()){
        return Response()->json(['message' => 'game category not found'], 404);
    }else
        return Response()->json($data);
    }

    public function show_by_name($name){
    $data = DB::table('games')->where('games_name', 'LIKE', '%' .$name. '%')->get();
    if($data->isEmpty()){
        return Response()->json(['message' => 'game name not found'], 404);
    }else
        return Response()->json($data);
    }

    public function details($id){
    $data = DB::table('games')->where('id_games', $id)->get();
    if($data->isEmpty()){
        return Response()->json(['message' => 'game id not found'], 404);
    }else
        return Response()->json($data);
    }
    

    public function store(Request $req){
        $validate = Validator::make($req->all(),
        [
            'games_name' => 'required|string|max:255',
            'games_category' => 'required|string|max:255',
            'games_price' => 'required|integer|min:4',
            'games_desc' => 'required|string'
        ]); 

        if($validate->fails()){
            return Response()->json($validate->errors());
        }

        $store = Games::create([
            'games_name' => $req->games_name,
            'games_category' => $req->games_category,
            'games_price' => $req->games_price,
            'games_desc' => $req->games_desc,
        ]);

        if($store){
            return Response()->json(["Data" => $store, "Status" => 'Sucess']);
        }else{
            return Response()->json(["Error" => ($store->errors()), "Status" => 'Fail']);
        }
    }

    public function update($id, Request $req)
    {      
        $validate = Validator::make($req->all(),
        [
            'games_name' => 'required|string|max:255',
            'games_category' => 'required|string|max:255',
            'games_price' => 'required|integer|min:4',
            'games_desc' => 'required|string'
        ]); 

        if($validate->fails()){
            return Response()->json($validate->errors());
        }

        $update = Games::where('id_games', $id)->update([
            'games_name' => $req->games_name,
            'games_category' => $req->games_category,
            'games_price' => $req->games_price,
            'games_desc' => $req->games_desc,
        ]);
            
        if($update) {
                return Response()->json(["Updated ID" => $id, "Status" => 'Sucess']);
            }else{
                return Response()->json(["Error" => ($update->errors()), "Status" => 'Failed']);
            }
        }

    public function destroy($id) {
    
        $delete = Games::where('id_games', $id)->delete();
        
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
