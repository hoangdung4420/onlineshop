<?php 
namespace app\core;
use App;
/**
* 
*/
class Controller
{
	private $layout = null;
	function __construct()
	{
		$this->layout = App::getConfig()['layout'];
	}

	public function setLayout($layout)
	{
		$this->layout = $layout;
	}
	public function redirect($url,$isEnd=true,$resPonseCode=302)
	{
		header('Location:'.$url,true,$resPonseCode);
			if( $isEnd )
				die();
	}

	public function render($view,$data=null)
	{
		$rootDir = App::getConfig()['rootDir'];
		
		$content = $this->getViewContent($view, $data);
		if( $this->layout != null)
		{
			$layoutPath = $rootDir.'/app/views/'.$this->layout.'.php';
			if( file_exists($layoutPath) ){
					require( $layoutPath );
				}else{
					echo 'file does not exits';
				}
		}
		
	}

	public function getViewContent($view, $data=null)
	{
		$rootDir = App::getConfig()['rootDir'];
		$view = str_replace('.','/',$view);
		$viewPath = $rootDir.'/app/views/'.$view.'.php';
		if( is_array($data) ){
			extract($data, EXTR_PREFIX_SAME, "data");
		}else{
			$data = $data;
		}
				
		if( file_exists($viewPath) ){
			ob_start();
			require( $viewPath );
			return ob_get_clean();
		}else{
			echo 'file does not exits';
		}
	}

	public function renderPartier($view, $data=null)
	{
		$rootDir = App::getConfig()['rootDir'];
		//$view = str_replace('.','/',$view);
		$viewPath = $rootDir.'/app/views/'.$view.'.php';
		if( is_array($data) ){
			extract($data, EXTR_PREFIX_SAME, "data");
		}else{
			$data = $data;
		}
				
		if( file_exists($viewPath) ){
			require( $viewPath );
		}else{
			echo 'file does not exits';
		}
	}
	
}
