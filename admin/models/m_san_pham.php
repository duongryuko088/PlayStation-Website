<?php
include_once 'database.php';

class M_san_pham extends database{
	public $loi_cap_nhat_hang = NULL;
	public $loi_up_hinh = NULL;
	public $loi_hinh;
	public $loi_hinh_phu;
	
	public function ds_loai_hang_sp($ma_loai=0,$vt=-1,$limit=-1){
		$sql = "select * from nha_san_xuat where ma_loai = ? ";
		if($vt >=0 && $limit >= 0)
		{
			$sql .= "limit $vt,$limit";
		}
		$this->setQuery($sql);
		return $this->loadAllRows(array($ma_loai));
	}
	public function ds_hang(){
		$sql ="SELECT * from nha_san_xuat where ma_loai <>0";
		$this->setQuery($sql);
		return $this->loadAllRows();
	}
	
	public function loai_nsx($ma_nha_san_xuat){
		$sql = "select ten_nha_san_xuat from nha_san_xuat where ma_nha_san_xuat = ?";
		$this->setQuery($sql);
		return $this->loadRow(array($ma_nha_san_xuat))->ten_nha_san_xuat;
	}
	
	public function xac_minh_loai_co_ton_tai($ma_loai){
		$sql ="select * from nha_san_xuat where ma_nha_san_xuat = ? and ma_loai = 0";
		$this->setQuery($sql);
		$arr = $this->loadRow(array($ma_loai));
		if(!empty($arr))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	public function ten_hangsx_da_co_khi_them($ten,$ma_loai){
		$sql = "select * from nha_san_xuat where ma_loai=? ";
		$this->setQuery($sql);
		$arr = $this->loadAllRows(array($ma_loai));
		$arr_ten = array();
		foreach($arr as $i)
		{
			$ten_hang = trim(strtolower($i->ten_nha_san_xuat));
			$arr_ten[] = $ten_hang;
		}
		if(!in_array(trim(strtolower($ten)),$arr_ten))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	public function ten_hangsx_da_co_khi_sua($ten,$ten_nha_san_xuat,$ma_loai){
		$sql = "select * from nha_san_xuat where ma_loai=? ";
		$this->setQuery($sql);
		$arr = $this->loadAllRows(array($ma_loai));
		$arr_ten = array();
		foreach($arr as $i)
		{
			if(trim(strtolower($i->ten_nha_san_xuat)) != trim(strtolower($ten_nha_san_xuat)))
			{
				$ten_hang = trim(strtolower($i->ten_nha_san_xuat));
				$arr_ten[] = $ten_hang;
			}
		}
		if(!in_array(trim(strtolower($ten)),$arr_ten))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	public function them_hang_sx(){
		if(isset($_POST['btn_cap_nhat_hangsx']))
		{
			$insert = true;
			if(trim($_POST['ten_nha_san_xuat']) == '' ||trim($_POST['ten_nha_san_xuat']) == ' ')
			{
				$insert =false;
				$this->loi_cap_nhat_hang = 'Enter publisher name';
			}
			else if(!$this->ten_hangsx_da_co_khi_them($_POST['ten_nha_san_xuat'],$_POST['loai_sp']))
			{
				$insert = false ;
				$this->loi_cap_nhat_hang = 'Publisher name has already exists';
			}
			
			if(isset($_FILES['logo']) && $_FILES['logo']['error'] ==0)
			{
				$mang_ten_hinh = explode('.',$_FILES['logo']['name']);
				$type_hinh = end($mang_ten_hinh);
				$maxsize = 1*1024*1024;
				$list_file_type = array('jpg','png','bmp','jpeg');
				if(in_array($type_hinh,$list_file_type))
				{
					if($_FILES['logo']['size'] <= $maxsize)
					{
						$logo = time().$_FILES['logo']['name'];
						$up_hinh = move_uploaded_file($_FILES['logo']['tmp_name'],'../assets/images/logos/'.$logo);
						if($up_hinh){
							$this->loi_up_hinh = '';
						}
						else
						{
							$this->loi_up_hinh = 'Error to load image';
							$insert = false;
						}
					}
					else
					{
						$this->loi_up_hinh = 'Image size has exceeded 1MB';
						$insert = false;
					}
				}
				else
				{
					$this->loi_up_hinh = 'Incorrect format';
					$insert = false;
				}
			}
			else
			{
				$logo = 'hinh_dang_cn.jpg';
			}
			
			if($insert)
			{
				$sql = "insert into nha_san_xuat values(NULL,?,?,?) ";
				$param = array($_POST['ten_nha_san_xuat'],$logo,$_POST['loai_sp']);
				$this->setQuery($sql);
				$action = $this->execute($param);
				if($action)
				{
					$_SESSION['them_hangsx'] = 'Insert successfully';
				}
				else
				{
					$_SESSION['them_hangsx'] = 'Error! Please try again';
				}
				header('location: ds_hang.php?ma_loai='.$_POST['loai_sp']);
			}
		}
	}
	
	public function edit_hang_sx($ma_nha_san_xuat,$ten_nha_san_xuat,$logo_hien_tai){
		if(isset($_POST['btn_cap_nhat_hangsx']))
		{
			$update = true;
			if(trim($_POST['ten_nha_san_xuat']) == '' ||trim($_POST['ten_nha_san_xuat']) == ' ')
			{
				$update =false;
				$this->loi_cap_nhat_hang = 'Enter publisher name';
			}
			else if(!$this->ten_hangsx_da_co_khi_sua($_POST['ten_nha_san_xuat'],$ten_nha_san_xuat,$_POST['loai_sp']))
			{
				$update = false ;
				$this->loi_cap_nhat_hang = 'This publisher name already exists';
			}
			
			if(isset($_FILES['logo']) && $_FILES['logo']['error'] ==0)
			{
				$mang_ten_hinh = explode('.',$_FILES['logo']['name']);
				$type_hinh = end($mang_ten_hinh);
				$maxsize = 1*1024*1024;
				$list_file_type = array('jpg','png','bmp','jepg');
				if(in_array($type_hinh,$list_file_type))
				{
					if($_FILES['logo']['size'] <= $maxsize)
					{
						$logo = time().$_FILES['logo']['name'];
						$up_hinh = move_uploaded_file($_FILES['logo']['tmp_name'],'../assets/images/logos/'.$logo);
						if($up_hinh){
							$this->loi_up_hinh = '';
						}
						else
						{
							$this->loi_up_hinh = 'Error to load image';
							$update = false;
						}
					}
					else
					{
						$this->loi_up_hinhh = 'Image size has exceeded 1MB';
						$update = false;
					}
				}
				else
				{
					$this->loi_up_hinh = 'Incorrect format';
					$update = false;
				}
			}
			else
			{
				$logo = $logo_hien_tai;
			}
			
			if($update)
			{
				$sql = "update nha_san_xuat set ten_nha_san_xuat=? ,logo=?, ma_loai=? where ma_nha_san_xuat =? ";
				$param = array($_POST['ten_nha_san_xuat'],$logo,$_POST['loai_sp'],$ma_nha_san_xuat);
				$this->setQuery($sql);
				$action = $this->execute($param);
				if($action)
				{
					setcookie('sua_hangsx','Update successfully',time() + 20);
				}
				else
				{
					setcookie('sua_hangsx','Error! Please try again ',time() + 20);
				}
				header('location: '.$_SERVER['PHP_SELF'].'?'.$_SERVER['QUERY_STRING']);
			}
		}
	}
	
	public function them_loai_sp(){
		if(isset($_POST['btn_cap_nhat_loai_sp']))
		{
			$insert = true;
			if(trim($_POST['ten_nha_san_xuat']) == '' ||trim($_POST['ten_nha_san_xuat']) == ' ')
			{
				$insert =false;
				$this->loi_cap_nhat_hang = 'Enter type name';
			}
			else if(!$this->ten_hangsx_da_co_khi_them($_POST['ten_nha_san_xuat'],0))
			{
				$insert = false ;
				$this->loi_cap_nhat_hang = 'This type name already exists';
			}
			
			if(isset($_FILES['logo']) && $_FILES['logo']['error'] ==0)
			{
				$mang_ten_hinh = explode('.',$_FILES['logo']['name']);
				$type_hinh = end($mang_ten_hinh);
				$maxsize = 1*1024*1024;
				$list_file_type = array('jpg','png','bmp','jepg');
				if(in_array($type_hinh,$list_file_type))
				{
					if($_FILES['logo']['size'] <= $maxsize)
					{
						$logo = time().$_FILES['logo']['name'];
						$up_hinh = move_uploaded_file($_FILES['logo']['tmp_name'],'../assets/images/logos/'.$logo);
						if($up_hinh){
							$this->loi_up_hinh = '';
						}
						else
						{
							$this->loi_up_hinh = 'Error to load image';
							$insert = false;
						}
					}
					else
					{
						$this->loi_up_hinhh = 'Image size has exceeded 1MB';
						$insert = false;
					}
				}
				else
				{
					$this->loi_up_hinh = 'Incorrect format';
					$insert = false;
				}
			}
			else
			{
				$logo = 'hinh_dang_cn.jpg';
			}
			
			if($insert)
			{
				$sql = "insert into nha_san_xuat values(NULL,?,?,0) ";
				$param = array($_POST['ten_nha_san_xuat'],$logo);
				$this->setQuery($sql);
				$action = $this->execute($param);
				if($action)
				{
					$_SESSION['them_loaisp'] = 'Insert successfully';
				}
				else
				{
					$_SESSION['them_loaisp'] = 'Error! Please try again';
				}
				header('location: ds_loaisp.php');
			}
		}
	}
	
	public function sua_loaisp($ma_loai,$ten_nha_san_xuat,$logo_hien_tai){
		if(isset($_POST['btn_cap_nhat_loai_sp']))
		{
			$update = true;
			if(trim($_POST['ten_nha_san_xuat']) == '' ||trim($_POST['ten_nha_san_xuat']) == ' ')
			{
				$update =false;
				$this->loi_cap_nhat_hang = 'Enter type name';
			}
			else if(!$this->ten_hangsx_da_co_khi_sua($_POST['ten_nha_san_xuat'],$ten_nha_san_xuat,0))
			{
				$update = false ;
				$this->loi_cap_nhat_hang = 'This publisher name already exists';
			}
			
			if(isset($_FILES['logo']) && $_FILES['logo']['error'] ==0)
			{
				$mang_ten_hinh = explode('.',$_FILES['logo']['name']);
				$type_hinh = end($mang_ten_hinh);
				$maxsize = 1*1024*1024;
				$list_file_type = array('jpg','png','bmp','jepg');
				if(in_array($type_hinh,$list_file_type))
				{
					if($_FILES['logo']['size'] <= $maxsize)
					{
						$logo = time().$_FILES['logo']['name'];
						$up_hinh = move_uploaded_file($_FILES['logo']['tmp_name'],'../assets/images/logos/'.$logo);
						if($up_hinh){
							$this->loi_up_hinh = '';
						}
						else
						{
							$this->loi_up_hinh = 'Error to load image';
							$update = false;
						}
					}
					else
					{
						$this->loi_up_hinhh = 'Image size has exceeded 1MB';
						$update = false;
					}
				}
				else
				{
					$this->loi_up_hinh = 'Incorrect format';
					$update = false;
				}
			}
			else
			{
				$logo = $logo_hien_tai;
			}
			
			if($update)
			{
				$sql = "update nha_san_xuat set ten_nha_san_xuat=? ,logo=?, ma_loai=? where ma_nha_san_xuat =? ";
				$param = array($_POST['ten_nha_san_xuat'],$logo,0,$ma_loai);
				$this->setQuery($sql);
				$action = $this->execute($param);
				if($action)
				{
					setcookie('sua_loaisp','Update successfully',time() + 20);
				}
				else
				{
					setcookie('sua_loaisp','Error! Please try again',time() + 20);
				}
				header('location: '.$_SERVER['PHP_SELF'].'?'.$_SERVER['QUERY_STRING']);
			}
		}
	}
	
	public function sua_san_pham($ma_loai,$ma_nha_san_xuat,$ten_san_pham,$mo_ta, $tom_tat_thong_so, $hinh, $don_gia, $km, $so_luong, $ma_san_pham){
		$sql = "Update san_pham set ma_loai=?,ma_nha_san_xuat = ?,ten_san_pham=?, mo_ta=?, tom_tat_thong_so=?, hinh=?, don_gia=?, khuyen_mai=?, so_luong=? where ma_san_pham =? ";
		$this->setQuery($sql);
		$param = array($ma_loai, $ma_nha_san_xuat,$ten_san_pham, $mo_ta, $tom_tat_thong_so, $hinh, $don_gia,$km, $so_luong, $ma_san_pham);
		$this->execute($param);
	}
	
	public function ma_loai($ma_nha_san_xuat){
		$sql ="select ma_loai from nha_san_xuat where ma_nha_san_xuat = ?";
		$this->setQuery($sql);
		return $this->loadRow(array($ma_nha_san_xuat))->ma_loai;
	}
	
	public function xl_sua_sp($ma_san_pham,$hinh_cu){
		
		if(isset($_POST['btn_them_sp']))
		{
			$update = true;
			$ma_san_pham = $_GET['ma_san_pham'];
			if(strlen(trim($_POST['ten_san_pham'])) <6 || strlen(trim($_POST['ten_san_pham'])) >100)
		  	{
			  $update =false;
		  	}

			if(strlen(trim($_POST['mo_ta_chi_tiet'])) == 0 )
		  	{
			  $update =false;
		  	}
			if(strlen(trim($_POST['tom_tat_thong_so'])) ==0 )
		  	{
			  $update =false;
		  	}
			if($_POST['don_gia'] <= 0)
			{
				$update =false;
			}
			if($_POST['km'] < 0 || $_POST['km'] == '')
			{
				$update = false;
			}
			if($_POST['so_luong'] < 0 || $_POST['so_luong'] == '')
			{
				$update = false;
			}
			
			if(isset($_FILES['hinh_sp']) && $_FILES['hinh_sp']['error'] ==0)
			{
				$mang_ten_hinh = explode('.',$_FILES['hinh_sp']['name']);
				$type_hinh = end($mang_ten_hinh);
				$maxsize = 1*1024*1024;
				$list_file_type = array('jpg','png','bmp','jepg');
				if(in_array($type_hinh,$list_file_type))
				{
					if($_FILES['hinh_sp']['size'] <= $maxsize)
					{
						$hinh = time().$_FILES['hinh_sp']['name'];
						$up_hinh = move_uploaded_file($_FILES['hinh_sp']['tmp_name'],'../assets/images/products/'.$hinh);
						if($up_hinh){
							$this->loi_hinh = '';
						}
						else
						{
							$this->loi_hinh = 'Error to load image';
						}
					}
					else
					{
						$this->loi_hinh = 'Image size has exceeded 1MB';
						$update = false;
					}
				}
				else
				{
					$this->loi_hinh = 'Incorrect format';
					$update = false;
				}
			}
			else
			{
				$hinh = $hinh_cu;
			}
			
			include_once 'm_upload_hinh.php';
			$m_upload_hinh = new M_upload_hinh();
			if(isset($_FILES['hinh_phu']) &&$m_upload_hinh->img_error('hinh_phu'))
			{
				if($m_upload_hinh->img_type('hinh_phu'))
				{
					if($m_upload_hinh->img_size('hinh_phu'))
					{
						$hinh_phu = array();
						foreach($_FILES['hinh_phu']['name'] as $k => $name)
						{
							$hinh_x = time().'_'.$name;
							$hinh_phu[] = $hinh_x;
							$up = move_uploaded_file($_FILES['hinh_phu']['tmp_name'][$k],'../assets/images/products/'.$hinh_x);
							if(!$up)
							{
								$update = false;
								$this->loi_hinh_phu = 'Error while loading sub-image';
								break;
							}
						}
					}
					else
					{
						$this->loi_hinh_phu = 'Sub-image size exceeds the limit';
						$update = false;
					}
				}
				else
				{
					$this->loi_hinh_phu = 'Incorrect sub-image format';
					$update = false;
				}
			}
			
			if($update)
			{
				$this->sua_san_pham($this->ma_loai($_POST['ma_nha_san_xuat']), $_POST['ma_nha_san_xuat'], $_POST['ten_san_pham'], $_POST['mo_ta_chi_tiet'], $_POST['tom_tat_thong_so'], $hinh, $_POST['don_gia'], $_POST['km'],$_POST['so_luong'], $ma_san_pham);
				if($this->loi_hinh_phu == NULL)
				{
					$this->them_hinh_phu($ma_san_pham,$hinh_phu);
				}
				setcookie('sua_sp_xong','Update successfully',time()+20*60);
				header('location: cap_nhat_san_pham.php?ma_san_pham='.$ma_san_pham);
			}
		}
	}
		
	public function sua_ma_loai($val,$gt_cu){
		if(isset($_POST['btn_sua_sp']))
		{
			if($_POST['ma_loai'] == $val)
				return 'selected';
			else
				return '';
		}
		else
		{
			if($gt_cu == $val)
				return 'selected';
			else
				return '';
		}
	}
	public function hinh_chi_tiet($ma_san_pham){
		$sql = "select * from hinh_chi_tiet where ma_san_pham = ?";
		$this->setQuery($sql);
		return $this->loadAllRows(array($ma_san_pham));
	}
	
	public function last_id_sp(){
		$sql = "select ma_san_pham from san_pham order by ma_san_pham desc limit 0,1";
		$this->setQuery($sql);
		return $this->loadRow()->ma_san_pham;
	}
	
	public function them_hinh_phu($ma_san_pham,$hinh_phu){
		foreach($hinh_phu as $name)
		{
			$sql = "Insert into hinh_chi_tiet VALUES (NULL, ?, ?)";
			$param = array($ma_san_pham,$name);
			$this->setQuery($sql);
			$this->execute($param);
		}
	}
	
	public function xoa_hinh_chi_tiet($khoa_chinh){
		$sql = "delete from hinh_chi_tiet where khoa_chinh IN($khoa_chinh) ";
		$this->setQuery($sql);
		$this->execute();
	}
	
	public function them_san_pham($ma_loai, $ma_nha_san_xuat, $ten_san_pham, $mo_ta_chi_tiet, $tom_tat_thong_so, $hinh, $don_gia, $km,$so_luong){
		$sql = "INSERT INTO san_pham VALUES (NULL, ?, ?, ?, ?, ?, ?, ?,?,0,0,?,?)";
		$param = array($ma_loai, $ma_nha_san_xuat, trim($ten_san_pham), $mo_ta_chi_tiet, $tom_tat_thong_so, $hinh, $don_gia, $km, date('Y-d-m',time()),$so_luong);
		$this->setQuery($sql);
		$this->execute($param);
	}
	
	public function xl_them_sp(){
		
		if(isset($_POST['btn_them_sp']))
		{
			$insert = true;
			
			if(strlen(trim($_POST['ten_san_pham'])) ==0)
		  	{
			  $insert =false;
		  	}

			if(strlen(trim($_POST['mo_ta_chi_tiet'])) ==0 )
		  	{
			  $insert =false;
		  	}
			if(strlen(trim($_POST['tom_tat_thong_so'])) ==0 )
		  	{
			  $insert =false;
		  	}
			if($_POST['don_gia'] <= 0)
			{
				$insert =false;
			}
			if($_POST['km'] < 0 || $_POST['km'] == '')
			{
				$insert = false;
			}
			if($_POST['so_luong'] < 0 || $_POST['so_luong'] == '')
			{
				$insert = false;
			}
			
			if(isset($_FILES['hinh_sp']) && $_FILES['hinh_sp']['error'] ==0)
			{
				$mang_ten_hinh = explode('.',$_FILES['hinh_sp']['name']);
				$type_hinh = end($mang_ten_hinh);
				$maxsize = 1*1024*1024;
				$list_file_type = array('jpg','png','bmp','jepg');
				if(in_array($type_hinh,$list_file_type))
				{
					if($_FILES['hinh_sp']['size'] <= $maxsize)
					{
						$hinh = time().$_FILES['hinh_sp']['name'];
						$up_hinh = move_uploaded_file($_FILES['hinh_sp']['tmp_name'],'../assets/images/products/'.$hinh);
						if($up_hinh){
							$this->loi_hinh = '';
						}
						else
						{
							$this->loi_hinh = 'Error to load image';
							$insert = false;
						}
					}
					else
					{
						$this->loi_hinh = 'Image size has exceeded 1MB';
						$insert = false;
					}
				}
				else
				{
					$this->loi_hinh = 'Incorrect format image';
					$insert = false;
				}
			}
			else
			{
				$hinh = 'hinh_dang_cn.jpg';
			}
			
			include_once 'm_upload_hinh.php';
			$m_upload_hinh = new M_upload_hinh();
			if(isset($_FILES['hinh_phu']) &&$m_upload_hinh->img_error('hinh_phu'))
			{
				if($m_upload_hinh->img_type('hinh_phu'))
				{
					if($m_upload_hinh->img_size('hinh_phu'))
					{
						$hinh_phu = array();
						foreach($_FILES['hinh_phu']['name'] as $k => $name)
						{
							$hinh_x = time().'_'.$name;
							$hinh_phu[] = $hinh_x;
							$up = move_uploaded_file($_FILES['hinh_phu']['tmp_name'][$k],'../assets/images/products/'.$hinh_x);
							if(!$up)
							{
								$insert = false;
								$this->loi_hinh_phu = 'Error to load image';
								break;
							}
						}
					}
					else
					{
						$this->loi_hinh_phu = 'Sub-image size has exceeded limit';
						$insert = false;
					}
				}
				else
				{
					$this->loi_hinh_phu = 'Incorrect sub-image format';
					$insert = false;
				}
			}
			
			if($insert)
			{
				$this->them_san_pham($this->ma_loai($_POST['ma_nha_san_xuat']),$_POST['ma_nha_san_xuat'],$_POST['ten_san_pham'],$_POST['mo_ta_chi_tiet'],$_POST['tom_tat_thong_so'],$hinh,$_POST['don_gia'],$_POST['km'],$_POST['so_luong']);
				if($this->loi_hinh_phu == NULL)
				{
					$last_id_sp = $this->last_id_sp();
					$this->them_hinh_phu($last_id_sp,$hinh_phu);
				}
				$_SESSION['them_sp_xong'] = 'Insert successfully';
				header('location: san_pham.php');
			}
		}
	}
	
	public function them_tag(){
		if(isset($_POST['btn_them_tag']))
		{
			$insert = true;
			include_once 'm_common.php';
			$m_common = new M_common();
			$ten_da_ton_tai = $m_common->ten_da_ton_tai('tag','tag_name',$_POST['tag_name']);
			
			if(trim(strtolower($_POST['tag_name'])) =='')
			{
				$insert = false;
				$this->loi_cap_nhat_hang = 'Please enter tag name';
			}
			else if($ten_da_ton_tai)
			{
				$insert = false;
				$this->loi_cap_nhat_hang = 'Name tag has exists';
			}
			
			if($insert)
			{
				$sql = "insert into tag values(?,NULL)";
				$param = array(trim(strtolower($_POST['tag_name'])));
				$this->setQuery($sql);
				$this->execute($param);
				setcookie('them_tag_xong','Insert tag successfully',time() +60);
				header('location: ds_tag.php');
			}
		}
	}
	
	public function danh_gia_gr_by_id($vt=-1,$limit=-1){
		$sql = "SELECT dg.ma_san_pham,avg(diem) dtb,ten_san_pham FROM danh_gia dg, san_pham sp where dg.ma_san_pham= sp.ma_san_pham group by ma_san_pham ";
		if($vt>=01 && $limit>=0)
		{
			$sql .="limit $vt,$limit";
		}
		$this->setQuery($sql);
		return $this->loadAllRows();
	}
	public function danh_gia_ct($ma_san_pham){
		$sql = "SELECT ma_danh_gia, d.ma_san_pham, d.ma_nguoi_dung, diem, ngay,ten_dang_nhap FROM danh_gia d, nguoi_dung n,san_pham s where d.ma_nguoi_dung = n.ma_nguoi_dung and d.ma_san_pham =s.ma_san_pham and d.ma_san_pham = ?";
		$param = array($ma_san_pham);
		$this->setQuery($sql);
		return $this->loadAllRows($param);
	}
}
?>
