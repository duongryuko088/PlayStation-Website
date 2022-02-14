<div class="sign-in-page inner-bottom-sm">
			<div class="row">
				<!-- Sign-in -->			
<div class="col-md-6 col-sm-6 sign-in">

	<h4 style="font-family:Tahoma, Geneva, sans-serif; font-weight:bold">Update user information</h4>
    {if isset($smarty.cookies.cap_nhat_xong)}
<h3 style="color:#0F0">Update Successful</h3>
{$m_nguoi_dung->xoa_cookie('cap_nhat_xong')}
{/if}
    {if isset($smarty.post.btn_cap_nhat)}{$m_nguoi_dung->error_trung_user_update()}{/if}
	<p class="">Registration Date : {date("d/m/Y",strtotime($nguoi_dung->ngay_dang_ky))}</p>
    
	<form method="post" action="" name="frm_update_user" class="register-form outer-top-xs" role="form">
    
    	<div class="form-group">
		    <label class="info-title"> Full name <span></span></label>
		    <input name="ho_ten" type="text" class="form-control unicase-form-control text-input" id="exampleInputhoten" 
            value="{if isset($smarty.post.btn_cap_nhat)}{$smarty.post.ho_ten}{else}{$nguoi_dung->ho_ten}{/if}" />
		</div>
        {if isset($smarty.post.btn_cap_nhat) && !$m_nguoi_dung->test_error($smarty.post.ho_ten,6,32,'btn_cap_nhat')}
        <div class="bao_loi_php">
          <div class="thanh-loi">Name must be at least 6 characters and up to 32 characters</div>
          <div class="clear"></div>
        </div>
        {/if}
        
		<div class="form-group">
		    <label class="info-title">Username<span></span></label>
		    <input name="ten_dang_nhap" type="text" class="form-control unicase-form-control text-input" id="exampleInputtendn" 
            value="{if isset($smarty.post.btn_cap_nhat)}{$smarty.post.ten_dang_nhap}{else}{$nguoi_dung->ten_dang_nhap}{/if}"/>
		</div>
        {if isset($smarty.post.btn_cap_nhat) && !$m_nguoi_dung->test_error($smarty.post.ten_dang_nhap,6,32,'btn_cap_nhat')}
        <div class="bao_loi_php">
          <div class="thanh-loi">Username must be at least 6 characters and up to 32 characters</div>
          <div class="clear"></div>
        </div>
        {/if}
	  	
		<div class="form-group">
	    	<label class="info-title">Email Address <span></span></label>
	    	<input name="email" type="email" class="form-control unicase-form-control text-input" id="exampleInputEmail2" /
            value="{if isset($smarty.post.btn_cap_nhat)}{$smarty.post.email}{else}{$nguoi_dung->email}{/if}">
	  	</div>
        {if isset($smarty.post.btn_cap_nhat) &&  !$m_nguoi_dung->test_email($smarty.post.email)}
        <div class="bao_loi_php">
          <div class="thanh-loi">Please enter your email in the correct format</div>
          <div class="clear"></div>
        </div>
        {/if}
        
        <div class="form-group">
		    <label class="info-title" for="exampleOrderIgt">Gender &nbsp;&nbsp;</label>
		    <label>Male &nbsp;<input type="radio" {if isset($smarty.post.gender)}{$m_nguoi_dung->echo_gt(1)}{else}{$m_nguoi_dung->echo_gt_cap_nhat(1,$nguoi_dung->gioi_tinh)}{/if} name="gender" value="1"/></label>&nbsp;&nbsp; 
            <label>Female &nbsp;<input type="radio" name="gender" value="0" {if isset($smarty.post.gender)}{$m_nguoi_dung->echo_gt(0)}{else}{$m_nguoi_dung->echo_gt_cap_nhat(0,$nguoi_dung->gioi_tinh)}{/if}/></label>
		</div>
        
        <div class="form-group">
      		<label class="info-title">Date of birth:</label>
          	<div style="min-height:44px">
            <select class="ngay_sinh" name="ngay_sinh">
              <option class="op_ngaysinh" value="">Day</option>
    
            {for $i=1 to 31 step 1}
              <option class="op_ngaysinh" value="{$i}"
               {if isset($smarty.post.btn_cap_nhat)}{$m_nguoi_dung->date_selected($i,$smarty.post.ngay_sinh)}
               {else}{$m_nguoi_dung->date_selected($i,$m_nguoi_dung->lay_ngay_sinh($nguoi_dung->birthdate))}
               {/if}>
                    {$i}
               </option>
              {/for}
              
            </select>
            <select class="thang_sinh" name="thang_sinh">
              <option class="op_thangsinh" value="">Month</option>
              {for $i=1 to 12 step 1}
              <option class="op_thangsinh" value="{$i}"
              {if isset($smarty.post.btn_cap_nhat)}{$m_nguoi_dung->date_selected($i,$smarty.post.thang_sinh)}
              {else}{$m_nguoi_dung->date_selected($i,$m_nguoi_dung->lay_thang_sinh($nguoi_dung->birthdate))}{/if}>
                {$i}
               </option>
              {/for}
            </select>
            <select class="nam_sinh" name="nam_sinh">
              <option class="op_namsinh" value="">Year</option>
              {$i = date('Y')}
              {while $i>=1900}
              <option class="op_namsinh" value="{$i}" 
              {if isset($smarty.post.btn_cap_nhat)}{$m_nguoi_dung->date_selected($i,$smarty.post.nam_sinh)}
              {else}{$m_nguoi_dung->date_selected($i,$m_nguoi_dung->lay_nam_sinh($nguoi_dung->birthdate))}
              {/if}>
                {$i}
              </option>
              {$i--}
              {/while}
            </select>
          </div>
    	</div>
    
    {if isset($smarty.post.btn_cap_nhat) && !$m_nguoi_dung->kiem_tra_ngay($smarty.post.ngay_sinh,$smarty.post.thang_sinh,$smarty.post.nam_sinh)}
    	<div class="bao_loi_php">
      		<div class="thanh-loi">Please select a valid date</div>
      		<div class="clear"></div>
    	</div>
    {/if}
	  	<button name="btn_cap_nhat" type="submit" class="btn-upper btn btn-primary checkout-page-button">Update</button>
	</form>					
