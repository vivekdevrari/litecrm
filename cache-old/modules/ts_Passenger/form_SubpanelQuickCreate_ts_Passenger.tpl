

<script>
    {literal}
    $(document).ready(function(){
	    $("ul.clickMenu").each(function(index, node){
	        $(node).sugarActionMenu();
	    });
    });
    {/literal}
</script>
<div class="clear"></div>
<form action="index.php" method="POST" name="{$form_name}" id="{$form_id}" {$enctype}>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="dcQuickEdit">
<tr>
<td class="buttons">
<input type="hidden" name="module" value="{$module}">
{if isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true"}
<input type="hidden" name="record" value="">
<input type="hidden" name="duplicateSave" value="true">
<input type="hidden" name="duplicateId" value="{$fields.id.value}">
{else}
<input type="hidden" name="record" value="{$fields.id.value}">
{/if}
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="action">
<input type="hidden" name="return_module" value="{$smarty.request.return_module}">
<input type="hidden" name="return_action" value="{$smarty.request.return_action}">
<input type="hidden" name="return_id" value="{$smarty.request.return_id}">
<input type="hidden" name="module_tab"> 
<input type="hidden" name="contact_role">
{if (!empty($smarty.request.return_module) || !empty($smarty.request.relate_to)) && !(isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true")}
<input type="hidden" name="relate_to" value="{if $smarty.request.return_relationship}{$smarty.request.return_relationship}{elseif $smarty.request.relate_to && empty($smarty.request.from_dcmenu)}{$smarty.request.relate_to}{elseif empty($isDCForm) && empty($smarty.request.from_dcmenu)}{$smarty.request.return_module}{/if}">
<input type="hidden" name="relate_id" value="{$smarty.request.return_id}">
{/if}
<input type="hidden" name="offset" value="{$offset}">
{assign var='place' value="_HEADER"} <!-- to be used for id for buttons with custom code in def files-->
<div class="action_buttons">{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_ts_Passenger'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_ts_Passenger'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'ts_Passenger_subpanel_save_button');return false;" type="submit" name="ts_Passenger_subpanel_save_button" id="ts_Passenger_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if}  <input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="ts_Passenger_subpanel_cancel_button" id="ts_Passenger_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}">  <input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_ts_Passenger'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="ts_Passenger_subpanel_full_form_button" id="ts_Passenger_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form"> {if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=ts_Passenger", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}<div class="clear"></div></div>
</td>
<td align='right'>
{$PAGINATION}
</td>
</tr>
</table>{sugar_include include=$includes}
<span id='tabcounterJS'><script>SUGAR.TabFields=new Array();//this will be used to track tabindexes for references</script></span>
<div id="form_SubpanelQuickCreate_ts_Passenger_tabs"
>
<div >
<div id="detailpanel_1" class="{$def.templateMeta.panelClass|default:'edit view edit508'}">
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table width="100%" border="0" cellspacing="1" cellpadding="0"  id='LBL_CONTACT_INFORMATION'  class="yui3-skin-sam edit view panelContainer">
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='first_name_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_FIRST_NAME' module='ts_Passenger'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
{counter name="panelFieldCount"}
{html_options name="salutation" options=$fields.salutation.options selected=$fields.salutation.value}&nbsp;<input accesskey="7"  tabindex="0"  name="first_name" size="25" maxlength="25" type="text" value="{$fields.first_name.value}">
<td valign="top" id='assigned_user_name_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='ts_Passenger'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
{counter name="panelFieldCount"}

<input type="text" name="{$fields.assigned_user_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.assigned_user_name.name}" size="" value="{$fields.assigned_user_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.assigned_user_name.id_name}" 
id="{$fields.assigned_user_name.id_name}" 
value="{$fields.assigned_user_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.assigned_user_name.name}" id="btn_{$fields.assigned_user_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_LABEL"}"
onclick='open_popup(
"{$fields.assigned_user_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_ts_Passenger","field_to_name_array":{"id":"assigned_user_id","user_name":"assigned_user_name"}}{/literal}, 
"single", 
true
);' ><img src="{sugar_getimagepath file="id-ff-select.png"}"></button><button type="button" name="btn_clr_{$fields.assigned_user_name.name}" id="btn_clr_{$fields.assigned_user_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.assigned_user_name.name}', '{$fields.assigned_user_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_LABEL"}" ><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.assigned_user_name.name}']) != 'undefined'",
		enableQS
);
</script>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='last_name_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_LAST_NAME' module='ts_Passenger'}{/capture}
{$label|strip_semicolon}:
<span class="required">*</span>
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if strlen($fields.last_name.value) <= 0}
{assign var="value" value=$fields.last_name.default_value }
{else}
{assign var="value" value=$fields.last_name.value }
{/if}  
<input type='text' name='{$fields.last_name.name}' 
id='{$fields.last_name.name}' size='30' 
maxlength='100' 
value='{$value}' title=''      >
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='title_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_TITLE' module='ts_Passenger'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
{counter name="panelFieldCount"}

