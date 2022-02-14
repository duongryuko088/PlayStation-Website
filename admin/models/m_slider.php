<?php
include_once 'database.php';

class M_slider extends database{
	public $loi_up_hinh = NULL;
	
	public function slider(){
		$sql = "select * from home_slider where vi_tri <> 0 order by vi_tri";
		$this->setQuery($sql);
		return $this->loadAllRows();
	}
	
	public function dat_lai_vt(){
		$slider = $this->slider();
		foreach($slider as $k => $i)
		{
			$sql2 = "update home_slider set vi_tri = ? where id =?";
			$param2 = array($k+1,$i->id);
			$this->setQuery($sql2);
			$this->execute($param2);
		}
	}
	
	public function xoa($id){
		$sql = "delete from home_slider where id IN($id)";
		$this->setQuery($sql);
		$this->execute();
		
		$this->dat_lai_vt();
	}
	
	public function sap_xep($id,$curr,$new){
		$sql ="update home_slider set vi_tri = ? where id =?";
		$param = array($new,$id);
		$this->setQuery($sql);
		$this->execute($param);
		
		$sql2 ="update home_slider set vi_tri = ? where id <> ? and vi_tri = ?";
		$param2 = array($curr,$id,$new);
		$this->setQuery($sql2);
		$this->execute($param2);
	}
	
	public function last_index(){
		$sql ="SELECT * FROM home_slider order by vi_tri desc limit 0,1";
		$this->setQuery($sql);
		return $this->loadRow()->vi_tri;
	}
	
	public function them_vao_ds($hinh,$vt=0){
		$sql = "insert into home_slider values(NULL,?,?)";
		$param = array($hinh,$vt);
		$this->setQuery($sql);
		$this->execute($param);
	}
	public function dua_hinh_vao_slider($id,$vt){
		$sql = "update home_slider set vi_tri = ? where id =? ";
		$param = array($vt,$id);
		$this->setQuery($sql);
		$this->execute($param);
	}
	
	public function them_hinh(){
		if(isset($_POST['btn_them_hinh']))
		{
			$flag = true;
			if(isset($_FILES['hinh']))
			{
				include_once 'm_upload_hinh.php';
				$m_upload_hinh = new M_upload_hinh();
				
				if($m_upload_hinh->img_error('hinh'))
				{
					if($m_upload_hinh->img_type('hinh'))
					{
						if($m_upload_hinh->img_size('hinh',4))
						{
							$path = '../assets/images/sliders/';
							foreach($_FILES['hinh']['name'] as $k => $name)
							{
								$hinh = time().'_'.$k.'_'.$name;
								$up = move_uploaded_file($_FILES['hinh']['tmp_name'][$k],$path.$hinh);
								if(!$up)
								{
									$this->loi_up_hinh = 'Error to uploading';
									$flag = false;
									break;
								}
								else
								{
									if($_POST['gt'] ==0)
									{
										$this->them_vao_ds($hinh);
									}
									else
									{
										$vt = $this->last_index()+1;
										$this->them_vao_ds($hinh,$vt);
									}
								}
							}
						}
						else
						{
							$this->loi_up_hinh = 'Image size has exceeded 1MB';
							$flag = false;
						}
					}
					else
					{
						$this->loi_up_hinh = 'Incorrect image format';
						$flag = false;
					}
				}
				else
				{
					$this->loi_up_hinh = 'Upload image!';
					$flag = false;
				}
			}
			
			if($flag)
			{
				setcookie('them_hinh_xong','Insert image successfully',time()+20);
				header('location: '.$_SERVER['PHP_SELF']);
			}
		}
		
	}
	
	public function hinh_ngoai_slider(){
		$sql = "select * from home_slider where vi_tri = 0 order by id desc ";
		$this->setQuery($sql);
		return $this->loadAllRows();
	}
	
	public function bot_slider(){
		if(isset($_POST['btn_slider']) && isset($_POST['id_hinh']))
		{
			foreach($_POST['id_hinh'] as $id)
			{
				$sql = "update home_slider set vi_tri = 0 where id =?";
				$param = array($id);
				$this->setQuery($sql);
				$this->execute($param);
				
				$this->dat_lai_vt();
				
				header('location: '.$_SERVER['PHP_SELF']);
			}
		}
	}
	
	public function them_slider(){
		if(isset($_POST['btn_them_slider']) && isset($_POST['id_hinh2']))
		{
			foreach($_POST['id_hinh2'] as $id)
			{
				
				$vt = $this->last_index()+1;
				$this->dua_hinh_vao_slider($id,$vt);
			}
			header('location: '.$_SERVER['PHP_SELF']);
		}
	}
}

?>
