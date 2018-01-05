<?php  
/**
* 
*/
namespace App\models;
use app\core\QueryBuilder;

class Book 
{
	function getAll(){
		$sql="select * from books where active = 1";
		return QueryBuilder::table('books')->selects($sql);
	}
}