<?php  
/**
* 
*/
namespace App\models;
use app\core\QueryBuilder;
use app\core\Model;

class Category extends Model
{

	function __construct()
	{
		$this->tableName = 'categories';
	}
	function getAll(){
		$sql="select * from categories";
		return QueryBuilder::table('categories')->selects($sql);
	}
	function find($id){
		$sql="select * from categories where id_cat = {$id}";
		return QueryBuilder::table('categories')->selects($sql);
	}
	function getCatParent(){
		$sql="select * from categories where parent_id = 0";
		return QueryBuilder::table('categories')->selects($sql);
	}

	function getCatChild(){
		$sql="select * from categories where parent_id != 0";
		return QueryBuilder::table('categories')->selects($sql);
	}

}