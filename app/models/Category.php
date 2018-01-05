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
}