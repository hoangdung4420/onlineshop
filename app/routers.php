<?php 
use app\core\Controller;
use app\core\QueryBuilder;
Router::get('/', 'HomeController@index');
Router::get('/cat/{id}', 'HomeController@getCat');

Router::get('/sidebar', function(){
	/*$ct = new Controller;
	$ct->render('index');*/
	$builder=QueryBuilder::table('abouts')->select('id_about','title')->get();
	/*$sql="delete from abouts where id_about=11";
	echo $re =QueryBuilder::table('abouts')->deletes($sql);*/
	/*$sql="update abouts set title='youtobe' where id_about=9";
	echo $re =QueryBuilder::table('abouts')->updates($sql);*/
	/*$sql="insert into abouts (title,detail) VALUES ('b','c')";
	echo $re =QueryBuilder::table('abouts')->inserts($sql);*/
	
});
Router::any('*', function(){
	echo "404 not found";
});