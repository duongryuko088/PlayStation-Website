<?php
session_start();
if(!isset($_SESSION['ad_login']) || $_SESSION['ad_login'] != true)
{
	header('location: login.php');
	die();
}

if(!isset($_GET['id_val']) || !isset($_SESSION['ad_login']) || !isset($_GET['table']) || !isset($_GET['table2']) || !isset($_GET['id']) || !isset($_GET['link']) || !isset($_GET['ten']))
{
	header('location: .');
}
else
{
	include 'models/m_common.php';
	$m_common = new M_common();
	$delete_hang = $m_common->xoa($_GET['table'],$_GET['id'],$_GET['id_val']);
	
	$delete_sp = $m_common->xoa($_GET['table2'],$_GET['id'],$_GET['id_val']);
	
	if($delete_hang && $delete_sp)
	{
		$_SESSION['kq_xoa_nhom'] = 'Delete '.$_GET['ten'].' successfully';
	}
	else
	{
		$_SESSION['kq_xoa_nhom'] = 'Delete '.$_GET['ten'].' failed';
	}
	header('location: '.$_GET['link']);
}
?>