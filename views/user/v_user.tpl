<div class="sign-in-page inner-bottom-sm">
			<div class="row">
				<!-- Sign-in -->			
<div class="col-md-6 col-sm-6 sign-in">
	<h4 style="font-family:Tahoma, Geneva, sans-serif; font-weight:bold">Log In</h4>
{$m_nguoi_dung->remove_session_login_false()}
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
    {$m_nguoi_dung->error_trung_user()}
	<form method="post" name="frm_dangky" class="register-form outer-top-xs" role="form">
    	<div class="form-group">
		    <label class="info-title">Fullname<span>*</span></label>
		    <input name="ho_ten" type="text" class="form-control unicase-form-control text-input" 
            value="{if isset($smarty.post.btn_dk)}{$smarty.post.ho_ten}{/if}"/>
		</div>
        	{if isset($smarty.post.btn_dk) && !$m_nguoi_dung->test_error($smarty.post.ho_ten,6,32,'btn_dk')}
            <div class="bao_loi_php">
              <div class="thanh-loi">Name must be at least 6 characters and up to 32 characters</div>
              <div class="clear"></div>
            </div>
            {/if}
    	<div class="form-group">
		    <label class="info-title">Username<span>*</span></label>
		    <input name="ten_dang_nhap" type="text" class="form-control unicase-form-control text-input" 
            value="{if isset($smarty.post.btn_dk)}{$smarty.post.ten_dang_nhap}{/if}"/>
		</div>
            {if isset($smarty.post.btn_dk) && !$m_nguoi_dung->test_error($smarty.post.ten_dang_nhap,6,32,'btn_dk')}
    <div class="bao_loi_php">
      <div class="thanh-loi">Username must be at least 6 characters and up to 32 characters</div>
      <div class="clear"></div>
    </div>
    {/if}
        <div class="form-group">
		    <label class="info-title">Password<span>*</span></label>
		    <input name="mat_khau" type="password" class="form-control unicase-form-control text-input" />
		</div>
        
        {if isset($smarty.post.btn_dk) && !$m_nguoi_dung->test_error($smarty.post.mat_khau,5,32,'btn_dk')}
    <div class="bao_loi_php">
      <div class="thanh-loi">Password must be at least 5 characters and up to 32 characters</div>
      <div class="clear"></div>
    </div>
    {/if}
    
        <div class="form-group">
		    <label class="info-title">Confirm password<span>*</span></label>
		    <input name="re_pass_dk" type="password" class="form-control unicase-form-control text-input" />
		</div>
        
            {if isset($smarty.post.btn_dk) &&  !$m_nguoi_dung->check_re_pass()}
    <div class="bao_loi_php">
      <div class="thanh-loi">Please re-enter your password</div>
      <div class="clear"></div>
    </div>
    {/if}
    
		<div class="form-group">
	    	<label class="info-title" for="exampleInputEmail2">Email <span>*</span></label>
	    	<input name="email" type="email" class="form-control unicase-form-control text-input" 
            value="{if isset($smarty.post.btn_dk)}{$smarty.post.email}{/if}"/>
	  	</div>
            {if isset($smarty.post.btn_dk) &&  !$m_nguoi_dung->test_email($smarty.post.email)}
    <div class="bao_loi_php">
      <div class="thanh-loi">Please enter your email in the correct format</div>
      <div class="clear"></div>
    </div>
    {/if}
    
        <div class="form-group">
		    <label class="info-title" for="exampleOrderIgt">Gender &nbsp;&nbsp;</label>
		    <label>Male &nbsp;<input checked="checked" type="radio" {if isset($smarty.post.btn_dk)}{$m_nguoi_dung->echo_gt(0)}{/if} name="gender" value="0"/></label>&nbsp;&nbsp; 
            <label>Female &nbsp;<input type="radio" name="gender" value="1" {if isset($smarty.post.btn_dk)}{$m_nguoi_dung->echo_gt(1)}{/if}/></label>
		</div>
        
        <div class="form-group">
      		<label class="info-title">Date of birth:</label>
          	<div style="min-height:44px">
            <select class="ngay_sinh" name="ngay_sinh">
              <option class="op_ngaysinh" value="">Day</option>
    
            {for $i=1 to 31 step 1}
              <option class="op_ngaysinh" value="{$i}"
               {if isset($smarty.post.btn_dk)}{$m_nguoi_dung->date_selected($i,$smarty.post.ngay_sinh)}{/if}>
                    {$i}
               </option>
              {/for}
              
            </select>
            <select class="thang_sinh" name="thang_sinh">
              <option class="op_thangsinh" value="">Month</option>
              {for $i=1 to 12 step 1}
              <option class="op_thangsinh" value="{$i}"
              {if isset($smarty.post.btn_dk)}{$m_nguoi_dung->date_selected($i,$smarty.post.thang_sinh)}{/if}>
                {$i}
               </option>
              {/for}
            </select>
            <select class="nam_sinh" name="nam_sinh">
              <option class="op_namsinh" value="">Year</option>
              {$i = date('Y')}
              {while $i>=1900}
              <option class="op_namsinh" value="{$i}" 
              {if isset($smarty.post.btn_dk)}{$m_nguoi_dung->date_selected($i,$smarty.post.nam_sinh)}{/if}>
                {$i}
              </option>
              {$i--}
              {/while}
            </select>
          </div>
    	</div>
    
    {if isset($smarty.post.btn_dk) && !$m_nguoi_dung->kiem_tra_ngay($smarty.post.ngay_sinh,$smarty.post.thang_sinh,$smarty.post.nam_sinh)}
    	<div class="bao_loi_php">
      		<div class="thanh-loi">Please select a valid date</div>
      		<div class="clear"></div>
    	</div>
    {/if}
	  	<button type="submit" name="btn_dk" class="btn-upper btn btn-primary checkout-page-button">Sign up</button>
	</form>
	
</div>	
<!-- create a new account -->			</div><!-- /.row -->
		</div><!-- /.sigin-in-->