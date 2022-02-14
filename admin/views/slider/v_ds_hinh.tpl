
<div class="content-box">
<!-- Start Content Box -->
    <div class="content-box-header">
      <h3>{$title}</h3>
      
      <div style="clear:both"></div>
    </div>
    <!-- End .content-box-header -->
    
    <div class="content-box-content">
        <div class="tab-content default-tab" id="tab1">
        
            <h3 style="color:#F00; text-align:center; padding:10px 0; text-indent:10px">
                  {if isset($smarty.session.kq_xoa)}
                  <p style="font-weight:bold; font-size:20px">{$smarty.session.kq_xoa}</p>
                  {$m_common->del_sess('kq_xoa')}
                   {/if}
              </h3>
              <h3 style="color:#00F; text-align:center; padding:10px 0; text-indent:10px">
                  {if isset($smarty.cookies.them_hinh_xong)}
                  {$smarty.cookies.them_hinh_xong}
                  {$m_common->del_cook('them_hinh_xong')}
                   {/if}
              </h3>
            
            {if count($ds_hinh) >0}
            <p>Images with position 0 are the ones that don't show up in the slider. The images in the slider need to have the same aspect ratio for the slider to be even</p>
    		<table id="bang">
              <thead>
                <tr>
                  <th><input class="check-all" type="checkbox" /></th>
                  <th>ID</th>
                  <th>Name</th>
                  <th>Position</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
              {foreach $ds_hinh as $hinh}
                <tr class="">
                  <th><input value="{$hinh->id}" class="chon_xoa" type="checkbox" /></th>
                  <th>{$hinh->id}</th>
                  <th><img  width="100px" src="{$smarty.const.IMG}/sliders/{$hinh->hinh}"/></th>
                  <th>{$hinh->vi_tri}</th>
                  <th> <!-- Icons --> 
                    <a href="javascript:Hoi_xoa_hinh_sli({$hinh->id})" 
                    title="Delete"><img src="{$smarty.const.IMG_AD}/icons/cross.png" alt="Delete" /></a>
                    </th>
                </tr>
                {/foreach}
                <tr>
                  <td colspan="5">
                      <div style="width:150px; margin:auto">
                          <input style="height:40px; cursor:pointer" onclick="xoa_nhieu_hinh_sli()"
                          type="button" name="btn_xoa_sp" class="btn_xoa_sp" value="Delete image"/>
                        </div>
                    </td>
                </tr>
                <tr>
                  <td colspan="5"><div class="pages_list">{$lst}</div></td>
                </tr>
              </tbody>
            </table>
<script>
function Hoi_xoa_hinh_sli(id)
{
	if(confirm("Do you want to delete this image ?"))
	{
		window.location='xoa_hinh_slider.php?id='+id;	
	}	
}

function xoa_nhieu_hinh_sli(){
	var count_chon_xoa = $('.chon_xoa').filter(':checked').length;
	var mang_chon_xoa = [];
	
	for(var i = 0; i<count_chon_xoa; i++)
	{
		var val = $('.chon_xoa').filter(':checked').eq(i).val();
		mang_chon_xoa.push(val);
	}
	var id = mang_chon_xoa.join();
	if(id != '')
		Hoi_xoa_hinh_sli(id);
	else
		alert('Please select image to delete');
}

$('.check-all').click(
	function(){
		$(this).parent().parent().parent().parent().find("input[type='checkbox']").attr('checked', $(this).is(':checked'));   
	}
);
</script>

            {else}
            <h3 style="padding:20px 0">No image was found</h3>
			{/if}
            <h3 style="text-align:center; padding:10px 0">Add image into list</h3>
            <form name="frm_them_hinh" method="post" enctype="multipart/form-data">
            
            <strong>Add image: </strong><input type="file" name="hinh[]" value="" multiple="multiple"/><br />
            <p>(Can insert more images, following with format jpg,jpeg,bmp,png ; maximum size 4MB)</p>
            <strong>Insert slider: </strong><label>Yes <input type="radio" name="gt" value="1" checked="checked"/></label>
            <label>No <input type="radio" name="gt" value="0"/></label>
            <p style="color:#F00; font-style:italic">{$m_slider->loi_up_hinh}</p>
            <div style="padding:10px 0"><input type="submit" name="btn_them_hinh" value="Add"/></div>
            </form>
         </div> <!-- End #tab1 -->
     </div> <!-- End .content-box-content -->
</div>
