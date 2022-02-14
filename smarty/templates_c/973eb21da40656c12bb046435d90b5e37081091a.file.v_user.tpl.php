<?php /* Smarty version Smarty-3.1.18, created on 2021-12-07 14:52:58
         compiled from "views\user\v_user.tpl" */ ?>
<?php /*%%SmartyHeaderCode:139821370561af673af00277-81866992%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '973eb21da40656c12bb046435d90b5e37081091a' => 
    array (
      0 => 'views\\user\\v_user.tpl',
      1 => 1638872134,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '139821370561af673af00277-81866992',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'm_nguoi_dung' => 0,
    'i' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_61af673af240d8_50623326',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_61af673af240d8_50623326')) {function content_61af673af240d8_50623326($_smarty_tpl) {?><div class="sign-in-page inner-bottom-sm">
			<div class="row">
				<!-- Sign-in -->			
<div class="col-md-6 col-sm-6 sign-in">
	<h4 style="font-family:Tahoma, Geneva, sans-serif; font-weight:bold">Log In</h4>
<?php echo $_smarty_tpl->tpl_vars['m_nguoi_dung']->value->remove_session_login_false();?>

	<form method="post" name="frm_login" class="register-form outer-top-xs" role="form">
		<div class="form-group">
		    <label class="info-title" for="exampleInputEmail1">Username / Email <span>*</span></label>
		    <input name="ten_dang_nhap" type="text" class="form-control unicase-form-control text-input" id="exampleInputEmail1" >
		</div>
	  	<div class="form-group">
		    <label class="info-title" for="exampleInputPassword1">Password<span>*</span></label>
		    <input name="mat_khau" type="password" class="form-control unicase-form-control text-input" id="exampleInputPassword1" >
		</div>
		<div class="radio outer-xs">
		  	<label>
		    	<input type="radio" name="remember" id="optionsRadios2" value="Có">Remember me!
		  	</label>
		  	<a href="forget_pass.php" class="forgot-password pull-right">Forget password ?</a>
		</div>
	  	<button name="btn_dn" type="submit" class="btn-upper btn btn-primary checkout-page-button">Log in</button>
	</form>					
</div>
<!-- Sign-in -->

<!-- create a new account -->
<div class="col-md-6 col-sm-6 create-new-account">
	<h4 style="font-family:Tahoma, Geneva, sans-serif; font-weight:bold">Sign Up</h4>
    
	<p class="text title-tag-line">Create an account now</p>
    <?php echo $_smarty_tpl->tpl_vars['m_nguoi_dung']->value->error_trung_user();?>

	<form method="post" name="frm_dangky" class="register-form outer-top-xs" role="form">
    	<div class="form-group">
		    <label class="info-title">Fullname<span>*</span></label>
		    <input name="ho_ten" type="text" class="form-control unicase-form-control text-input" 
            value="<?php if (isset($_POST['btn_dk'])) {?><?php echo $_POST['ho_ten'];?>
<?php }?>"/>
		</div>
        	<?php if (isset($_POST['btn_dk'])&&!$_smarty_tpl->tpl_vars['m_nguoi_dung']->value->test_error($_POST['ho_ten'],6,32,'btn_dk')) {?>
            <div class="bao_loi_php">
              <div class="thanh-loi">Name must be at least 6 characters and up to 32 characters</div>
              <div class="clear"></div>
            </div>
            <?php }?>
    	<div class="form-group">
		    <label class="info-title">Username<span>*</span></label>
		    <input name="ten_dang_nhap" type="text" class="form-control unicase-form-control text-input" 
            value="<?php if (isset($_POST['btn_dk'])) {?><?php echo $_POST['ten_dang_nhap'];?>
<?php }?>"/>
		</div>
            <?php if (isset($_POST['btn_dk'])&&!$_smarty_tpl->tpl_vars['m_nguoi_dung']->value->test_error($_POST['ten_dang_nhap'],6,32,'btn_dk')) {?>
    <div class="bao_loi_php">
      <div class="thanh-loi">Username must be at least 6 characters and up to 32 characters</div>
      <div class="clear"></div>
    </div>
    <?php }?>
        <div class="form-group">
		    <label class="info-title">Password<span>*</span></label>
		    <input name="mat_khau" type="password" class="form-control unicase-form-control text-input" />
		</div>
        
        <?php if (isset($_POST['btn_dk'])&&!$_smarty_tpl->tpl_vars['m_nguoi_dung']->value->test_error($_POST['mat_khau'],5,32,'btn_dk')) {?>
    <div class="bao_loi_php">
      <div class="thanh-loi">Password must be at least 5 characters and up to 32 characters</div>
      <div class="clear"></div>
    </div>
    <?php }?>
    
        <div class="form-group">
		    <label class="info-title">Confirm password<span>*</span></label>
		    <input name="re_pass_dk" type="password" class="form-control unicase-form-control text-input" />
		</div>
        
            <?php if (isset($_POST['btn_dk'])&&!$_smarty_tpl->tpl_vars['m_nguoi_dung']->value->check_re_pass()) {?>
    <div class="bao_loi_php">
      <div class="thanh-loi">Please re-enter your password</div>
      <div class="clear"></div>
    </div>
    <?php }?>
    
		<div class="form-group">
	    	<label class="info-title" for="exampleInputEmail2">Email <span>*</span></label>
	    	<input name="email" type="email" class="form-control unicase-form-control text-input" 
            value="<?php if (isset($_POST['btn_dk'])) {?><?php echo $_POST['email'];?>
<?php }?>"/>
	  	</div>
            <?php if (isset($_POST['btn_dk'])&&!$_smarty_tpl->tpl_vars['m_nguoi_dung']->value->test_email($_POST['email'])) {?>
    <div class="bao_loi_php">
      <div class="thanh-loi">Please enter your email in the correct format</div>
      <div class="clear"></div>
    </div>
    <?php }?>
    
        <div class="form-group">
		    <label class="info-title" for="exampleOrderIgt">Gender &nbsp;&nbsp;</label>
		    <label>Male &nbsp;<input checked="checked" type="radio" <?php if (isset($_POST['btn_dk'])) {?><?php echo $_smarty_tpl->tpl_vars['m_nguoi_dung']->value->echo_gt(0);?>
<?php }?> name="gender" value="0"/></label>&nbsp;&nbsp; 
            <label>Female &nbsp;<input type="radio" name="gender" value="1" <?php if (isset($_POST['btn_dk'])) {?><?php echo $_smarty_tpl->tpl_vars['m_nguoi_dung']->value->echo_gt(1);?>
<?php }?>/></label>
		</div>
        
        <div class="form-group">
      		<label class="info-title">Date of birth:</label>
          	<div style="min-height:44px">
            <select class="ngay_sinh" name="ngay_sinh">
              <option class="op_ngaysinh" value="">Day</option>
    
            <?php $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['i']->step = 1;$_smarty_tpl->tpl_vars['i']->total = (int) ceil(($_smarty_tpl->tpl_vars['i']->step > 0 ? 31+1 - (1) : 1-(31)+1)/abs($_smarty_tpl->tpl_vars['i']->step));
if ($_smarty_tpl->tpl_vars['i']->total > 0) {
for ($_smarty_tpl->tpl_vars['i']->value = 1, $_smarty_tpl->tpl_vars['i']->iteration = 1;$_smarty_tpl->tpl_vars['i']->iteration <= $_smarty_tpl->tpl_vars['i']->total;$_smarty_tpl->tpl_vars['i']->value += $_smarty_tpl->tpl_vars['i']->step, $_smarty_tpl->tpl_vars['i']->iteration++) {
$_smarty_tpl->tpl_vars['i']->first = $_smarty_tpl->tpl_vars['i']->iteration == 1;$_smarty_tpl->tpl_vars['i']->last = $_smarty_tpl->tpl_vars['i']->iteration == $_smarty_tpl->tpl_vars['i']->total;?>
              <option class="op_ngaysinh" value="<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
"
               <?php if (isset($_POST['btn_dk'])) {?><?php echo $_smarty_tpl->tpl_vars['m_nguoi_dung']->value->date_selected($_smarty_tpl->tpl_vars['i']->value,$_POST['ngay_sinh']);?>
<?php }?>>
                    <?php echo $_smarty_tpl->tpl_vars['i']->value;?>

               </option>
              <?php }} ?>
              
            </select>
            <select class="thang_sinh" name="thang_sinh">
              <option class="op_thangsinh" value="">Month</option>
              <?php $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['i']->step = 1;$_smarty_tpl->tpl_vars['i']->total = (int) ceil(($_smarty_tpl->tpl_vars['i']->step > 0 ? 12+1 - (1) : 1-(12)+1)/abs($_smarty_tpl->tpl_vars['i']->step));
if ($_smarty_tpl->tpl_vars['i']->total > 0) {
for ($_smarty_tpl->tpl_vars['i']->value = 1, $_smarty_tpl->tpl_vars['i']->iteration = 1;$_smarty_tpl->tpl_vars['i']->iteration <= $_smarty_tpl->tpl_vars['i']->total;$_smarty_tpl->tpl_vars['i']->value += $_smarty_tpl->tpl_vars['i']->step, $_smarty_tpl->tpl_vars['i']->iteration++) {
$_smarty_tpl->tpl_vars['i']->first = $_smarty_tpl->tpl_vars['i']->iteration == 1;$_smarty_tpl->tpl_vars['i']->last = $_smarty_tpl->tpl_vars['i']->iteration == $_smarty_tpl->tpl_vars['i']->total;?>
              <option class="op_thangsinh" value="<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
"
              <?php if (isset($_POST['btn_dk'])) {?><?php echo $_smarty_tpl->tpl_vars['m_nguoi_dung']->value->date_selected($_smarty_tpl->tpl_vars['i']->value,$_POST['thang_sinh']);?>
<?php }?>>
                <?php echo $_smarty_tpl->tpl_vars['i']->value;?>

               </option>
              <?php }} ?>
            </select>
            <select class="nam_sinh" name="nam_sinh">
              <option class="op_namsinh" value="">Year</option>
              <?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable(date('Y'), null, 0);?>
              <?php while ($_smarty_tpl->tpl_vars['i']->value>=1900) {?>
              <option class="op_namsinh" value="<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" 
              <?php if (isset($_POST['btn_dk'])) {?><?php echo $_smarty_tpl->tpl_vars['m_nguoi_dung']->value->date_selected($_smarty_tpl->tpl_vars['i']->value,$_POST['nam_sinh']);?>
<?php }?>>
                <?php echo $_smarty_tpl->tpl_vars['i']->value;?>

              </option>
              <?php echo $_smarty_tpl->tpl_vars['i']->value--;?>

              <?php }?>
            </select>
          </div>
    	</div>
    
    <?php if (isset($_POST['btn_dk'])&&!$_smarty_tpl->tpl_vars['m_nguoi_dung']->value->kiem_tra_ngay($_POST['ngay_sinh'],$_POST['thang_sinh'],$_POST['nam_sinh'])) {?>
    	<div class="bao_loi_php">
      		<div class="thanh-loi">Please select a valid date</div>
      		<div class="clear"></div>
    	</div>
    <?php }?>
	  	<button type="submit" name="btn_dk" class="btn-upper btn btn-primary checkout-page-button">Sign up</button>
	</form>
	
</div>	
<!-- create a new account -->			</div><!-- /.row -->
		</div><!-- /.sigin-in--><?php }} ?>
