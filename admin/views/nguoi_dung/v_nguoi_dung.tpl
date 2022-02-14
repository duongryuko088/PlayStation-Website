{if count($nguoi_dungs) > 0}
<div class="content-box"><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3>{$title}</h3>
                    <div style="width:200px; float:left; padding:10px 0">
                    	<input name="thanh_tim" type="text" id="thanh_tim" placeholder="Username"/>
                        {include file="views/input/v_input.tpl"}
                    </div>
                    <h3 style="color:#F00; text-align:center; padding:10px 0">
                        {if isset($smarty.session.kq_doi_loai_user)}
                        {$smarty.session.kq_doi_loai_user}
                        {$m_common->del_sess(kq_doi_loai_user)}
                        {/if}
                	</h3>
                    
                    <h3 style="color:#F00; text-align:center; padding:10px 0">
                        {if isset($smarty.session.kq_xoa)}
                        {$smarty.session.kq_xoa}
                        {$m_common->del_sess(kq_xoa)}
                        {/if}
                	</h3>
                    <div style="clear:both"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
					
					<div class="tab-content default-tab" id="tab1"> <!-- This is the target div. id must match the href of this div's tab -->
                    <p>
                    Both "admin" and "technical" people can post, delete, edit content such as products, news ...., answer questions from customers. But admin can give "technical" permission to every "guest" member and delete every member except "admin", "technical" person can't give guest "technical" permission, can delete the "guest" members can't delete "technical" and "admin" .
                    </p>					
						<table id="bang">
							
							<thead>
								<tr>
								   <th><input class="check-all" type="checkbox" /></th>
								   <th>User no</th>
								   <th>Type</th>
								   <th>Full name</th>
								   <th>Username</th>
								   <th>Email</th>
                                   <th>Register date</th>
                                   <th>Login in</th>
                                   <th>Date of Birth</th>
                                   <th>Gender</th>
								</tr>
								
							</thead>

							<tbody>
                            {foreach $nguoi_dungs as $user}
                            {if $xd_admin == 1}
                            	{if $user->ma_loai_nguoi_dung == 1}
								<tr>
									<td></td>
									<td>{$user->ma_nguoi_dung}</td>
									<td class="chu_do">Admin</td>
									<td>{$user->ho_ten}</td>
									<td>{$user->ten_dang_nhap}</td>
                                    <td>{$user->email}</td>
                                    <td>{date('d-m-Y',strtotime($user->ngay_dang_ky))}</td>
                                    <td>{date('d-m-Y',strtotime($user->ngay_dang_nhap_cuoi))}</td>
                                    <td>{date('d-m-Y',strtotime($user->birthdate))}</td>
                                    <td>{$user->gioi_tinh}</td>
									<td><!-- Icons --></td>
								</tr>
                                {else}
                                <tr>
									<td><input type="checkbox" class="chon_xoa" value="{$user->ma_nguoi_dung}"/></td>
									<td>{$user->ma_nguoi_dung}</td>
									<td class="{if $user->ma_loai_nguoi_dung ==3}chu_xanh{/if}">
                                    	<select class="ten_loai" name="ten_loai">
                                        {foreach $loai_nguoi_dung as $i => $loai}
                                        	{if $i >= 1}
                                        	<option class="gt_ten_loai" value="{$loai->ma_loai_nguoi_dung}" 
                                            {if $loai->ma_loai_nguoi_dung == $user->ma_loai_nguoi_dung}{'selected'}{/if} >
                                            	{$loai->ten_loai_nguoi_dung}
                                            </option>
                                            {/if}
                                         {/foreach}
                                        </select>
                                       
                                    </td>
									<td>{$user->ho_ten}</td>
									<td>{$user->ten_dang_nhap}</td>
                                    <td>{$user->email}</td>
                                    <td>{date('d-m-Y',strtotime($user->ngay_dang_ky))}</td>
                                    <td>{date('d-m-Y',strtotime($user->ngay_dang_nhap_cuoi))}</td>
                                    <td>{date('d-m-Y',strtotime($user->birthdate))}</td>
                                    <td>{$user->gioi_tinh}</td>
									<td>
										<!-- Icons -->
										 <a href="javascript:Hoi_xoa('nguoi_dung','ma_nguoi_dung',{$user->ma_nguoi_dung},'{$link}','người dùng')" title="Delete"><img src="images/icons/cross.png" alt="Delete" /></a> 
									</td>
								</tr>
                                 <input type="hidden" class="ma_nguoi_thay_doi" value="{$user->ma_nguoi_dung}"/>
                                {/if}
                            {else}
                                {if $user->ma_loai_nguoi_dung == 1 || $user->ma_loai_nguoi_dung == 3}
                                <tr>
                                    <td></td>
                                    <td>{$user->ma_nguoi_dung}</td>
                                    <td class="{if $user->ma_loai_nguoi_dung ==1}chu_do{else}chu_xanh{/if}">
                                    	{foreach $loai_nguoi_dung as $loai}
                                        	{if $loai->ma_loai_nguoi_dung == $user->ma_loai_nguoi_dung}
                                            	{$loai->ten_loai_nguoi_dung}
                                            {/if}
                                         {/foreach}
                                    </td>
                                    <td>{$user->ho_ten}</td>
                                    <td>{$user->ten_dang_nhap}</td>
                                    <td>{$user->email}</td>
                                    <td>{date('d-m-Y',strtotime($user->ngay_dang_ky))}</td>
                                    <td>{date('d-m-Y',strtotime($user->ngay_dang_nhap_cuoi))}</td>
                                    <td>{date('d-m-Y',strtotime($user->birthdate))}</td>
                                    <td>{$user->gioi_tinh}</td>
                                    <td><!-- Icons --></td>
                                </tr>
                                {else}
                                 <tr>
									<td><input type="checkbox" class="chon_xoa" value="{$user->ma_nguoi_dung}"/></td>
									<td>{$user->ma_nguoi_dung}</td>
									<td>
                                    	<select class="ten_loai" name="ten_loai">
                                        {foreach $loai_nguoi_dung as $i=> $loai}
                                        	{if $i != 0 && $i != 2}
                                        	<option class="gt_ten_loai" value="{$loai->ma_loai_nguoi_dung}" 
                                            {if $loai->ma_loai_nguoi_dung == $user->ma_loai_nguoi_dung}{'selected'}{/if} >
                                            	{$loai->ten_loai_nguoi_dung}
                                            </option>
                                            {/if}
                                         {/foreach}
                                        </select>
                                       
                                    </td>
									<td>{$user->ho_ten}</td>
									<td>{$user->ten_dang_nhap}</td>
                                    <td>{$user->email}</td>
                                    <td>{date('d-m-Y',strtotime($user->ngay_dang_ky))}</td>
                                    <td>{date('d-m-Y',strtotime($user->ngay_dang_nhap_cuoi))}</td>
                                    <td>{date('d-m-Y',strtotime($user->birthdate))}</td>
                                    <td>{$user->gioi_tinh}</td>
									<td>
										<!-- Icons -->
										 <a href="javascript:Hoi_xoa('nguoi_dung','ma_nguoi_dung',{$user->ma_nguoi_dung},'{$link}','người dùng')" title="Delete"><img src="images/icons/cross.png" alt="Delete" /></a> 
									</td>
								</tr>
                                 <input type="hidden" class="ma_nguoi_thay_doi" value="{$user->ma_nguoi_dung}"/>
                                 {/if}
                             {/if}
							{/foreach}
                                <script>
                                $('.ten_loai').each(function(index) {
									var gt_hien_tai =$('.ten_loai').eq(index).val();
                                    $('.ten_loai').eq(index).change(function(){
										var gt_moi =$('.ten_loai').eq(index).val();
										var ma_nguoi_dung_thay = $('.ma_nguoi_thay_doi').eq(index).val();
										if(confirm('Do you want to change type of this user ?'))
											window.location = 'doi_loai_user.php?ma_nguoi_dung='+ma_nguoi_dung_thay+'&gt_moi='+gt_moi;
											//$('.ten_loai').eq(index).val(val2);
										else
											$('.ten_loai').eq(index).val(gt_hien_tai);
									})
                                });
                                </script>
                                <tr>
                                	<td colspan="10">
                                    	<div style="width:150px; margin:auto">
                                        	<input style="height:40px; cursor:pointer" type="button" name="btn_xoa_user" class="btn_xoa_user" value="Delete user" onclick="xoa_nhieu('nguoi_dung','ma_nguoi_dung','{$link}','người dùng')"/>
                                        </div>
                                     </td>
                               </tr>
                               <tr><td colspan="10"><div class="pages_list">{$lst}</div></td></tr>
							</tbody>
							{include file="views/xl_ajax/v_script_phan_tu.tpl"}
                            
						</table>
						
					</div> <!-- End #tab1 -->      
					
				</div> <!-- End .content-box-content -->
				
			</div>
            {include file="views/xl_ajax/v_script_tim.tpl"}
{/if}