	<!-- ============================================== BRANDS CAROUSEL ============================================== -->
{block name="brand_carousel"}{include file="brand_carousel.tpl"}{/block}<!-- /.logo-slider -->
<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
	</div><!-- /.container -->
</div><!-- /#top-banner-and-menu -->
<!-- ============================================================= FOOTER ============================================================= -->
<footer id="footer" class="footer color-bg">

    <div class="footer-bottom inner-bottom-sm">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-6">
                    <p style="line-height:30px">
                	<strong style="font-size:20px">ULTIMATE STORE</strong><br>
                    Providing products for Playstation, particularly from game DVDs to game consoles.<br>
                    Moreover, we will bring you new experiences in life.<br>
                    Address: 475A Dien Bien Phu Street, Ward 25, Binh Thanh District, HaNoi <br>
                    Phone number: (028) 123 456 789      Fax: (08)7654321<br>
                    Email: ultimatestore@gmail.com 
                	</p>
                </div><!-- /.col -->

                <div style="position:relative; min-height:200px;line-height:30px" class="col-xs-12 col-md-6">
                	<strong style="font-size:20px">Opening from 8:30 am to 7:00 pm</strong>
                    <p>From Monday to Saturday , except Sunday and Tet Holiday.</p>
                    <div class="div-bocongthuong">
                		<img class="icon-bocongthuong" src="assets/images/icon/20150827110756-dathongbao.png"/>
                	</div>
                </div><!-- /.col -->
            </div>
        </div>
    </div>

    <div class="copyright-bar">
        <div class="container">
            <div class="col-xs-12 col-sm-6 no-padding">
                <div class="copyright">
                   Copyright © 2017
                    <a href=".">Unlimited Store</a>
                    - All rights Reserved
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 no-padding">
                <div class="clearfix payment-methods">
                </div><!-- /.payment-methods -->
            </div>
        </div>
    </div>
</footer>
<!-- ============================================================= FOOTER : END============================================================= -->


	<!-- For demo purposes – can be removed on production -->
	
	<!--<div class="config open">
		<div class="config-options">
			<h4>Pages</h4>
			<ul class="list-unstyled animate-dropdown">
				<li class="dropdown">
					<button class="dropdown-toggle btn btn-primary btn-block" data-toggle="dropdown">View Pages</button>
					<ul class="dropdown-menu" role="menu">
						<li role="presentation" class="dropdown-header">Home Pages</li>
						<li><a href="home.html">Home</a></li>
						<li><a href="home2.html">Home II</a></li>
						<li><a href="home-furniture.html">Home Furniture</a></li>
						<li><a href="homepage1.html">Home Page I</a></li>
						<li><a href="homepage2.html">Home Page II</a></li>
					  	<li class="divider"></li>
					  	<li role="presentation" class="dropdown-header">Other Pages</li>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="blog-details.html">Blog Details</a></li>
						<li><a href="category.html">Category</a></li>
						<li><a href="category-2.html">Category II</a></li>
						<li><a href="checkout.html">Checkout</a></li>
						<li><a href="contact.html">Contact</a></li>
						<li><a href="detail.html">Detail</a></li>
						<li><a href="detail2.html">Detail II</a></li>
						<li><a href="shopping-cart.html">Shopping Cart Summary</a></li>						
						
					</ul>
				</li>
			</ul>
			<h4>Header Styles</h4>
			<ul class="list-unstyled">
				<li><a href="home.html">Header 1</a></li>
				<li><a href="homepage1.html">Header 2</a></li>
				<li><a href="home-furniture.html">Header 3</a></li>
			</ul>
			<h4>Layouts</h4>
			<ul class="list-unstyled">
				<li><a href="homepage1.html">Full Width</a></li>
				<li><a href="homepage2.html">Boxed</a></li>
			</ul>
			<h4>Colors</h4>
			<ul>
				<li><a class="changecolor green-text" href="#" title="Green color">Green</a></li>
                <li><a class="changecolor blue-text" href="#" title="Blue color">Blue</a></li>
                <li><a class="changecolor red-text" href="#" title="Red color">Red</a></li>
                <li><a class="changecolor orange-text" href="#" title="Orange color">Orange</a></li>
                <li><a class="changecolor dark-green-text" href="#" title="Darkgreen color">Dark Green</a></li>
			</ul>
		</div>
		<a class="show-theme-options" href="#"><i class="fa fa-wrench"></i></a>
	</div>-->
	<!-- For demo purposes – can be removed on production : End -->
	
	<script>
		$(document).ready(function(){ 
			$(".changecolor").switchstylesheet( { seperator:"color"} );
			$('.show-theme-options').click(function(){
				$(this).parent().toggleClass('open');
				return false;
			});
		});

		$(window).bind("load", function() {
		   $('.show-theme-options').delay(2000).trigger('click');
		});
	</script>
	<!-- For demo purposes – can be removed on production : End -->

</body>
</html>
