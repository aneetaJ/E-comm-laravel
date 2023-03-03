<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Cart;
use App\Models\Order;
use Session;
use Illuminate\Support\Facades\DB;


class ProductController extends Controller
{
    public function index(){
        $data = Product::all();
        //echo '<pre>';print_r($data);die;
        return view('product',['products'=>$data]);
    }

    public function detail($id){
        $data = Product::find($id);
        return view('detail',['productDetail'=>$data]);
    }

    public function addToCart(Request $request){
        if($request->session()->has('user'))
        {
            $cart = new Cart;
            $cart->product_id = $request->product_id;
            $cart->user_id = $request->session()->get('user')['id'];
            $cart->save();
            return redirect('/');
        }else{
            return redirect('/login');
        }
        
    }

    public static function cartItem(){
        $user_id = Session::get('user')['id'];
        return Cart::where('user_id',$user_id)->count();
    }

    public function cartList(){
        $user_id = Session::get('user')['id'];
        $data = DB::table('cart')
        ->join('products','cart.product_id','=','products.id')
        ->where('cart.user_id',$user_id)
        ->select('products.*','cart.id as cart_id')
        ->get();
        //echo '<pre>';print_r($data);die;
        return view('cartlist',['data'=>$data]);
    }

    public function removeFromCart($id){
        //Cart::destroy($id);
        Cart::where('id', $id)->delete();
        return redirect('/cartlist');
    }

    public function orderNow(){
        $user_id = Session::get('user')['id'];
        $data = DB::table('cart')
        ->join('products','cart.product_id','=','products.id')
        ->where('cart.user_id',$user_id)
        ->sum('products.price');
        //echo '<pre>';print_r($data);die;
        return view('ordernow',['data'=>$data]);
    }

    public function placeOrder(Request $request){
        $user_id = Session::get('user')['id'];
        $cartdata = Cart::where('user_id',$user_id)->get();

        foreach($cartdata as $data){
            $order = new Order;
            $order->product_id = $data['product_id'];
            $order->user_id = $data['user_id'];
            $order->status = 'pending';
            $order->payment_method = $request->payment;
            $order->payment_status = 'pending';
            $order->address = $request->address;
            $order->save();
           Cart::where('user_id', $user_id)->delete();
        }
        return redirect('/');

    }

    public function myOrders(){
         $user_id = Session::get('user')['id'];
            $data = DB::table('orders')
            ->join('products','orders.product_id','=','products.id')
            ->where('orders.user_id',$user_id)
            ->get();
            //echo '<pre>';print_r($data);die;
            return view('myorders',['data'=>$data]);
    }

    public function search(Request $request){
       // return $request->search;
         $searchdata = Product::where('name','like','%'.$request->search.'%')
        ->get();
        return view('search',['searchdata'=>$searchdata]);
    }
}
