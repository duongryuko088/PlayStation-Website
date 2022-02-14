{if isset($smarty.session.gio_hang)}
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
            {if isset($smarty.post.dat_hang) && !$m_xl_chung->check_number($smarty.post.dien_thoai)}
            <p style="font-style:italic; color:#F00">Invalid phone number</p>
            {/if}
		</div>
        
	  	<div class="form-group">
		    <label class="info-title" for="exampleBillingEmail1">Email</label>
		    <input name="email" required="required" type="email" class="form-control unicase-form-control text-input" id="exampleBillingEmail1" >
		</div>
	  	<button name="dat_hang" type="submit" class="btn-upper btn btn-primary checkout-page-button">Order</button>
	</form>	
</div>			</div><!-- /.row -->
		</div>
{else}
	{if isset($smarty.cookies.dat_hang_true)}
    {$m_gio_hang->xoa_cook_dat_hang()}
	<h3>Thank you for choosing us</h3>
	{else}
    <h3>Your order is not finished</h3>
	{/if}
{/if}