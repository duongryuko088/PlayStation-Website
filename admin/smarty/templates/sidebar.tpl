<div id="sidebar">
  <div id="sidebar-wrapper"> <!-- Sidebar with logo and menu --> 
    
    <!-- Logo (221px wide) --> 
    <a href="home_page.php"><img id="logo" src="images/logo11.png" alt="logo" style="width:155px" /></a> 
    
    <!-- Sidebar Profile links -->
    <div id="profile-links"> Hi, <a href="cap_nhat_user.php" title="">{$smarty.session.ad_name}</a><br />
      <br />
      <a href="" title="View the Site">View the Site</a> | <a href="logout.php" title="Sign Out">Sign out</a> </div>
    <ul id="main-nav">
      <!-- Accordion Menu -->
      
      <li> <a href="" class="nav-top-item current"> <!-- Add the class "current" to current menu item --> 
        Manage </a> </li>
      <li> <a href="" class="nav-top-item">Posts</a>
        <ul>
          <li><a href="ds_bai_viet.php">Post list</a></li>
          <li><a href="cap_nhat_bai_viet.php">Add new post</a></li>
        </ul>
      </li>
      
      <li> <a href="" class="nav-top-item">Post type</a>
        <ul>
          <li><a href="ds_loai_bai_viet.php">List of post types</a></li>
          <li><a href="cap_nhat_loai_bai_viet.php">Add post type</a></li>
        </ul>
      </li>
      
      <li> <a href="" class="nav-top-item"> Product </a>
        <ul>
          <li><a href="san_pham.php">Product list</a></li>
          <li><a href="cap_nhat_san_pham.php">Add product</a></li>
        </ul>
      </li>
      
      <li> <a href="" class="nav-top-item">Product type </a>
        <ul>
          <li><a href="ds_loaisp.php">List of product types</a></li>
          <li><a href="cap_nhat_loaisp.php">Add new product type</a></li>
        </ul>
      </li>
      <li> <a href="" class="nav-top-item">Publisher</a>
        <ul>
          <li><a href="ds_hang.php">List of company</a></li>
          <li><a href="cap_nhat_hangsx.php">Add publisher</a></li>
        </ul>
      </li>
      <li> <a href="" class="nav-top-item">Slider</a>
        <ul>
          <li><a href="ds_hinh_slider.php">List of slider images - Add image</a></li>
          <li><a href="sap_xep_slider.php">Slider arrangement</a></li>
          <li><a href="them_bot_hinh_slider.php">Edit slider</a></li>
        </ul>
      </li>
      <li> <a href="ds_tag.php" class="nav-top-link">Tag</a> </li>
      <li> <a href="khach_hang.php" class="nav-top-link"> Customer </a> </li>
      <li> <a href="hoa_don.php" class="nav-top-link"> Order <span id="hoa_don_moi">{$m_hoa_don->so_hd_chua_xem()}</span> </a> </li>
      <li> <a href="nguoi_dung.php" class="nav-top-link"> User </a> </li>
      <li> <a href="lien_he.php" class="nav-top-link"> Contact <span id="lien-he-moi">{$m_lien_he->so_lh_chua_xem()}</span> </a> </li>
      <li> <a href="danh_gia.php" class="nav-top-link"> Reviews </a> </li>
    </ul>
    <!-- End #main-nav -->
    
    <div id="messages" style="display: none"> <!-- Messages are shown when a link with these attributes are clicked: href="#messages" rel="modal"  -->
      
      <h3>3 Messages</h3>
      <p> <strong>17th May 2009</strong> by Admin<br />
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
      <p> <strong>2nd May 2009</strong> by Jane Doe<br />
        Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
      <p> <strong>25th April 2009</strong> by Admin<br />
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
      <form action="#" method="post">
        <h4>New Message</h4>
        <fieldset>
          <textarea class="textarea" name="textfield" cols="79" rows="5"></textarea>
        </fieldset>
        <fieldset>
          <select name="dropdown" class="small-input">
            <option value="option1">Send to...</option>
            <option value="option2">Everyone</option>
            <option value="option3">Admin</option>
            <option value="option4">Jane Doe</option>
          </select>
          <input class="button" type="submit" value="Send" />
        </fieldset>
      </form>
    </div>
    <!-- End #messages --> 
    
  </div><!--end Sidebar with logo and menu --> 
</div><!-- end sidebar-->
