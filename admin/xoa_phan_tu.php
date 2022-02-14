<?php
session_start();
if(!isset($_SESSION['ad_login']) || $_SESSION['ad_login'] != true)
{
	header('location: login.php');
	die();
}
if(!isset($_GET['id_val']) || !isset($_SESSION['ad_login']) || !isset($_GET['table']) || !isset($_GET['id']) || !isset($_GET['link']) || !isset($_GET['ten']))
{
	header('location: .');
}
else
{
	include 'models/m_common.php';
	$m_common = new M_common();
	$delete = $m_common->xoa($_GET['table'],$_GET['id'],$_GET['id_val']);
	if($delete)
	{
		$_SESSION['kq_xoa'] = 'Delele '.$_GET['ten'].' successfully';
	}
	else
	{
		$_SESSION['kq_xoa'] = 'Delete '.$_GET['ten'].' failed';
	}
	header('location: '.$_GET['link']);
}
?>
