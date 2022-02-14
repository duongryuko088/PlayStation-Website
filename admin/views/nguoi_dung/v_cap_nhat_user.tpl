<h3 style="color:#00F; text-align:center; padding:10px 0; text-indent:10px">
    {if isset($smarty.cookies.sua_user)}
    {$smarty.cookies.sua_user}
    {$m_common->del_cook(sua_user)}
    {/if}
</h3>
<h3 style="text-align:center">Update inforamtion</h3>
{if isset($smarty.post.btn_cap_nhat)}{$m_nguoi_dung->error_trung_user_update()}{/if}
	<p class="">Register date : {date("d/m/Y",strtotime($nguoi_dung->ngay_dang_ky))}</p>
<form method="post" name="frm_cap_nhat" enctype="multipart/form-data">
<table>
	<tr>
    	<td>Full name: </td>
        <td>
        	<input type="text" name="ho_ten" class="ho_ten" value="{if isset($smarty.post.btn_cap_nhat)}{$smarty.post.ho_ten}{else}{$nguoi_dung->ho_ten}{/if}" required="required"/>
            {if isset($smarty.post.btn_cap_nhat) && !$m_nguoi_dung->test_error($smarty.post.ho_ten,6,32,'btn_cap_nhat')}
            <p style="color:#F00; font-style:italic">Name must be at least 6 characters and up to 32 characters</p>
        {/if}
        </td>
    </tr>
    
    <tr>
    	<td>Username: </td>
        <td>
        	<input type="text" name="ten_dang_nhap" class="ten_dang_nhap" value="{if isset($smarty.post.btn_cap_nhat)}{$smarty.post.ten_dang_nhap}{else}{$nguoi_dung->ten_dang_nhap}{/if}" required="required"/>
            {if isset($smarty.post.btn_cap_nhat) && !$m_nguoi_dung->test_error($smarty.post.ten_dang_nhap,6,32,'btn_cap_nhat')}
          <p style="color:#F00; font-style:italic">Username must be at least 6 characters and up to 32 characters</p>
          {/if}
        </td>
    </tr>
    
    <tr>
    	<td>Email: </td>
        <td>
        	<input type="email" name="email" class="email" value="{if isset($smarty.post.btn_cap_nhat)}{$smarty.post.email}{else}{$nguoi_dung->email}{/if}" required="required"/>
            {if isset($smarty.post.btn_cap_nhat) &&  !$m_nguoi_dung->test_email($smarty.post.email)}
          <p style="color:#F00; font-style:italic">Wrong or Invalid email address. Please correct and try again.</p>
        {/if}
        </td>
    </tr>
    
    <tr>
    	<td>Gender: </td>
        <td>
        	<label class="info-title" for="exampleOrderIgt">Gender &nbsp;&nbsp;</label>
		    <label>Male &nbsp;<input type="radio" {if isset($smarty.post.gender)}{$m_nguoi_dung->echo_gt(1)}{else}{$m_nguoi_dung->echo_gt_cap_nhat(1,$nguoi_dung->gioi_tinh)}{/if} name="gender" value="1"/></label>&nbsp;&nbsp; 
            <label>Female &nbsp;<input type="radio" name="gender" value="0" {if isset($smarty.post.gender)}{$m_nguoi_dung->echo_gt(0)}{else}{$m_nguoi_dung->echo_gt_cap_nhat(0,$nguoi_dung->gioi_tinh)}{/if}/></label>
        </td>
    </tr>
    
    <tr>
    	<td>Date of Birth: </td>
        <td>
        	<label class="info-title">Date of Birth:</label>
          	<div style="min-height:44px">
            <select class="ngay_sinh" name="ngay_sinh">
              <option class="op_ngaysinh" value="">DD</option>
    
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
              <option class="op_thangsinh" value="">MM</option>
              {for $i=1 to 12 step 1}
              <option class="op_thangsinh" value="{$i}"
              {if isset($smarty.post.btn_cap_nhat)}{$m_nguoi_dung->date_selected($i,$smarty.post.thang_sinh)}
              {else}{$m_nguoi_dung->date_selected($i,$m_nguoi_dung->lay_thang_sinh($nguoi_dung->birthdate))}{/if}>
                {$i}
               </option>
              {/for}
            </select>
            <select class="nam_sinh" name="nam_sinh">
              <option class="op_namsinh" value="">YYYY</option>
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
                {if isset($smarty.post.btn_cap_nhat) && !$m_nguoi_dung->kiem_tra_ngay($smarty.post.ngay_sinh,$smarty.post.thang_sinh,$smarty.post.nam_sinh)}
                    <p style="color:#F00; font-style:italic">Please select a valid date</p>
                {/if}
        </td>
    </tr>
    
    <tr>
    	<td colspan="2"><div style="width:150px; margin:auto"><input type="submit" name="btn_cap_nhat" value="Update information"/></div></td>
    </tr>
</table>
</form>

<h3 style="color:#00F; text-align:center; padding:10px 0; text-indent:10px">
    {if isset($smarty.cookies.doi_mat_khau_xong)}
    {$smarty.cookies.doi_mat_khau_xong}
    {$m_common->del_cook(doi_mat_khau_xong)}
    {/if}
</h3>

<form method="post" name="frm_cap_nhat_pw" enctype="multipart/form-data">
<table>
	<thead>
    	<tr>
        	<th colspan="2" style="text-align:center">Change password</th>
        </tr>					
	</thead>
    <tbody>
    	<tr>
        	<td>Current password:</td>
            <td>
            <input name="mat_khau_hien_tai" type="password" class="mat_khau_hien_tai"/>
            {if isset($smarty.post.btn_change_pass) && !$m_nguoi_dung->kiem_tra_mat_khau_hien_tai()}
            <p style="color:#F00; font-style:italic">Incorrect password! Please try again.</p>
            {/if}
            </td>
        </tr>
        
        <tr>
        	<td>New password:</td>
            <td>
            <input name="mat_khau" type="password" class="mat_khau" />
            {if isset($smarty.post.btn_change_pass) && !$m_nguoi_dung->test_error($smarty.post.mat_khau,5,32,'btn_change_pass')}
            <p style="color:#F00; font-style:italic">Password must be at least 5 characters and up to 32 characters</p>
            {/if}
            {if isset($smarty.post.btn_change_pass)}
            <p style="color:#F00; font-style:italic">{$m_nguoi_dung->error_trung_mat_khau()}</p>
            {/if}
            </td>
        </tr>
        
        <tr>
        	<td>Enter new password:</td>
            <td>
            <input name="re_pass_dk" type="password" class="mat_khau" />
            {if isset($smarty.post.btn_change_pass) &&  !$m_nguoi_dung->check_re_pass()}
            <p style="color:#F00; font-style:italic">Please enter new password</p>
            {/if}
            </td>
        </tr>
        
        <tr>
        	<td colspan="2">
            	<div style="width:150px; margin:auto"><input type="submit" name="btn_change_pass" value="Change password"/></div>
            </td>
        </tr>
    </tbody>
</table>
</form>