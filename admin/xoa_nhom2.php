<?php
session_start();
if(!isset($_SESSION['ad_login']) || $_SESSION['ad_login'] != true)
{
	header('location: login.php');
	die();
}

if(!isset($_GET['id_val']) || !isset($_GET['id_val2']) ||!isset($_SESSION['ad_login']) || !isset($_GET['table']) || !isset($_GET['table2']) || !isset($_GET['table3']) || !isset($_GET['id']) || !isset($_GET['id2']) || !isset($_GET['link']) || !isset($_GET['ten']))
{
	header('location: .');
}
else
{
	include 'models/m_common.php';
	$m_common = new M_common();
	$delete_nhom2 = $m_common->xoa($_GET['table'],$_GET['id'],$_GET['id_val']);
	
	$delete_nhom = $m_common->xoa($_GET['table2'],$_GET['id2'],$_GET['id_val2']);
	$delete_phan_tu = $m_common->xoa($_GET['table3'],$_GET['id2'],$_GET['id_val2']);
	
	if($delete_nhom2 && $delete_nhom && $delete_phan_tu)
	{
		$_SESSION['kq_xoa_nhom2'] = 'Delete '.$_GET['ten'].' successfully';
	}
	else
	{
		$_SESSION['kq_xoa_nhom2'] = 'Delete '.$_GET['ten'].' failed';
	}
	header('location: '.$_GET['link']);
}
?>