{if strlen($fields.title.value) <= 0}
{assign var="value" value=$fields.title.default_value }
{else}
{assign var="value" value=$fields.title.value }
{/if}  
<input type='text' name='{$fields.title.name}' 
id='{$fields.title.name}' size='30' 
maxlength='100' 
value='{$value}' title=''      >
<td valign="top" id='phone_work_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_OFFICE_PHONE' module='ts_Passenger'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
{counter name="panelFieldCount"}

{if strlen($fields.phone_work.value) <= 0}
{assign var="value" value=$fields.phone_work.default_value }
{else}
{assign var="value" value=$fields.phone_work.value }
{/if}  
<input type='text' name='{$fields.phone_work.name}' id='{$fields.phone_work.name}' size='30' maxlength='100' value='{$value}' title='' tabindex='0'	  class="phone" >
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='department_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_DEPARTMENT' module='ts_Passenger'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
{counter name="panelFieldCount"}

{if strlen($fields.department.value) <= 0}
{assign var="value" value=$fields.department.default_value }
{else}
{assign var="value" value=$fields.department.value }
{/if}  
<input type='text' name='{$fields.department.name}' 
id='{$fields.department.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
<td valign="top" id='phone_mobile_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_MOBILE_PHONE' module='ts_Passenger'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
{counter name="panelFieldCount"}

{if strlen($fields.phone_mobile.value) <= 0}
{assign var="value" value=$fields.phone_mobile.default_value }
{else}
{assign var="value" value=$fields.phone_mobile.value }
{/if}  
<input type='text' name='{$fields.phone_mobile.name}' id='{$fields.phone_mobile.name}' size='30' maxlength='100' value='{$value}' title='' tabindex='0'	  class="phone" >
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='phone_fax_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_FAX_PHONE' module='ts_Passenger'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
{counter name="panelFieldCount"}

{if strlen($fields.phone_fax.value) <= 0}
{assign var="value" value=$fields.phone_fax.default_value }
{else}
{assign var="value" value=$fields.phone_fax.value }
{/if}  
<input type='text' name='{$fields.phone_fax.name}' id='{$fields.phone_fax.name}' size='30' maxlength='100' value='{$value}' title='' tabindex='0'	  class="phone" >
<td valign="top" id='_label' width='12.5%' scope="col">
&nbsp;
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_CONTACT_INFORMATION").style.display='none';</script>
{/if}
<div id="detailpanel_2" class="{$def.templateMeta.panelClass|default:'edit view edit508'}">
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table width="100%" border="0" cellspacing="1" cellpadding="0"  id='LBL_EMAIL_ADDRESSES'  class="yui3-skin-sam edit view panelContainer">
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='email1_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_EMAIL_ADDRESS' module='ts_Passenger'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}
<span id='email1_span'>
{$fields.email1.value}</span>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EMAIL_ADDRESSES").style.display='none';</script>
{/if}
</div></div>

<script language="javascript">
    var _form_id = '{$form_id}';
    {literal}
    SUGAR.util.doWhen(function(){
        _form_id = (_form_id == '') ? 'EditView' : _form_id;
        return document.getElementById(_form_id) != null;
    }, SUGAR.themes.actionMenu);
    {/literal}
