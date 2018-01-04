<?php  
namespace app\core;
use \PDO;
use \PDOException;
/**
* 
*/

class QueryBuilder
{
	private $columns;
	private $from;
	private $distinct = false;
	private $joins;
	private $wheres;
	private $groups;
	private $havings;
	private $orders;
	private $limit;
	private $offset;
	function __construct($tableName)
	{
		 $this->from = $tableName;

	}

	public function table($tableName)
	{
		return new self($tableName);
	}

	public function select($columns)
	{
		$this->columns = is_array($columns)?$columns:func_get_args();
		return $this;
	}

	public function distinct()
	{
		$this->distinct = true;
		return $this;
	}

	public function join($table,$first,$operator,$second,$type = 'inner')
	{
		$this->joins[] = [$table,$first,$operator,$second,$type];
		return $this;
	}

	public function where($column,$operator,$value,$boolean = "and")
	{
		$this->wheres[]=[$column,$operator,$value,$boolean];
		return $this;
	}

	public function orwhere($column,$operator,$value,$boolean = "or")
	{
		$this->wheres[]=[$column,$operator,$value,$boolean];
		return $this;
	}


	public function groupBy($columns)
	{
		$this->groups = is_array($columns)?$columns:func_get_args();
		return $this;
	}

	public function having($column,$operator,$value,$boolean = "and")
	{
		$this->havings[]=[$column,$operator,$value,$boolean];
		return $this;
	}

	public function orderBy($columns,$direction = "as")
	{
		$this->orders[] = [$columns,$direction];
		return $this;
	}

	public function limit($limit)
	{
		$this->limit = $limit;
		return $this;
	}

	public function offset($offset)
	{
		$this->offset = $offset;
		return $this;
	}

	public function get()
	{
		if(!isset($this->from) || empty($this->from)){
			return false;
		}
		$sql = $this->distinct?"SELECT DISTINCT":"SELECT";
		if(isset($this->columns) && is_array($this->columns)){
			$sql.=' '.implode(',',$this->columns);
		}else{
			$sql.="*";
		}
		$sql .=" FROM ".$this->from;

		if(isset($this->joins) && is_array($this->joins)){
			foreach ($this->joins as $join) {
				$sql .= " INNER JOIN $join[0] ON $join[1] $join[2] $join[3]";
			}
		}
		if(isset($this->wheres) && is_array($this->wheres)){
			foreach ($this->wheres as $wk => $where) {
				$sql .=  " WHERE $where[0] $where[1] $where[2]";
				if ($wk < (count($this->wheres)-1)){
					$sql .= ' '.$where[3];
				}
			}
		}
		if(isset($this->groups) && is_array($this->groups)){
			$sql .=  " GROUP BY ".implode(' ,',$this->groups);
		}

		if(isset($this->havings) && is_array($this->havings)){
			foreach ($this->havings as $hk => $having) {
				$sql .=  " HAVING $having[0] $having[1] $having[2]";
				if ($hk < (count($this->havings)-1)){
					$sql .= ' '.$having[3];
				}
			}
		}

		if(isset($this->orders) && is_array($this->orders)){
			$sql .=  " ORDER BY ";
			foreach ($this->orders as $ok => $order) {
				$sql .= "$order[0] $order[1]";
				if ($ok < (count($this->orders)-1)){
					$sql .= ' ,';
				}
			}
		}

		if(isset($this->limit)){
			$sql .= " LIMIT $this->limit";
		}

		if(isset($this->offset)){
			$sql .= " OFFSET $this->offset";
		}
		//echo $sql;

	}
}