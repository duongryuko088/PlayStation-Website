<?php /* Smarty version Smarty-3.1.18, created on 2021-12-07 15:54:46
         compiled from "views\v_danh_muc.tpl" */ ?>
<?php /*%%SmartyHeaderCode:161346014861af75b6926715-74073568%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '73f924065c1ea3b6e3b36b20014954973eb142d7' => 
    array (
      0 => 'views\\v_danh_muc.tpl',
      1 => 1510013508,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '161346014861af75b6926715-74073568',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'ds_loai_sp' => 0,
    'k' => 0,
    'loai' => 0,
    'm_san_pham' => 0,
    'ds_hang_sx' => 0,
    'hang' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_61af75b692ff61_29994802',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_61af75b692ff61_29994802')) {function content_61af75b692ff61_29994802($_smarty_tpl) {?><h3 class="section-title">Danh mục</h3>
<div class="sidebar-filter"> 
  <!-- ============================================== SIDEBAR CATEGORY ============================================== -->
  <div class="sidebar-widget wow fadeInUp outer-bottom-xs ">
    <div class="sidebar-widget-body m-t-10">
      <div class="accordion"> <?php  $_smarty_tpl->tpl_vars['loai'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['loai']->_loop = false;
 $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['ds_loai_sp']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['loai']->key => $_smarty_tpl->tpl_vars['loai']->value) {
$_smarty_tpl->tpl_vars['loai']->_loop = true;
 $_smarty_tpl->tpl_vars['k']->value = $_smarty_tpl->tpl_vars['loai']->key;
?>
        <div class="accordion-group">
          <div class="accordion-heading"> <a href="#collapse<?php echo $_smarty_tpl->tpl_vars['k']->value;?>
" data-toggle="collapse" class="accordion-toggle collapsed"> <?php echo $_smarty_tpl->tpl_vars['loai']->value->ten_nha_san_xuat;?>
 </a> </div>
          <!-- /.accordion-heading -->
          
          <div class="accordion-body collapse" id="collapse<?php echo $_smarty_tpl->tpl_vars['k']->value;?>
" style="height: 0px;">
            <div class="accordion-inner">
              <ul>
                <?php $_smarty_tpl->tpl_vars['ds_hang_sx'] = new Smarty_variable($_smarty_tpl->tpl_vars['m_san_pham']->value->ds_loai_sp($_smarty_tpl->tpl_vars['loai']->value->ma_nha_san_xuat), null, 0);?>
                <?php  $_smarty_tpl->tpl_vars['hang'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['hang']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['ds_hang_sx']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['hang']->key => $_smarty_tpl->tpl_vars['hang']->value) {
$_smarty_tpl->tpl_vars['hang']->_loop = true;
?>
                <li><a href="hang_<?php echo thu_vien::bo_dau($_smarty_tpl->tpl_vars['hang']->value->ten_nha_san_xuat);?>
.<?php echo $_smarty_tpl->tpl_vars['hang']->value->ma_nha_san_xuat;?>
"><?php echo $_smarty_tpl->tpl_vars['hang']->value->ten_nha_san_xuat;?>
</a></li>
                <?php } ?>
              </ul>
            </div>
            <!-- /.accordion-inner --> 
          </div>
          <!-- /.accordion-body --> 
        </div>
        <!-- /.accordion-group --> 
        <?php } ?> </div>
      <!-- /.accordion --> 
    </div>
    <!-- /.sidebar-widget-body --> 
  </div>
  <!-- /.sidebar-widget --> 
</div>
<?php }} ?>
