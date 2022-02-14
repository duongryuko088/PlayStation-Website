<?php /* Smarty version Smarty-3.1.18, created on 2021-12-07 15:53:46
         compiled from "views\user\v_forget_pass.tpl" */ ?>
<?php /*%%SmartyHeaderCode:192217198761af757a323427-16496038%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'adfd57ff580f8cb04e0cd7a67d01458e513e855b' => 
    array (
      0 => 'views\\user\\v_forget_pass.tpl',
      1 => 1638870709,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '192217198761af757a323427-16496038',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'm_nguoi_dung' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_61af757a350110_52902152',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_61af757a350110_52902152')) {function content_61af757a350110_52902152($_smarty_tpl) {?>
<div class="track-order-page inner-bottom-sm">
			<div class="row">
				<div class="col-md-12">
                
	<h2 style="font-family:Tahoma, Geneva, sans-serif; font-weight:bold">Forget password ?</h2>
	<?php if (isset($_POST['btn_xac_nhan'])) {?>
<?php echo $_smarty_tpl->tpl_vars['m_nguoi_dung']->value->loi_xac_nhan_email;?>

<?php }?>
<?php if (isset($_COOKIE['gui_lai_mk'])) {?>
<h3 style="color:#00F"><?php echo $_COOKIE['gui_lai_mk'];?>
</h3>
<?php echo $_smarty_tpl->tpl_vars['m_nguoi_dung']->value->xoa_cookie('gui_lai_mk');?>

<?php }?>
	<form method="post" class="register-form outer-top-xs" role="form">
	  	<div class="form-group">
		    <label class="info-title" for="exampleBillingEmail1">Please enter your Email</label>
		    <input name="email" type="email" class="form-control unicase-form-control text-input" id="exampleBillingEmail1" />
		</div>
	  	<button type="submit" class="btn-upper btn btn-primary checkout-page-button" name="btn_xac_nhan">Confirm</button>
	</form>	
</div>			</div><!-- /.row -->
		</div><?php }} ?>
