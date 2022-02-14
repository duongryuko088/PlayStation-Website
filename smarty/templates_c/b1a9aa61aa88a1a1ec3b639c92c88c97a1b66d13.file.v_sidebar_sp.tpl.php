<?php /* Smarty version Smarty-3.1.18, created on 2021-12-07 16:02:07
         compiled from "views\v_sidebar_sp.tpl" */ ?>
<?php /*%%SmartyHeaderCode:127582772261af776f391de6-80590035%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b1a9aa61aa88a1a1ec3b639c92c88c97a1b66d13' => 
    array (
      0 => 'views\\v_sidebar_sp.tpl',
      1 => 1509765096,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '127582772261af776f391de6-80590035',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_61af776f396954_60644405',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_61af776f396954_60644405')) {function content_61af776f396954_60644405($_smarty_tpl) {?><div class="col-xs-12 col-sm-12 col-md-3 sidebar">
			
			<!-- ================================== TOP NAVIGATION ================================== -->
<!-- /.side-menu -->
<!-- ================================== TOP NAVIGATION : END ================================== -->
			<!-- ============================================== Danh muc hang sx ============================================== -->
            <div class="sidebar-module-container">
            <?php echo $_smarty_tpl->getSubTemplate ("views/v_danh_muc.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

            <!-- ============================================== Danh muc hang sx : END ============================================== -->
            <?php echo $_smarty_tpl->getSubTemplate ("views/v_tag.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

                        <!-- ============================================== HOT DEALS ============================================== -->
            <?php echo $_smarty_tpl->getSubTemplate ("views/v_khuyen_mai_moi.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

            <!-- ============================================== HOT DEALS : END ============================================== -->
            </div>

		</div><?php }} ?>
