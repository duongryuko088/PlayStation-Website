<div class="row">
	<!-- ============================================== SIDEBAR ============================================== -->	
		{include file="views/v_sidebar_sp.tpl"}
        
        <!-- ============================================== CONTENT ============================================== -->
        <div class='col-md-9'>
        {if count($san_phams) > 0}
				<div class="clearfix filters-container m-t-10">
	<div class="row">
		
		<div class="col col-sm-12 col-md-6">
			<div class="col col-sm-3 col-md-6 no-padding">
				<div class="lbl-cnt">
					<span class="lbl">Sort by</span>
					<div class="fld inline">
						<div class="dropdown dropdown-small dropdown-med dropdown-white inline">
							<button id="nut_sort" data-toggle="dropdown" type="button" class="btn dropdown-toggle">
								Default <span class="caret"></span>
							</button>

							<ul role="menu" class="dropdown-menu">
								<li role="presentation">
                                	<input class="kieu_sort" type="hidden" value="order by ma_san_pham desc"/>
                                    <a class="link_sort" href="#">Default</a>
                                </li>
								<li role="presentation">
                                	<input class="kieu_sort" type="hidden" value="order by ten_san_pham"/>
                                	<a class="link_sort" href="#">Name: A-Z</a>
                                </li>
								<li role="presentation">
                                	<input class="kieu_sort" type="hidden" value="order by ten_san_pham desc"/>
                                	<a class="link_sort" href="#">Name: Z-A</a>
                                </li>
								<li role="presentation">
                                	<input class="kieu_sort" type="hidden" value="order by gia_ct desc"/>
                                	<a class="link_sort" href="#">Price: High-Low</a>
                                </li>
                                <li role="presentation">
                                	<input class="kieu_sort" type="hidden" value="order by gia_ct"/>
                                	<a class="link_sort" href="#">Price: Low-High</a>
                                </li>
							</ul>
						</div>
					</div><!-- /.fld -->
				</div><!-- /.lbl-cnt -->
			</div><!-- /.col -->
			
		</div><!-- /.col -->
        
        <div class="col col-sm-12 col-md-6">
			<div class="col col-sm-3 col-md-6 no-padding">
				<div class="lbl-cnt">
					<span class="lbl">Price</span>
					<div class="fld inline">
						<div class="dropdown dropdown-small dropdown-med dropdown-white inline">
							<button id="nut_filter" data-toggle="dropdown" type="button" class="btn dropdown-toggle">
                                Default <span class="caret"></span>
							</button>

							<ul role="menu" class="dropdown-menu">
								<li role="presentation">
                                	<input class="kieu_filter" type="hidden" value="order by ma_san_pham desc"/>
                                    <a class="link_filter" href="#">Default</a>
                                </li>
								<li role="presentation">
                                	<input class="kieu_filter" type="hidden" value="and don_gia*(1- khuyen_mai/100) < 2000000 order by gia_ct"/>
                                	<a class="link_filter" href="#">Under 2,000,000</a>
                                </li>
								<li role="presentation">
                                	<input class="kieu_filter" type="hidden" value="and don_gia*(1- khuyen_mai/100) between 2000000 and 5000000 order by gia_ct"/>
                                	<a class="link_filter" href="#">2,000,000 - 5,000,000</a>
                                </li>
								<li role="presentation">
                                	<input class="kieu_filter" type="hidden" value="and don_gia*(1- khuyen_mai/100) between 5000000 and 10000000 order by gia_ct"/>
                                	<a class="link_filter" href="#">5,000,000 - 10,000,000</a>
                                </li>
                                <li role="presentation">
                                	<input class="kieu_filter" type="hidden" value="and don_gia*(1- khuyen_mai/100) > 10000000 order by gia_ct"/>
                                	<a class="link_filter" href="#">10,000,000 & above</a>
                                </li>
							</ul>
						</div>
					</div><!-- /.fld -->
				</div><!-- /.lbl-cnt -->
			</div><!-- /.col -->
			
		</div>
		<input type="hidden" id="input_products" value="{$input_products}"/>
	</div><!-- /.row -->
