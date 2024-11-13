<?php
	// Buat class koneksi
	class database 
	{
		// Property
		public $hostname 	= "localhost"; 
		public $username 	= "root";
		public $password 	= "";
		public $database 	= "simpeg";

		protected $koneksi;
		
		// Method
		public function __construct()
		{
			if (!isset($this->koneksi)) {
				$this->koneksi = new mysqli($this->hostname, $this->username, $this->password, $this->database);
				if (!$this->koneksi) {
					echo 'Tidak terhubung';
					exit;
				}
			}
			return $this->koneksi;
		}
	}
?>