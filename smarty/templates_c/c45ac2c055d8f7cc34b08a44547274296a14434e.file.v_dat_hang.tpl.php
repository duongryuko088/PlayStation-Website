<?php /* Smarty version Smarty-3.1.18, created on 2021-12-20 11:15:20
         compiled from "views\gio_hang\v_dat_hang.tpl" */ ?>
<?php /*%%SmartyHeaderCode:135358714161c057b8234fa8-27552308%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c45ac2c055d8f7cc34b08a44547274296a14434e' => 
    array (
      0 => 'views\\gio_hang\\v_dat_hang.tpl',
      1 => 1638460569,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '135358714161c057b8234fa8-27552308',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'm_xl_chung' => 0,
    'm_gio_hang' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_61c057b825b123_61064694',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_61c057b825b123_61064694')) {function content_61c057b825b123_61064694($_smarty_tpl) {?><?php if (isset($_SESSION['gio_hang'])) {?>
<div class="track-order-page inner-bottom-sm">
			<div class="row">
				<div class="col-md-12">
	<h2 style="font-family:Tahoma, Geneva, sans-serif; font-weight:bold">Order</h2>
	
	<form method="post" class="register-form outer-top-xs" role="form" name="frm_dat_hang">
		<div class="form-group">
		    <label class="info-title" for="exampleOrderId1">Full name</label>
		    <input name="ho_ten" required="required" type="text" class="form-control unicase-form-control text-input" id="exampleOrderId1" >
		</div>
        <div class="form-group">
		    <label class="info-title" for="exampleOrderId1">Gender &nbsp;&nbsp;</label>
		    <label>Male &nbsp;<input type="radio" checked="checked" name="gender" value="1"/></label>&nbsp;&nbsp; 
            <label>Female &nbsp;<input type="radio" name="gender" value="0"/></label>
		</div>
        <div class="form-group">
		    <label class="info-title" for="exampleOrderId1">Address</label>
		    <input name="dia_chi" required="required" type="text" class="form-control unicase-form-control text-input" id="exampleOrderIdc" >
		</div>
        
        <div class="form-group">
		    <label class="info-title" for="exampleOrderId1">Phone</label>
		    <input name="dien_thoai" required="required" type="text" class="form-control unicase-form-control text-input" id="exampleOrderIdt" >
            <?php if (isset($_POST['dat_hang'])&&!$_smarty_tpl->tpl_vars['m_xl_chung']->value->check_number($_POST['dien_thoai'])) {?>
            <p style="font-style:italic; color:#F00">Invalid phone number</p>
            <?php }?>
		</div>
        
	  	<div class="form-group">
		    <label class="info-title" for="exampleBillingEmail1">Email</label>
		    <input name="email" required="required" type="email" class="form-control unicase-form-control text-input" id="exampleBillingEmail1" >
		</div>
	  	<button name="dat_hang" type="submit" class="btn-upper btn btn-primary checkout-page-button">Order</button>
	</form>	
</div>			</div><!-- /.row -->
		</div>
<?php } else { ?>
	<?php if (isset($_COOKIE['dat_hang_true'])) {?>
    <?php echo $_smarty_tpl->tpl_vars['m_gio_hang']->value->xoa_cook_dat_hang();?>

	<h3>Thank you for choosing us</h3>
	<?php } else { ?>
    <h3>Your order is not finished</h3>
	<?php }?>
<?php }?><?php }} ?>
