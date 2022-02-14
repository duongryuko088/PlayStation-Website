<?php /* Smarty version Smarty-3.1.18, created on 2021-12-10 10:42:01
         compiled from "views\bai_viet\v_news.tpl" */ ?>
<?php /*%%SmartyHeaderCode:79540640061b320e974f560-28651585%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '17c61107df5d2b318c82d92104278e24a0d1f22e' => 
    array (
      0 => 'views\\bai_viet\\v_news.tpl',
      1 => 1638460330,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '79540640061b320e974f560-28651585',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'ds_tin' => 0,
    'tin' => 0,
    'm_nguoi_dung' => 0,
    'lst' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_61b320e9b3ae14_79214444',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_61b320e9b3ae14_79214444')) {function content_61b320e9b3ae14_79214444($_smarty_tpl) {?><div class="row  outer-bottom-vs">
			<div class="blog-page">
				<div class="col-md-9">
                <?php  $_smarty_tpl->tpl_vars['tin'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['tin']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['ds_tin']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['tin']->key => $_smarty_tpl->tpl_vars['tin']->value) {
$_smarty_tpl->tpl_vars['tin']->_loop = true;
?>
                	<div class="blog-post outer-top-bd  wow fadeInUp">
	<a href="bt_<?php echo thu_vien::bo_dau($_smarty_tpl->tpl_vars['tin']->value->ten_bai_viet);?>
.<?php echo $_smarty_tpl->tpl_vars['tin']->value->ma_bai_viet;?>
.html"><img class="img-responsive" src="assets/images/news/<?php echo $_smarty_tpl->tpl_vars['tin']->value->hinh;?>
" alt=""></a>
	<h1><a href="bt_<?php echo thu_vien::bo_dau($_smarty_tpl->tpl_vars['tin']->value->ten_bai_viet);?>
.<?php echo $_smarty_tpl->tpl_vars['tin']->value->ma_bai_viet;?>
.html"><?php echo $_smarty_tpl->tpl_vars['tin']->value->ten_bai_viet;?>
</a></h1>
	<span class="author"><?php if (!empty($_smarty_tpl->tpl_vars['m_nguoi_dung']->value->nguoi_dung($_smarty_tpl->tpl_vars['tin']->value->ma_nguoi_dung))) {?><?php echo $_smarty_tpl->tpl_vars['m_nguoi_dung']->value->nguoi_dung($_smarty_tpl->tpl_vars['tin']->value->ma_nguoi_dung)->ten_dang_nhap;?>
<?php } else { ?>user<?php }?></span>
	<span class="review">View: <?php echo $_smarty_tpl->tpl_vars['tin']->value->luot_xem;?>
</span>
	<span class="date-time"><?php echo date('d-m-Y',strtotime($_smarty_tpl->tpl_vars['tin']->value->ngay_dang));?>
</span>
	<p><?php echo $_smarty_tpl->tpl_vars['tin']->value->noi_dung_tom_tat;?>
</p>
	<a href="bt_<?php echo thu_vien::bo_dau($_smarty_tpl->tpl_vars['tin']->value->ten_bai_viet);?>
.<?php echo $_smarty_tpl->tpl_vars['tin']->value->ma_bai_viet;?>
.html" class="btn btn-upper btn-primary read-more">Read</a>
</div>
				<?php } ?>
<div class="pages_list"><?php echo $_smarty_tpl->tpl_vars['lst']->value;?>
</div><!-- /.filters-container -->
</div>
				<?php echo $_smarty_tpl->getSubTemplate ("views/bai_viet/v_sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

			</div>
		</div>
<script>
var link_a =  $(location).attr('pathname');
if(link_a.indexOf("/page/") != -1)
{
	var link_g =link_a.substring(0,link_a.indexOf('/page/'));
	for(var i = 0; i<$('.pages_list a').length;i++)
	{
		if($('.pages_list a').eq(i).attr('href').indexOf('page')!=-1)
		{
			var arr = $('.pages_list a').eq(i).attr('href').split("page=");
			var tham_so = parseFloat(arr[1]);
			$('.pages_list a').eq(i).attr('href',link_g+'/page/'+tham_so)
		}
		else
		{
			$('.pages_list a').eq(i).attr('href',link_g);
		}
	
	}
}
else
{
	for(var i = 0; i<$('.pages_list a').length;i++)
	{
		var arr = $('.pages_list a').eq(i).attr('href').split("page=");
		var tham_so = arr[1];
		$('.pages_list a').eq(i).attr('href',link_a+'/page/'+tham_so)
	
	}

}
</script><?php }} ?>
