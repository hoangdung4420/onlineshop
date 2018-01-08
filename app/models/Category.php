<?php  
/**
* 
*/
namespace App\models;
use app\core\QueryBuilder;

class Category 
{
	function getAll(){
		$sql="select * from categories";
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