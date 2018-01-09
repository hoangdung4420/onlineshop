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
			$arNewBooks = Book::getNewBook();
			$catParents = Category::getCatParent();
			$catChilds = Category::getCatChild();

			foreach ($catParents as $value) {
				$arCatBooks[$value['name']] = Book::getCatBook($value['id_cat']);
			}

			$contact = About::getContact();
			//echo $contact[0]['detail'];
			/*echo '<pre>';
			print_r($contact);*/
			$this->render('index',['arNewBooks'=>$arNewBooks,'arCatBooks'=>$arCatBooks,'catParents'=>$catParents, 'catChilds' => $catChilds,'contact' => $contact ]);

			/*$result=QueryBuilder::table('abouts')->select('id_about','title','detail')->get();*/
			/*$sql="delete from abouts where id_about=12";
			echo $re =QueryBuilder::table('abouts')->deletes($sql);*/
		/*	$sql="update abouts set title='youtobeư' where id_about=9";
			echo $re =QueryBuilder::table('abouts')->updates($sql);
		*/
			/*$sql="insert into abouts (title,detail) VALUES ('b','c')";
			echo $re =QueryBuilder::table('abouts')->inserts($sql);*/

		} 

		function getCat($id)
		{
			$catParents = Category::getCatParent();
			$catChilds = Category::getCatChild();

			$arCatBooks = Book::getCatBookAll($id);
			$oItem = Category::find($id);
			
			$contact = About::getContact();
			$this->render('cat',['oItem'=>$oItem[0],'arCatBooks'=>$arCatBooks,'catParents'=>$catParents, 'catChilds' => $catChilds,'contact' => $contact ]);
		}

		function getContact()
		{
			$contact = About::getContact();
			$catParents = Category::getCatParent();
			$catChilds = Category::getCatChild();
			$this->render('contact', ['catParents'=>$catParents,'catChilds' => $catChilds,'contact' => $contact]);
		}
		function getBook($id){

			$contact = About::getContact();
			$catParents = Category::getCatParent();
			$catChilds = Category::getCatChild();
			$this->render('book', ['catParents'=>$catParents,'catChilds' => $catChilds,'contact' => $contact]);
		}
	}

 ?>