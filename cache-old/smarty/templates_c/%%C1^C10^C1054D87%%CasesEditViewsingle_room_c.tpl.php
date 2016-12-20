<?php /* Smarty version 2.6.29, created on 2016-10-25 12:46:00
         compiled from cache/modules/AOW_WorkFlow/CasesEditViewsingle_room_c.tpl */ ?>

<?php if (strlen ( $this->_tpl_vars['fields']['single_room_c']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['single_room_c']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['single_room_c']['value']); ?>
<?php endif; ?>  
<input type='text' name='<?php echo $this->_tpl_vars['fields']['single_room_c']['name']; ?>
' 
    id='<?php echo $this->_tpl_vars['fields']['single_room_c']['name']; ?>
' size='30' 
    maxlength='255' 
    value='<?php echo $this->_tpl_vars['value']; ?>
' title=''  tabindex='1'      >