</div>
<!-- Sign-in -->

<!-- create a new account -->

	<h4 style="font-family:Tahoma, Geneva, sans-serif; font-weight:bold">Change password</h4>
    <div class="col-md-6 col-sm-6 create-new-account">
        {if isset($smarty.cookies.doi_mat_khau_xong)}
        <h3 style="color:#0F0">You have successfully changed your password</h3>
        {$m_nguoi_dung->xoa_cookie('doi_mat_khau_xong')}
        {/if}
        {if isset($smarty.post.btn_change_pass)}{$m_nguoi_dung->error_trung_mat_khau()}{/if}
	<form method="post" name="frm_pass" class="register-form outer-top-xs" role="form">
    	<div class="form-group">
		    <label class="info-title" for="exampleInputPassword1">Mật khẩu hiện tại <span></span></label>
		    <input name="mat_khau_hien_tai" type="password" class="form-control unicase-form-control text-input" id="exampleInputPassworht" >
		</div>
        {if isset($smarty.post.btn_change_pass) && !$m_nguoi_dung->kiem_tra_mat_khau_hien_tai()}
    <div class="bao_loi_php">
      <div class="thanh-loi">The current password is incorrect, please enter the correct password</div>
      <div class="clear"></div>
    </div>
    {/if}
		<div class="form-group">
		    <label class="info-title" for="exampleInputPassword1">Mật khẩu mới <span></span></label>
		    <input name="mat_khau" type="password" class="form-control unicase-form-control text-input" id="exampleInputPassword1" >
		</div>
        {if isset($smarty.post.btn_change_pass) && !$m_nguoi_dung->test_error($smarty.post.mat_khau,5,32,'btn_change_pass')}
    <div class="bao_loi_php">
      <div class="thanh-loi">New password must be at least 5 characters and up to 32 characters</div>
      <div class="clear"></div>
    </div>
    {/if}
        <div class="form-group">
		    <label class="info-title" for="exampleInputPassword1">Enter a new password<span></span></label>
		    <input name="re_pass_dk" type="password" class="form-control unicase-form-control text-input" id="exampleInputPassworre" >
		</div>
        {if isset($smarty.post.btn_change_pass) &&  !$m_nguoi_dung->check_re_pass()}
    <div class="bao_loi_php">
      <div class="thanh-loi">Please re-enter new password</div>
      <div class="clear"></div>
    </div>
    {/if}
	  	<button type="submit" name="btn_change_pass" class="btn-upper btn btn-primary checkout-page-button">Change Password</button>
	</form>
</div>	
<!-- create a new account -->			</div><!-- /.row -->
		</div>