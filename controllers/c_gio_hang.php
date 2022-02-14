<?php
class C_gio_hang{
	public function gio_hang(){
		include_once 'controllers/models_common.php';
		
		$description = 'Ultimate Store';
		$meta_key = 'Ultimate Store';
		$dieu_huong = '<li class="active">Cart</li>';
		$page_cart = true;
		
		include_once 'controllers/smarty_common.php';
		
		$view = "views/gio_hang/v_gio_hang.tpl";
		$smarty->assign('title','Cart');
		$smarty->assign('description',$description);
		$smarty->assign('meta_key',$meta_key);
		
		$smarty->assign('dieu_huong',$dieu_huong);
		$smarty->assign('page_cart',$page_cart);
		$smarty->assign('view',$view);
		
		$smarty->hien_thi('gio_hang/layout.tpl');
	}
	public function dat_hang(){
		include_once 'controllers/models_common.php';
		include 'models/m_gio_hang.php';
		$m_gio_hang = new M_gio_hang();
		$description = 'Ultimate Store';
		$meta_key = 'Ultimate Store';
		$dieu_huong = '<li class="active">Order</li>';
		$m_gio_hang->xl_dat_hang();
		
		include_once 'controllers/smarty_common.php';
		
		$view = "views/gio_hang/v_dat_hang.tpl";
		$smarty->assign('title','Order');
		$smarty->assign('description',$description);
		$smarty->assign('meta_key',$meta_key);
		$smarty->assign('m_gio_hang',$m_gio_hang);
		$smarty->assign('dieu_huong',$dieu_huong);
		$smarty->assign('view',$view);
		
		$smarty->hien_thi('dat_hang/layout.tpl');
	}
}
?>