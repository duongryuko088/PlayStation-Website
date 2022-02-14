<?php /* Smarty version Smarty-3.1.18, created on 2021-12-07 14:48:11
         compiled from "views\404_403\v_404_403.tpl" */ ?>
<?php /*%%SmartyHeaderCode:167461557561af661b6109f3-78787603%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9fc71ada0129a39b4417c3747e54b181346be6cf' => 
    array (
      0 => 'views\\404_403\\v_404_403.tpl',
      1 => 1510018442,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '167461557561af661b6109f3-78787603',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'error' => 0,
    'content_err' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_61af661b634831_58550508',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_61af661b634831_58550508')) {function content_61af661b634831_58550508($_smarty_tpl) {?><div class="x-page inner-bottom-sm">
			<div class="row">
				<div class="col-md-12 x-text text-center">
					<h1><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</h1>
					<p><?php echo $_smarty_tpl->tpl_vars['content_err']->value;?>
. </p>
					
					<a href="."><i class="fa fa-home"></i> Go To Homepage</a>
				</div>
			</div><!-- /.row -->
		</div><?php }} ?>
