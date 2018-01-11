<?php 
namespace App\core;
use app\core\QueryBuilder;
	/**
	* 
	*/
	class Model
	{
		public $tableName;
		function __construct()
		{
			# code...
		}

		public function getAll()
		{
			return QueryBuilder::table($this->tableName)->get();
		}

		public function get($id)
		{

		}

		public function save()
		{

		}
	}
 ?>