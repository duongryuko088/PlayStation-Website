<?php /* Smarty version Smarty-3.1.18, created on 2021-12-20 11:14:56
         compiled from "views\san_pham\v_product-detail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:65745659361c057a0769096-52721109%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '83d734c3224f7649baef4dc718ac71a57d137eae' => 
    array (
      0 => 'views\\san_pham\\v_product-detail.tpl',
      1 => 1638891367,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '65745659361c057a0769096-52721109',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'san_pham' => 0,
    'slide_hinh_sp_ct' => 0,
    'thumb' => 0,
    'm_san_pham' => 0,
    'id_login' => 0,
    'san_pham_cung_loai' => 0,
    'i' => 0,
    'spcl' => 0,
    'ma_san_pham' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_61c057a0bffdf6_41548582',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_61c057a0bffdf6_41548582')) {function content_61c057a0bffdf6_41548582($_smarty_tpl) {?>
<div class="row single-product outer-bottom-sm">
	<!-- ============================================== SIDEBAR ============================================== -->	
		<?php echo $_smarty_tpl->getSubTemplate ("views/v_sidebar_sp.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

        
        <!-- ============================================== CONTENT ============================================== -->
        <div class='col-md-9'>
			<div class="row  wow fadeInUp">
						     <div class="col-xs-12 col-sm-6 col-md-7 gallery-holder">
    <div class="product-item-holder size-big single-product-gallery small-gallery">
    	<div class="container-slider" style="width:100%; margin:auto">
          <div class="container-big-img">
              <div class="item-big-act" style="display:block">
                  <img class="img-big" src="assets/images/products/<?php echo $_smarty_tpl->tpl_vars['san_pham']->value->hinh;?>
"/> 
               </div>
               <?php if (count($_smarty_tpl->tpl_vars['slide_hinh_sp_ct']->value)>0) {?>
            	<?php  $_smarty_tpl->tpl_vars['thumb'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['thumb']->_loop = false;
 $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['slide_hinh_sp_ct']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['thumb']->key => $_smarty_tpl->tpl_vars['thumb']->value) {
$_smarty_tpl->tpl_vars['thumb']->_loop = true;
 $_smarty_tpl->tpl_vars['k']->value = $_smarty_tpl->tpl_vars['thumb']->key;
?>
               <div class="item-big">
                   <img class="img-big" src="assets/images/products/<?php echo $_smarty_tpl->tpl_vars['thumb']->value->ten_hinh;?>
"/> 
                </div>
                <?php } ?>
            	<?php }?>
          </div>
          <?php if (count($_smarty_tpl->tpl_vars['slide_hinh_sp_ct']->value)>0) {?>
          <div class="container-thumb">
              
              <div class="item-thumb-act">
                  <img class="img-thumb" src="assets/images/products/<?php echo $_smarty_tpl->tpl_vars['san_pham']->value->hinh;?>
"/>
              </div>
              <?php  $_smarty_tpl->tpl_vars['thumb'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['thumb']->_loop = false;
 $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['slide_hinh_sp_ct']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['thumb']->key => $_smarty_tpl->tpl_vars['thumb']->value) {
$_smarty_tpl->tpl_vars['thumb']->_loop = true;
 $_smarty_tpl->tpl_vars['k']->value = $_smarty_tpl->tpl_vars['thumb']->key;
?>
              <div class="item-thumb">
                  <img class="img-thumb" src="assets/images/products/<?php echo $_smarty_tpl->tpl_vars['thumb']->value->ten_hinh;?>
"/>
              </div>
              <?php } ?>
              <div class="clear"></div>
                  
          </div>
          <?php }?>
      </div>
    </div><!-- /.single-product-gallery -->
</div><!-- /.gallery-holder -->	        			
						<div class='col-sm-6 col-md-5 product-info-block product-info-detail'>
							<div class="product-info">
								<h1 class="name"><?php echo $_smarty_tpl->tpl_vars['san_pham']->value->ten_san_pham;?>
</h1>
                                
								<div class="product-price">	
                                     <span class="price">
                                         <?php echo number_format($_smarty_tpl->tpl_vars['san_pham']->value->gia_ct,0,',','.');?>
 Đ 
                                      </span>
                                       <?php if ($_smarty_tpl->tpl_vars['san_pham']->value->don_gia!=$_smarty_tpl->tpl_vars['san_pham']->value->gia_ct) {?>
                                       <span class="price-before-discount"><?php echo number_format($_smarty_tpl->tpl_vars['san_pham']->value->don_gia);?>
 Đ</span>
                                        <?php }?>
                                </div><!-- /.product-price -->
                                
                                <div id="area_rating"><!-- area_rating -->
                                    <div class="rating-reviews m-t-20">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="rating-range">
                                                    <div class="star-raw"></div>
                                                    <div class="star-yel" style="width:<?php echo $_smarty_tpl->tpl_vars['m_san_pham']->value->star_yel($_smarty_tpl->tpl_vars['san_pham']->value->ma_san_pham)*16;?>
px"></div>
                                                </div>
                                            </div>
                                            <div class="col-sm-8">
                                                <div class="reviews">
                                                    <a href="#" class="lnk">(Purchase: <?php echo $_smarty_tpl->tpl_vars['san_pham']->value->so_luot_mua;?>
)</a>
                                                </div>
                                            </div>
                                        </div><!-- /.row -->		
                                    </div><!-- /.rating-reviews -->
                                    
                                    <div class="stock-container info-container m-t-10">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="stock-box">
                                                    <span class="label">Status :</span>
                                                </div>	
                                            </div>
                                            <div class="col-sm-9">
                                                <div class="stock-box">
                                                    <span class="value"><?php if ($_smarty_tpl->tpl_vars['san_pham']->value->so_luong>0) {?>In stock<?php } else { ?>Out of stock<?php }?></span>
                                                </div>	
                                            </div>
                                        </div><!-- /.row -->	
                                    </div><!-- /.stock-container -->
    
                                    <div class="description-container m-t-20">
                                            Instant discount of 2 million OR 0% installment until the end of February 2022. Chance to win many attractive prizes worth up to more than 50 million.
                                    </div><!-- /.description-container -->
     
                                    <div class="rating-reviews m-t-20">
                                    <?php if (isset($_SESSION['login'])&&$_SESSION['login']==1&&empty($_smarty_tpl->tpl_vars['m_san_pham']->value->da_danh_gia($_smarty_tpl->tpl_vars['san_pham']->value->ma_san_pham,$_smarty_tpl->tpl_vars['id_login']->value))) {?>
                                        <div class="row">
                                            <div class="col-sm-6">
                                            Review: 
                                            </div>
                                            <div class="col-sm-3">
                                                  <div style="width:70%; margin:0" id="khachhang-danh-gia" class="danh-gia-san-pham">
                                                      <div class="container-star-null">
                                                        <span class="star-null"></span>
                                                        <span style="left:16px" class="star-null"></span>
                                                        <span style="left:32px" class="star-null"></span>
                                                        <span style="left:48px" class="star-null"></span>
                                                        <span style="left:64px" class="star-null"></span>
                                                      </div>
                                                  </div>
                                            </div>
                                        </div>
                                        
                                        <?php }?>
                                        <?php if (isset($_SESSION['login'])&&$_SESSION['login']==1&&!empty($_smarty_tpl->tpl_vars['m_san_pham']->value->da_danh_gia($_smarty_tpl->tpl_vars['san_pham']->value->ma_san_pham,$_smarty_tpl->tpl_vars['id_login']->value))) {?>
                                        <div class="row">
                                            <div class="col-sm-6">
                                            You have rated: 
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="rating-range rating-range_custom">
                                                    <div class="star-raw"></div>
                                                    <div class="star-yel" style="width:<?php echo $_smarty_tpl->tpl_vars['m_san_pham']->value->diem_da_danh_gia($_smarty_tpl->tpl_vars['san_pham']->value->ma_san_pham,$_smarty_tpl->tpl_vars['id_login']->value);?>
"></div>
                                                </div>
                                             </div>
                                        </div>
                                        <?php }?>
                                        <?php if (!isset($_SESSION['login'])) {?>
                                        <p>You must <a href="login_register.php" class="lnk">sign in</a> to rating product</p>
                                        <?php }?>
                                    </div>
                                </div><!-- end area_rating -->
								<div class="row outer-top-vs">
									<div class="col-sm-2 col-lg-2 col-md-4">
										<span class="label">Quantity :</span>
									</div>
									<div class="col-sm-3 col-lg-3 col-md-4">
                                    	<input type="hidden" class="gia_tri_ma_sp" value="<?php echo $_smarty_tpl->tpl_vars['san_pham']->value->ma_san_pham;?>
"/>
        <input type="hidden" class="gia_sp" value="<?php echo $_smarty_tpl->tpl_vars['san_pham']->value->gia_ct;?>
"/>
										<input name="sl_dat_mua" type="number" value="1" class="sl_dat_mua txt txt-qty"/>
                                        <input type="hidden" class="ten_sp" value="<?php echo $_smarty_tpl->tpl_vars['san_pham']->value->ten_san_pham;?>
"/>
									</div>
									<div class="cart col-md-12 col-lg-6 clearfix animate-effect">
                                    	<div class="container-nut-cart">
                                            <div class="action">		
                                                <button type="button" class="btn btn-primary">Add to cart</button>
                                            </div><!-- /.action -->
                                         </div>
									</div>
								</div>

								<div class="row product-social-link outer-top-vs">
									<div class="fb-like" data-href="http://localhost/project3/sp_<?php echo thu_vien::bo_dau($_smarty_tpl->tpl_vars['san_pham']->value->ten_san_pham);?>
.<?php echo $_smarty_tpl->tpl_vars['san_pham']->value->ma_san_pham;?>
.html" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
								</div>
								
							</div><!-- /.product-info -->
						</div><!-- /.col-sm-5 -->
					</div><!-- /.row -->
			<div class="product-tabs outer-top-smal  wow fadeInUp">
				
						<ul id="product-tabs" class="nav nav-tabs nav-tab-cell-detail">
							<li class="active"><a data-toggle="tab" href="#description">More about product</a></li>
							<li><a data-toggle="tab" href="#review">NEW PRODUCT</a></li>
							<li><a data-toggle="tab" href="#tags">COMMENT</a></li>
						</ul><!-- /.nav-tabs #product-tabs -->
					

						<div class="tab-content outer-top-xs">

							<div id="description" class="tab-pane in active">
								<div class="product-tab">
									<?php echo $_smarty_tpl->tpl_vars['san_pham']->value->tom_tat_thong_so;?>

								</div>	
							</div><!-- /.tab-pane -->

							<div id="review" class="tab-pane">
								<div class="product-tab">
                                <?php echo $_smarty_tpl->tpl_vars['san_pham']->value->mo_ta;?>

								</div><!-- /.product-tab -->
							</div><!-- /.tab-pane -->

								<div id="tags" class="tab-pane">
									<div class="fb-comments" data-href="http://localhost/project3/sp_<?php echo thu_vien::bo_dau($_smarty_tpl->tpl_vars['san_pham']->value->ten_san_pham);?>
.<?php echo $_smarty_tpl->tpl_vars['san_pham']->value->ma_san_pham;?>
.html" data-numposts="5" data-width="100%"></div>
								</div><!-- /.tab-pane -->

							</div><!-- /.tab-content -->

						</div><!-- /.product-tabs -->
		</div>
        <!-- ============================================== CONTENT : END============================================== -->
            <!-- /.col -->
</div> <!-- ========= row : END =========== -->
<section class="section featured-product outer-top-small wow fadeInUp">
		<h3 class="section-title">Other</h3>
		<div class="owl-carousel home-owl-carousel  custom-carousel owl-theme outer-top-xs" >
			<?php if (count($_smarty_tpl->tpl_vars['san_pham_cung_loai']->value)>1) {?>
            <?php  $_smarty_tpl->tpl_vars['spcl'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['spcl']->_loop = false;
 $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['san_pham_cung_loai']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['spcl']->key => $_smarty_tpl->tpl_vars['spcl']->value) {
$_smarty_tpl->tpl_vars['spcl']->_loop = true;
 $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['spcl']->key;
?>
            <?php if ($_smarty_tpl->tpl_vars['i']->value<8&&$_smarty_tpl->tpl_vars['i']->value<count($_smarty_tpl->tpl_vars['san_pham_cung_loai']->value)) {?> 	
			<div class="item item-carousel">
			<div class="products">
				
	<div class="product featured-product">		
		<div class="product-image">
			<div class="image">
				<a href="sp_<?php echo thu_vien::bo_dau($_smarty_tpl->tpl_vars['spcl']->value->ten_san_pham);?>
.<?php echo $_smarty_tpl->tpl_vars['spcl']->value->ma_san_pham;?>
.html"><img  src="assets/images/products/<?php echo $_smarty_tpl->tpl_vars['spcl']->value->hinh;?>
" alt=""></a>
			</div><!-- /.image -->			

			 <div class="tag <?php echo $_smarty_tpl->tpl_vars['m_san_pham']->value->stick_class($_smarty_tpl->tpl_vars['spcl']->value->ma_san_pham);?>
"><span><?php echo $_smarty_tpl->tpl_vars['m_san_pham']->value->stick_class($_smarty_tpl->tpl_vars['spcl']->value->ma_san_pham,1);?>
</span></div>		   
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h3 class="name"><a href="sp_<?php echo thu_vien::bo_dau($_smarty_tpl->tpl_vars['spcl']->value->ten_san_pham);?>
.<?php echo $_smarty_tpl->tpl_vars['spcl']->value->ma_san_pham;?>
.html"><?php echo $_smarty_tpl->tpl_vars['spcl']->value->ten_san_pham;?>
</a></h3>
			<div class="rating-range">
                <div class="star-raw"></div>
                <div class="star-yel" style="width:<?php echo $_smarty_tpl->tpl_vars['m_san_pham']->value->star_yel($_smarty_tpl->tpl_vars['spcl']->value->ma_san_pham)*16;?>
px"></div>
            </div>
            <div class="product-price">	
            	<span class="price">
                    <?php echo number_format($_smarty_tpl->tpl_vars['spcl']->value->gia_ct,0,',','.');?>

                 </span>
                 <?php if ($_smarty_tpl->tpl_vars['spcl']->value->don_gia!=$_smarty_tpl->tpl_vars['spcl']->value->gia_ct) {?>
                  <span class="price-before-discount"><?php echo number_format($_smarty_tpl->tpl_vars['spcl']->value->don_gia);?>
 Đ</span>
                  <?php }?>
            </div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
		
        <div class="action">
            <label class="container-nut-cart"><a href="javascript:void(0)" class="lnk btn btn-primary">Add to cart</a></label>
            <input style="width:50px; text-align:center; height:34px" type="number" class="sl_dat_mua" name="sl_dat_mua" value="1"/>					
            <input type="hidden" class="gia_sp" value="<?php echo $_smarty_tpl->tpl_vars['spcl']->value->gia_ct;?>
"/>
             <input type="hidden" class="ten_sp" value="<?php echo $_smarty_tpl->tpl_vars['spcl']->value->ten_san_pham;?>
"/>	
              <input type="hidden" class="gia_tri_ma_sp" value="<?php echo $_smarty_tpl->tpl_vars['spcl']->value->ma_san_pham;?>
"/>
         </div>
			</div><!-- /.product -->
      
			</div><!-- /.products -->
		</div><!-- /.item -->
        <?php }?>
        	<?php } ?>
        	<?php }?>
        </div><!-- /.home-owl-carousel -->
			</section>
<div class="clearfix"></div>
<!--lightbox-->
<?php if (isset($_SESSION['login'])&&$_SESSION['login']==1&&empty($_smarty_tpl->tpl_vars['m_san_pham']->value->da_danh_gia($_smarty_tpl->tpl_vars['san_pham']->value->ma_san_pham,$_smarty_tpl->tpl_vars['id_login']->value))) {?>
<div id="lb_danh_gia_sp" class="light-box">
      <div class="head-light-box">
          <div class="in-head-lightbox">
              Review
          <span class="dau_X">X</span>
          </div>
      </div>
      
      <div class="content-lightbox">
          <div class="in-content-lightbox">
          
              <div class="danh-gia-san-pham" style="margin:auto; height:100px">
              
                <h3>Please give us feedback of product</h3>
                
                <div class="rating-reviews m-t-20">
                                      <div class="row">
                                          <div class="col-sm-3">
                                              <div class="rating-range">
                                                  <div class="star-raw"></div>
                                                  <div class="star-yel" style=""></div>
                                              </div>
                                          </div>
                                          
                                      </div><!-- /.row -->		
                                  </div><!-- /.rating-reviews -->
                    
              </div>
              
              <div style="width:70px; float:left; padding:10px 0; margin-left:25%">
                  <form name="frm_danh_gia" class="frm_danh_gia" method="post" action="">
                      <input type="hidden" value="" name="diem_danh_gia" id="diem_danh_gia"/>
                      <input type="hidden" value="<?php echo $_smarty_tpl->tpl_vars['ma_san_pham']->value;?>
" class="ma_san_pham" name=""/>
                      <input name="btn_danh_gia" class="nut-submit nut_chap_nhan_danh_gia" type="submit" value="Yes"/>
                  </form>
              </div>
              
          
               <div style="width:70px; float:right; padding:10px 0; margin-right:25%">
                  <input type="button" value="Cancel" class="nut-submit cancel"/>
               </div>
               <div class="clear"></div>
          </div>
      </div>
  </div>
<?php }?>
<!--end lightbox-->
<script>
$('.product-tab p img').css('width','90%');
</script><?php }} ?>
