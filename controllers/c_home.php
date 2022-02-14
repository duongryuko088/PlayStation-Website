<?php
class C_home{
	public function homepage(){
		include 'controllers/models_common.php';
		$tag_list = $m_san_pham->tag_list();
		$danh_gia_cao = $m_san_pham->danh_gia_cao();
		$count_dg_cao = count($danh_gia_cao);
		$khuyen_mai_moi = $m_san_pham->khuyen_mai(0,6);
		$slider = $m_san_pham->slider();
		$sps_new = $m_san_pham->sp_new();
		$sp_hot = $m_san_pham->sp_hot(0,9);
		$description = 'Ultimate Store';
		$meta_key = 'Ultimate Store provides products for Playstation, particularly from DVD games to game consoles.';
		
		include 'models/m_tin_tuc.php';
		$m_tin_tuc = new M_tin_tuc();
		$ds_tin = $m_tin_tuc->ds_tin(0,6);
		
		include 'controllers/smarty_common.php';
		$title = 'Ultimate Store';
		$view= "views/v_home.tpl";
		$smarty->assign('danh_gia_cao',$danh_gia_cao);
		$smarty->assign('count_dg_cao',$count_dg_cao);
		$smarty->assign('tag_list',$tag_list);
		$smarty->assign('khuyen_mai_moi',$khuyen_mai_moi);
		$smarty->assign('sps_new',$sps_new);
		$smarty->assign('sp_hot',$sp_hot);
		$smarty->assign('ds_tin',$ds_tin);
		$smarty->assign('slider',$slider);
		$smarty->assign('title',$title);
		$smarty->assign('view',$view);
		$smarty->assign('description',$description);
		$smarty->assign('meta_key',$meta_key);
		$smarty->hien_thi("layout.tpl");
	}
}
?>