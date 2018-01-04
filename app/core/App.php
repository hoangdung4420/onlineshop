<?php 

/**
* App
*/

require_once (dirname(__FILE__).'/Autoload.php');
class App
{
	private $router;
	public static $config;
	public static $controller;
	public static $action;

	function __construct()
	{
		new Autoload(self::$config['rootDir']);
		$this->router = new Router(self::$config['basePath']);
		
	}

	public static function setConfig($config)
	{
		self::$config = $config;
	}

	public static function getConfig()
	{
		return self::$config;
	}

	public static function setController($controller)
	{
		self::$controller = $controller;
	}

	public static function getController()
	{
		return self::$controller;
	}

	public static function getAction()
	{
		return self::$action;
	}

	public static function setAction($action)
	{
		self::$action = $action;
	}

	public function run()
	{
		$this->router->run();
	}
}