</div>
				<div class="search-result-container">
                    <div id="wrap-search-result-container">
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane active " id="grid-container">
                                <div class="category-product  inner-top-vs">
                                    <div class="row">
                                    {foreach $san_phams as $k => $sp}	
                                    {if $k < 9}							
                                        <div class="col-sm-6 col-md-4 wow fadeInUp">
                                            <div class="products grid-product">
                                                
                                    <div class="product">		
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="sp_{thu_vien::bo_dau($sp->ten_san_pham)}.{$sp->ma_san_pham}.html"><img  src="assets/images/products/{$sp->hinh}" alt=""></a>
                                            </div><!-- /.image -->			
                                
                                            <div class="tag {$m_san_pham->stick_class($sp->ma_san_pham)}"><span>{$m_san_pham->stick_class($sp->ma_san_pham,1)}</span></div>                       		   
                                        </div><!-- /.product-image -->
                                            
                                        
                                        <div class="product-info text-left">
                                            <h3 class="name"><a href="sp_{thu_vien::bo_dau($sp->ten_san_pham)}.{$sp->ma_san_pham}.html">{$sp->ten_san_pham}</a></h3>
                                            <div class="rating-range">
                                                <div class="star-raw"></div>
                                                <div class="star-yel" style="width:{$m_san_pham->star_yel($sp->ma_san_pham)*16}px"></div>
                                            </div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    {number_format($sp->gia_ct,0,',','.')}
                                                </span>
                                                {if $sp->don_gia != $sp->gia_ct}
                                                <span class="price-before-discount">{number_format($sp->don_gia)} VND</span>
                                                {/if}
                                            </div><!-- /.product-price -->
                                            
                                        </div><!-- /.product-info -->
                                                    <div class="cart clearfix animate-effect">
                                                <div class="action">
                                                    <ul class="list-unstyled">
                                                        <li class="add-cart-button btn-group">
                                                        	<label class="container-nut-cart">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                    <i class="fa fa-shopping-cart"></i>													
                                                                </button>
                                                                <button class="btn btn-primary" type="button">Add to cart</button>
                                                             </label>
                                                             <input style="width:50px; text-align:center; height:34px" type="number" class="sl_dat_mua" name="sl_dat_mua" value="1"/>					
                                                              <input type="hidden" class="gia_sp" value="{$sp->don_gia*(1-$sp->khuyen_mai/100)}"/>
                                                              <input type="hidden" class="ten_sp" value="{$sp->ten_san_pham}"/>	
                                                        	<input type="hidden" class="gia_tri_ma_sp" value="{$sp->ma_san_pham}"/>                        
                                                        </li>
                                                    </ul>
                                                </div><!-- /.action -->
                                            </div><!-- /.cart -->
                                            </div><!-- /.product -->
                                      
                                            </div><!-- /.products -->
                                         </div><!-- /.item -->
                                         {/if}
                                    {/foreach}
                                    </div><!-- /.row -->
                                </div><!-- /.category-product -->
                            </div><!-- /.tab-pane -->
                                
                            <input type="hidden" id="input_products_2" value="{$input_products},order by ma_san_pham desc"/>
                            <input type="hidden" id="sl_sp" value="9"/>
                            {if count($san_phams) >9}
                            <div class="container-button-xemthem">
                            	<div class="wrap-button-xemthem">
                            		<input class="btn-xemthem" type="button" value="View more"/>
                                 </div>
                            </div>
                            {/if}
                            {include file="views/script_xl_sp.tpl"}
                        </div><!-- /.tab-content -->
                    </div><!--end wrap-search-result-container-->
					<div class="clearfix filters-container">
						
					</div><!-- /.filters-container -->

				</div><!-- /.search-result-container -->
        {else}
        <h3>Order soon</h3>
        {/if}
		</div>
        <!-- ============================================== CONTENT : END============================================== -->
            <!-- /.col -->
</div> <!-- ========= row : END =========== -->
