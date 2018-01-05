<?php 
	namespace app\controllers;
	use app\core\Controller;
	use app\core\QueryBuilder;
	use app\models\About;
	use app\models\Category;
	use app\models\Book;
	
	/**
	* HomeController
	*/
	class HomeController extends Controller
	{
		
		function __construct()
		{
			parent::__construct();
		}

		function index()
		{
			$result = Book::getAll();
			$cat = Category::getAll();

			/*echo "<pre>";
			print_r($cat);
			die();*/
			$this->render('index',['book'=>$result,'cat'=>$cat]);

			/*$result=QueryBuilder::table('abouts')->select('id_about','title','detail')->get();*/
			/*$sql="delete from abouts where id_about=12";
			echo $re =QueryBuilder::table('abouts')->deletes($sql);*/
		/*	$sql="update abouts set title='youtobeư' where id_about=9";
			echo $re =QueryBuilder::table('abouts')->updates($sql);
		*/
			/*$sql="insert into abouts (title,detail) VALUES ('b','c')";
			echo $re =QueryBuilder::table('abouts')->inserts($sql);*/

		}

		function getCat()
		{
			$arCat =['a'];
			new About;
			$this->render('cat.index',$arCat);
		}
	}

 ?>