<?php  
/**
* 
*/
namespace App\models;
use app\core\QueryBuilder;
class Book 
{
	function getNewBook(){
		$sql="select * from books where active = 1 order by id_book DESC limit 4";
		return QueryBuilder::table('books')->selects($sql);
	}

	function getCatBook($id_cat){
		$sql = "select books.* from books inner join categories on cat_id = id_cat where (cat_id = {$id_cat} or parent_id = {$id_cat}) and active = 1 order by id_book DESC limit 7";
		return QueryBuilder::table('books')->selects($sql);
	}

	function getCatBookAll($id_cat){
		$sql = "select books.* from books inner join categories on cat_id = id_cat where (cat_id = {$id_cat} or parent_id = {$id_cat}) and active = 1 order by id_book DESC";
		return QueryBuilder::table('books')->selects($sql);
	}
}