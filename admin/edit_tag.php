<?php
@session_start();
if(isset($_GET['stt']) && isset($_GET['val']))
{
	$stt = $_GET['stt'];
	$val = "'".trim(strtolower($_GET['val']))."'";
	include 'models/m_common.php';
	$m_common = new M_common();
	$edit = $m_common->edit_single('tag','tag_name',$val,'stt',$stt);
	if($edit)
	{
		$_SESSION['edit'] = 'Change name successfully';
	}
	else
	{
		$_SESSION['edit'] = 'Error cannot change';
	}
	header('location: ds_tag.php');
}
else
{
	header('location: .');
}
?>