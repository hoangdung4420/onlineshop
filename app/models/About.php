<?php  
/**
* 
*/
namespace App\models;
use app\core\QueryBuilder;

class About 
{
	function getAll(){
		$sql="select * from abouts";
		return QueryBuilder::table('abouts')->selects($sql);
	}
}