</script>
{assign var='place' value="_FOOTER"} <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
<div class="action_buttons">{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_ts_Passenger'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_ts_Passenger'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'ts_Passenger_subpanel_save_button');return false;" type="submit" name="ts_Passenger_subpanel_save_button" id="ts_Passenger_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if}  <input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="ts_Passenger_subpanel_cancel_button" id="ts_Passenger_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}">  <input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_ts_Passenger'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="ts_Passenger_subpanel_full_form_button" id="ts_Passenger_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form"> {if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=ts_Passenger", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}<div class="clear"></div></div>
</div>
</form>
{$set_focus_block}
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script><script type="text/javascript">
YAHOO.util.Event.onContentReady("form_SubpanelQuickCreate_ts_Passenger",
    function () {ldelim} initEditView(document.forms.form_SubpanelQuickCreate_ts_Passenger) {rdelim});
//window.setTimeout(, 100);
window.onbeforeunload = function () {ldelim} return onUnloadEditView(); {rdelim};
// bug 55468 -- IE is too aggressive with onUnload event
if ($.browser.msie) {ldelim}
$(document).ready(function() {ldelim}
    $(".collapseLink,.expandLink").click(function (e) {ldelim} e.preventDefault(); {rdelim});
  {rdelim});
{rdelim}
</script>{literal}
<script type="text/javascript">
addForm('form_SubpanelQuickCreate_ts_Passenger');addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'name', 'name', false,'{/literal}{sugar_translate label='LBL_NAME' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'date_entered_date', 'date', false,'Date Created' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'date_modified_date', 'date', false,'Date Modified' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'modified_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_MODIFIED' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'modified_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'created_by', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_CREATED' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'created_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CREATED' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'description', 'text', false,'{/literal}{sugar_translate label='LBL_DESCRIPTION' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'deleted', 'bool', false,'{/literal}{sugar_translate label='LBL_DELETED' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'assigned_user_id', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_ID' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'assigned_user_name', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'salutation', 'enum', false,'{/literal}{sugar_translate label='LBL_SALUTATION' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'first_name', 'varchar', false,'{/literal}{sugar_translate label='LBL_FIRST_NAME' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'last_name', 'varchar', true,'{/literal}{sugar_translate label='LBL_LAST_NAME' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'full_name', 'fullname', false,'{/literal}{sugar_translate label='LBL_NAME' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'title', 'varchar', false,'{/literal}{sugar_translate label='LBL_TITLE' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'photo', 'image', false,'{/literal}{sugar_translate label='LBL_PHOTO' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'department', 'varchar', false,'{/literal}{sugar_translate label='LBL_DEPARTMENT' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'do_not_call', 'bool', false,'{/literal}{sugar_translate label='LBL_DO_NOT_CALL' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'phone_home', 'phone', false,'{/literal}{sugar_translate label='LBL_HOME_PHONE' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'email', 'email', false,'{/literal}{sugar_translate label='LBL_ANY_EMAIL' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'phone_mobile', 'phone', false,'{/literal}{sugar_translate label='LBL_MOBILE_PHONE' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'phone_work', 'phone', false,'{/literal}{sugar_translate label='LBL_OFFICE_PHONE' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'phone_other', 'phone', false,'{/literal}{sugar_translate label='LBL_OTHER_PHONE' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'phone_fax', 'phone', false,'{/literal}{sugar_translate label='LBL_FAX_PHONE' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'email1', 'varchar', false,'{/literal}{sugar_translate label='LBL_EMAIL_ADDRESS' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'email2', 'varchar', false,'{/literal}{sugar_translate label='LBL_OTHER_EMAIL_ADDRESS' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'invalid_email', 'bool', false,'{/literal}{sugar_translate label='LBL_INVALID_EMAIL' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'email_opt_out', 'bool', false,'{/literal}{sugar_translate label='LBL_EMAIL_OPT_OUT' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'primary_address_street', 'varchar', false,'{/literal}{sugar_translate label='LBL_PRIMARY_ADDRESS_STREET' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'primary_address_street_2', 'varchar', false,'{/literal}{sugar_translate label='LBL_PRIMARY_ADDRESS_STREET_2' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'primary_address_street_3', 'varchar', false,'{/literal}{sugar_translate label='LBL_PRIMARY_ADDRESS_STREET_3' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'primary_address_city', 'varchar', false,'{/literal}{sugar_translate label='LBL_PRIMARY_ADDRESS_CITY' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'primary_address_state', 'varchar', false,'{/literal}{sugar_translate label='LBL_PRIMARY_ADDRESS_STATE' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'primary_address_postalcode', 'varchar', false,'{/literal}{sugar_translate label='LBL_PRIMARY_ADDRESS_POSTALCODE' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'primary_address_country', 'varchar', false,'{/literal}{sugar_translate label='LBL_PRIMARY_ADDRESS_COUNTRY' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'alt_address_street', 'varchar', false,'{/literal}{sugar_translate label='LBL_ALT_ADDRESS_STREET' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'alt_address_street_2', 'varchar', false,'{/literal}{sugar_translate label='LBL_ALT_ADDRESS_STREET_2' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'alt_address_street_3', 'varchar', false,'{/literal}{sugar_translate label='LBL_ALT_ADDRESS_STREET_3' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'alt_address_city', 'varchar', false,'{/literal}{sugar_translate label='LBL_ALT_ADDRESS_CITY' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'alt_address_state', 'varchar', false,'{/literal}{sugar_translate label='LBL_ALT_ADDRESS_STATE' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'alt_address_postalcode', 'varchar', false,'{/literal}{sugar_translate label='LBL_ALT_ADDRESS_POSTALCODE' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'alt_address_country', 'varchar', false,'{/literal}{sugar_translate label='LBL_ALT_ADDRESS_COUNTRY' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'assistant', 'varchar', false,'{/literal}{sugar_translate label='LBL_ASSISTANT' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'assistant_phone', 'phone', false,'{/literal}{sugar_translate label='LBL_ASSISTANT_PHONE' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'email_addresses_non_primary', 'email', false,'{/literal}{sugar_translate label='LBL_EMAIL_NON_PRIMARY' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'air_ticket_no_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_AIR_TICKET_NO' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'special_request_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_SPECIAL_REQUEST' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'acase_id_c', 'id', false,'{/literal}{sugar_translate label='LBL_TRIP_NAME_ACASE_ID' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'airline_c', 'enum', false,'{/literal}{sugar_translate label='LBL_AIRLINE' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'passenger_name_c', 'relate', false,'{/literal}{sugar_translate label='LBL_PASSENGER_NAME' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'deviations_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_DEVIATIONS' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'departure_gateway_c', 'enum', false,'{/literal}{sugar_translate label='LBL_DEPARTURE_GATEWAY' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'contact_id_c', 'id', false,'{/literal}{sugar_translate label='LBL_PASSENGER_NAME_CONTACT_ID' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'trip_name_c', 'relate', false,'{/literal}{sugar_translate label='LBL_TRIP_NAME' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'passenger_role_c', 'enum', false,'{/literal}{sugar_translate label='LBL_PASSENGER_ROLE' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'lead_passenger_c', 'bool', false,'{/literal}{sugar_translate label='LBL_LEAD_PASSENGER' module='ts_Passenger' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ts_Passenger', 'cases_ts_passenger_1_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CASES_TS_PASSENGER_1_FROM_CASES_TITLE' module='ts_Passenger' for_js=true}{literal}' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_ts_Passenger', 'assigned_user_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='ts_Passenger' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ASSIGNED_TO' module='ts_Passenger' for_js=true}{literal}', 'assigned_user_id' );
</script><script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['form_SubpanelQuickCreate_ts_Passenger_assigned_user_name']={"form":"form_SubpanelQuickCreate_ts_Passenger","method":"get_user_array","field_list":["user_name","id"],"populate_list":["assigned_user_name","assigned_user_id"],"required_list":["assigned_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"No Match"};</script>{/literal}
