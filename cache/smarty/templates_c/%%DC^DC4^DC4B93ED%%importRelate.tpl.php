<?php /* Smarty version 2.6.29, created on 2016-12-19 09:23:16
         compiled from modules/Emails/templates/importRelate.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_translate', 'modules/Emails/templates/importRelate.tpl', 91, false),)), $this); ?>
<?php echo $this->_tpl_vars['SQS']; ?>

<?php echo '
<script>

disabledModules = [];
enableQS(true);
function parent_typechangeQS() {
    var formName = '; ?>
'<?php echo $this->_tpl_vars['formName']; ?>
';<?php echo '
    var parentFieldName = formName + "_parent_name";
    
    disabledModules = [];
    new_module = document[formName].parent_type.value;
    
    if(typeof(disabledModules[new_module]) != \'undefined\') {
        sqs_objects[parentFieldName][\'disable\'] = true;
        document.getElementById(\'parent_name\').readOnly = true;
        document.getElementById(\'parent_name\').value = mod_strings[\'LBL_QS_DISABLED\'];
    }
    else {
        sqs_objects[parentFieldName][\'disable\'] = false;
        document.getElementById(\'parent_name\').readOnly = false;
    }   
    sqs_objects[parentFieldName][\'modules\'] = new Array(new_module);
    if (document.getElementById(\'smartInputFloater\')) document.getElementById(\'smartInputFloater\').style.display = \'none\';
    //var newArray = array();
    QSFieldsArray[parentFieldName].sqs.modules = new Array(new_module);

    enableQS(true);
}
</script>
'; ?>

<form name="<?php echo $this->_tpl_vars['formName']; ?>
" id="<?php echo $this->_tpl_vars['formName']; ?>
">
<div id="importDiv" class='edit view'>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
<td>
<input name="module" value="Emails" type="hidden">
<input name="record" value="<?php echo $this->_tpl_vars['emailId']; ?>
" type="hidden">
<input name="isDuplicate" value="false" type="hidden">
<input name="action" type="hidden">
<input name="return_module" type="hidden">
<input name="return_action" type="hidden">
<input name="return_id" type="hidden">
</td>
</tbody></table>
<table border="0" cellpadding="0" cellspacing="1" width="100%">
<tbody>
<tr>
<?php if ($this->_tpl_vars['showAssignedTo']): ?>
<td scope="row" nowrap="nowrap" valign="top" width="12%">
<script type="text/javascript">addToValidate("<?php echo $this->_tpl_vars['formName']; ?>
", "assigned_user_id", "relate", false, "<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ASSIGNED_TO_ID'), $this);?>
");</script>
<script type="text/javascript">addToValidate("<?php echo $this->_tpl_vars['formName']; ?>
", "assigned_user_name", "relate", false, "<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ASSIGNED_TO'), $this);?>
");</script>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ASSIGNED_TO'), $this);?>
:
</td>
<td nowrap="nowrap" width="37%">
<input name="assigned_user_name" class="sqsEnabled" tabindex="2" id="assigned_user_name" size="" value="<?php echo $this->_tpl_vars['userName']; ?>
" type="text">
<input name="assigned_user_id" id="assigned_user_id" value="<?php echo $this->_tpl_vars['userId']; ?>
" type="hidden">
<input name="btn_assigned_user_name" tabindex="2" title="<?php echo $this->_tpl_vars['APP']['LBL_SELECT_BUTTON_TITLE']; ?>
"  class="button" value="<?php echo $this->_tpl_vars['APP']['LBL_SELECT_BUTTON_LABEL']; ?>
" onclick='open_popup("Users", 600, 400, "", true, false, <?php echo '{"call_back_function":"set_return","form_name":"'; ?>
<?php echo $this->_tpl_vars['formName']; ?>
<?php echo '","field_to_name_array":{"id":"assigned_user_id","name":"assigned_user_name"}}'; ?>
, "single", true);' type="button">
<input name="btn_clr_assigned_user_name" tabindex="2" title="<?php echo $this->_tpl_vars['APP']['LBL_CLEAR_BUTTON_TITLE']; ?>
"  class="button" onclick="this.form.assigned_user_name.value = ''; this.form.assigned_user_id.value = '';" value="<?php echo $this->_tpl_vars['APP']['LBL_CLEAR_BUTTON_LABEL']; ?>
" type="button">
</td>
</tr>
<?php endif; ?>
<tr>
<td scope="row" nowrap="nowrap" valign="top" width="12%">
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_EMAIL_RELATE'), $this);?>
:
</td>
<td nowrap="nowrap" width="37%"><slot _moz-userdefined="">
<table><tr><td>
<select onchange=" document['<?php echo $this->_tpl_vars['formName']; ?>
'].parent_name.value=''; checkParentType(document['<?php echo $this->_tpl_vars['formName']; ?>
'].parent_type.value, document['<?php echo $this->_tpl_vars['formName']; ?>
'].change_parent); parent_typechangeQS();" name="parent_type" id="parent_type" tabindex="2">
<?php echo $this->_tpl_vars['parentOptions']; ?>
</select>
</slot>
</td><td>
<slot _moz-userdefined="">
<input type="hidden" value="" name="parent_id" id="parent_id"/>
<input type="text" value="" tabindex="2" name="parent_name" id="parent_name" class="sqsEnabled" autocomplete="OFF"/>
<input type="button"  onclick='<?php echo ' if(document["'; ?>
<?php echo $this->_tpl_vars['formName']; ?>
<?php echo '"].parent_type.value != ""){open_popup(document["'; ?>
<?php echo $this->_tpl_vars['formName']; ?>
<?php echo '"].parent_type.value,600,400,"",true,false,{"call_back_function":"set_return","form_name":"'; ?>
<?php echo $this->_tpl_vars['formName']; ?>
<?php echo '","field_to_name_array":{"id":"parent_id","name":"parent_name"}});}\''; ?>
 value="<?php echo $this->_tpl_vars['APP']['LBL_SELECT_BUTTON_LABEL']; ?>
"  title="<?php echo $this->_tpl_vars['APP']['LBL_SELECT_BUTTON_TITLE']; ?>
" class="button" tabindex="2" name="button" id="change_parent"/>
</slot>
</td></tr></table>
</td>
</tr>
<?php if ($this->_tpl_vars['showDelete']): ?>
<tr><td scope="row" nowrap="nowrap" valign="top" width="12%">
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_DELETE_FROM_SERVER'), $this);?>
:
</td>
<td nowrap="nowrap" width="37%">
<input class='ctabEditViewDF' type='checkbox' name='serverDelete'>
</td></tr>
<?php endif; ?>
</tbody></table>
</div>
</form>