<?php /* Smarty version Smarty-3.1.18, created on 2021-12-02 17:04:40
         compiled from "views\lien_he\v_lien_he.tpl" */ ?>
<?php /*%%SmartyHeaderCode:251615a00626c887ef3-98730220%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '71735d7d6aa3fcbe3c121808841931870243c7a1' => 
    array (
      0 => 'views\\lien_he\\v_lien_he.tpl',
      1 => 1638460754,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '251615a00626c887ef3-98730220',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5a00626c889d65_07625733',
  'variables' => 
  array (
    'm_xl_chung' => 0,
    'm_nguoi_dung' => 0,
    'm_lien_he' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5a00626c889d65_07625733')) {function content_5a00626c889d65_07625733($_smarty_tpl) {?><?php if (!isset($_COOKIE['lien_he'])) {?>
<div class="track-order-page inner-bottom-sm">
			<div class="row">
				<div class="col-md-12">
	<h2 style="font-family:Tahoma, Geneva, sans-serif; font-weight:bold">Contact</h2>
	
	<form method="post" class="register-form outer-top-xs" role="form" name="frm_dat_hang">
		<div class="form-group">
		    <label class="info-title" for="exampleOrderId1">Full name</label>
		    <input name="ten_nguoi_gui" required="required" type="text" class="form-control unicase-form-control text-input" id="exampleOrderId1" value="<?php if (isset($_POST['btn_lien_he'])) {?><?php echo $_POST['ten_nguoi_gui'];?>
<?php }?>" >
		</div>
        <div class="form-group">
		    <label class="info-title" for="exampleOrderId1">Gender &nbsp;&nbsp;</label>
		    <label>Male &nbsp;<input type="radio" checked="checked" name="gender" value="0"/></label>&nbsp;&nbsp; 
            <label>Female &nbsp;<input type="radio" name="gender" value="1"/></label?<?php ?>>
		</div>
        
        <div class="form-group">
		    <label class="info-title" for="exampleOrderId1">Phone</label>
		    <input name="dien_thoai" required="required" type="text" class="form-control unicase-form-control text-input" id="exampleOrderIdt" value="<?php if (isset($_POST['btn_lien_he'])) {?><?php echo $_POST['dien_thoai'];?>
<?php }?>" >
            <?php if (isset($_POST['dat_hang'])&&!$_smarty_tpl->tpl_vars['m_xl_chung']->value->check_number($_POST['dien_thoai'])) {?>
            <p style="font-style:italic; color:#F00">Invalid phone number</p>
            <?php }?>
		</div>
        <?php if (isset($_POST['btn_lien_he'])&&(!is_numeric($_POST['dien_thoai'])||$_POST['dien_thoai']==''||!$_smarty_tpl->tpl_vars['m_nguoi_dung']->value->kiem_tra_so_nguyen($_POST['dien_thoai']))) {?>
      <div class="bao_loi_php">
        <div class="thanh-loi">Invalid phone number</div>
        <div class="clear"></div>
      </div>
     <?php }?>
	  	<div class="form-group">
		    <label class="info-title" for="exampleBillingEmail1">Email</label>
		    <input name="email" required="required" type="email" class="form-control unicase-form-control text-input" id="exampleBillingEmail1" value="<?php if (isset($_POST['btn_lien_he'])) {?><?php echo $_POST['email'];?>
<?php }?>" >
		</div>
        <div class="form-group">
		    <label class="info-title">Title</label>
		    <input name="tieu_de" required="required" type="text" class="form-control unicase-form-control text-input" value="<?php if (isset($_POST['btn_lien_he'])) {?><?php echo $_POST['tieu_de'];?>
<?php }?>" >
		</div>
        
        <div class="form-group">
		    <label class="info-title">Content:</label>
		    <div style="width:100%"><textarea style="width:100%" name="noi_dung" class="noi_dung_lien_he" rows="12"><?php if (isset($_POST['btn_lien_he'])) {?><?php echo $_POST['noi_dung'];?>
<?php }?></textarea></div>
		</div>
        
        
	  	<button name="btn_lien_he" type="submit" class="btn-upper btn btn-primary checkout-page-button">Submit</button>
	</form>	
</div>			</div><!-- /.row -->
		</div>
<?php } else { ?>
<h2 style="color:#00F; text-align:center">Thank you for feedback</h2>
<?php echo $_smarty_tpl->tpl_vars['m_lien_he']->value->xoa_cook_lien_he();?>

<?php }?><?php }} ?>
