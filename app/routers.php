<?php 
use app\core\controller;
use app\core\QueryBuilder;
Router::get('/', 'HomeController@index');
Router::get('/cat', 'HomeController@getCat');

Router::get('/sidebar', function(){
	/*$ct = new Controller;
	$ct->render('index');*/
	$builder=QueryBuilder::table('bang1')->select('id','name')->distinct()->join('bang2','bang1.id','=','bang2.id')->orwhere('cot1','=',20)->where('cot2','=',20)->groupBy('cot1','cot2')->having('cot2','=',20)->having('cot2','=',20)->orderBy('cot2','DESC')->orderBy('cot2','DESC')->limit(10)->offset(5)->get();
	echo '<pre>';
	print_r($builder);
});
Router::any('*', function(){
	echo "404 not found";
});