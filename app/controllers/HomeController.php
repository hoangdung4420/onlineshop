<?php 
	namespace app\controllers;
	use app\core\Controller;
	use app\core\QueryBuilder;
	use \App;
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
			//$array = ['a'=>1,'b'=>2,'c'=>3];
			$builder=QueryBuilder::table('bang1')->select('id','name')->distinct()->join('bang2','bang1.id','=','bang2.id')->orwhere('cot1','=',20)->where('cot2','=',20)->groupBy('cot1','cot2')->having('cot2','=',20)->having('cot2','=',20)->orderBy('cot2','DESC')->orderBy('cot2','DESC')->limit(10)->offset(5)->get();

			$this->render('index');

		}
		function getCat()
		{
			$this->render('cat.index');
		}
	}

 ?>