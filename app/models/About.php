<?php  
/**
* 
*/
namespace App\models;
use app\core\QueryBuilder;

class About 
{
	function getContact(){
		$sql="select * from abouts where title = 'Liên hệ'";
		return QueryBuilder::table('abouts')->selects($sql);
	}
}