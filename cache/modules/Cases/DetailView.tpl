

<script language="javascript">
{literal}
SUGAR.util.doWhen(function(){
    return $("#contentTable").length == 0;
}, SUGAR.themes.actionMenu);
{/literal}
</script>
<table cellpadding="0" cellspacing="0" border="0" width="100%" id="">
<tr>
<td class="buttons" align="left" NOWRAP width="80%">
<div class="actionsContainer">
<form action="index.php" method="post" name="DetailView" id="formDetailView">
<input type="hidden" name="module" value="{$module}">
<input type="hidden" name="record" value="{$fields.id.value}">
<input type="hidden" name="return_action">
<input type="hidden" name="return_module">
<input type="hidden" name="return_id">
<input type="hidden" name="module_tab">
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="offset" value="{$offset}">
<input type="hidden" name="action" value="EditView">
<input type="hidden" name="sugar_body_only">
</form>
<ul id="detail_header_action_menu" class="clickMenu fancymenu" ><li class="sugar_action_button" >{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Cases'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} <ul id class="subnav" ><li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Cases'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} </li><li>{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Cases'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form);" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} </li><li>{if $bean->aclAccess("edit") && $bean->aclAccess("delete")}<input title="{$APP.LBL_DUP_MERGE}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Cases'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='Step1'; _form.module.value='MergeRecords';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Merge" value="{$APP.LBL_DUP_MERGE}" id="merge_duplicate_button">{/if} </li><li>{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=Cases", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}</li></ul></li></ul>
</div>
</td>
<td align="right" width="20%">{$ADMIN_EDIT}
{$PAGINATION}
</td>
</tr>
</table>{sugar_include include=$includes}
<div id="Cases_detailview_tabs"
>
<div >
<div id='detailpanel_1' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<h4>
<a href="javascript:void(0)" class="collapseLink" onclick="collapsePanel(1);">
<img border="0" id="detailpanel_1_img_hide" src="{sugar_getimagepath file="basic_search.gif"}"></a>
<a href="javascript:void(0)" class="expandLink" onclick="expandPanel(1);">
<img border="0" id="detailpanel_1_img_show" src="{sugar_getimagepath file="advanced_search.gif"}"></a>
{sugar_translate label='LBL_CASE_INFORMATION' module='Cases'}
<script>
      document.getElementById('detailpanel_1').className += ' expanded';
    </script>
</h4>
<table id='LBL_CASE_INFORMATION' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.case_number.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CASE_NUMBER' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="" type="int" field="case_number" width='37.5%'  >
{if !$fields.case_number.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.case_number.name}">
{assign var="value" value=$fields.case_number.value }
{$value}
</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_SUBJECT' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="name" field="name" width='37.5%'  >
{if !$fields.name.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.name.value) <= 0}
{assign var="value" value=$fields.name.default_value }
{else}
{assign var="value" value=$fields.name.value }
{/if} 
<span class="sugar_field" id="{$fields.name.name}">{$fields.name.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.priority.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PRIORITY' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="enum" field="priority" width='37.5%'  >
{if !$fields.priority.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.priority.options)}
<input type="hidden" class="sugar_field" id="{$fields.priority.name}" value="{ $fields.priority.options }">
{ $fields.priority.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.priority.name}" value="{ $fields.priority.value }">
{ $fields.priority.options[$fields.priority.value]}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.office_no_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_OFFICE_NO' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="phone" field="office_no_c" width='37.5%'  class="phone">
{if !$fields.office_no_c.hidden}
{counter name="panelFieldCount"}

{if !empty($fields.office_no_c.value)}
{assign var="phone_value" value=$fields.office_no_c.value }
{sugar_phone value=$phone_value usa_format="0"}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.lead_source_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_LEAD_SOURCE' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="enum" field="lead_source_c" width='37.5%'  >
{if !$fields.lead_source_c.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.lead_source_c.options)}
<input type="hidden" class="sugar_field" id="{$fields.lead_source_c.name}" value="{ $fields.lead_source_c.options }">
{ $fields.lead_source_c.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.lead_source_c.name}" value="{ $fields.lead_source_c.value }">
{ $fields.lead_source_c.options[$fields.lead_source_c.value]}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.travelled_before_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_TRAVELLED_BEFORE' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="enum" field="travelled_before_c" width='37.5%'  >
{if !$fields.travelled_before_c.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.travelled_before_c.options)}
<input type="hidden" class="sugar_field" id="{$fields.travelled_before_c.name}" value="{ $fields.travelled_before_c.options }">
{ $fields.travelled_before_c.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.travelled_before_c.name}" value="{ $fields.travelled_before_c.value }">
{ $fields.travelled_before_c.options[$fields.travelled_before_c.value]}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.status.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="dynamicenum" field="status" width='37.5%'  >
{if !$fields.status.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.status.options)}
<input type="hidden" class="sugar_field" id="{$fields.status.name}" value="{ $fields.status.options }">
{ $fields.status.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.status.name}" value="{ $fields.status.value }">
{ $fields.status.options[$fields.status.value]}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.assigned_user_name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="relate" field="assigned_user_name" width='37.5%'  >
{if !$fields.assigned_user_name.hidden}
{counter name="panelFieldCount"}

<span id="assigned_user_id" class="sugar_field" data-id-value="{$fields.assigned_user_id.value}">{$fields.assigned_user_name.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.trip_start_date_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_TRIP_START_DATE' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="date" field="trip_start_date_c" width='37.5%'  >
{if !$fields.trip_start_date_c.hidden}
{counter name="panelFieldCount"}


{if strlen($fields.trip_start_date_c.value) <= 0}
{assign var="value" value=$fields.trip_start_date_c.default_value }
{else}
{assign var="value" value=$fields.trip_start_date_c.value }
{/if}
<span class="sugar_field" id="{$fields.trip_start_date_c.name}">{$value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.trip_end_date_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_TRIP_END_DATE' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="date" field="trip_end_date_c" width='37.5%'  >
{if !$fields.trip_end_date_c.hidden}
{counter name="panelFieldCount"}


{if strlen($fields.trip_end_date_c.value) <= 0}
{assign var="value" value=$fields.trip_end_date_c.default_value }
{else}
{assign var="value" value=$fields.trip_end_date_c.value }
{/if}
<span class="sugar_field" id="{$fields.trip_end_date_c.name}">{$value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
&nbsp;
</td>
<td class="" type="" field="" width='37.5%' colspan='3' >
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
<script type="text/javascript">SUGAR.util.doWhen("typeof initPanel == 'function'", function() {ldelim} initPanel(1, 'expanded'); {rdelim}); </script>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_CASE_INFORMATION").style.display='none';</script>
{/if}
<div id='detailpanel_2' class='detail view  detail508 collapsed'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<h4>
<a href="javascript:void(0)" class="collapseLink" onclick="collapsePanel(2);">
<img border="0" id="detailpanel_2_img_hide" src="{sugar_getimagepath file="basic_search.gif"}"></a>
<a href="javascript:void(0)" class="expandLink" onclick="expandPanel(2);">
<img border="0" id="detailpanel_2_img_show" src="{sugar_getimagepath file="advanced_search.gif"}"></a>
{sugar_translate label='LBL_EDITVIEW_PANEL3' module='Cases'}
<script>
      document.getElementById('detailpanel_2').className += ' collapsed';
    </script>
</h4>
<table id='LBL_EDITVIEW_PANEL3' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.aop_case_updates_threaded.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_AOP_CASE_UPDATES_THREADED' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="" type="function" field="aop_case_updates_threaded" width='37.5%' colspan='3' >
{if !$fields.aop_case_updates_threaded.hidden}
{counter name="panelFieldCount"}
<span id='aop_case_updates_threaded_span'>
{$fields.aop_case_updates_threaded.value}
</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
<script type="text/javascript">SUGAR.util.doWhen("typeof initPanel == 'function'", function() {ldelim} initPanel(2, 'collapsed'); {rdelim}); </script>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EDITVIEW_PANEL3").style.display='none';</script>
{/if}
<div id='detailpanel_3' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<h4>
<a href="javascript:void(0)" class="collapseLink" onclick="collapsePanel(3);">
<img border="0" id="detailpanel_3_img_hide" src="{sugar_getimagepath file="basic_search.gif"}"></a>
<a href="javascript:void(0)" class="expandLink" onclick="expandPanel(3);">
<img border="0" id="detailpanel_3_img_show" src="{sugar_getimagepath file="advanced_search.gif"}"></a>
{sugar_translate label='LBL_EDITVIEW_PANEL2' module='Cases'}
<script>
      document.getElementById('detailpanel_3').className += ' expanded';
    </script>
</h4>
<table id='LBL_EDITVIEW_PANEL2' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.countries_of_interest_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_COUNTRIES_OF_INTEREST' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="enum" field="countries_of_interest_c" width='37.5%'  >
{if !$fields.countries_of_interest_c.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.countries_of_interest_c.options)}
<input type="hidden" class="sugar_field" id="{$fields.countries_of_interest_c.name}" value="{ $fields.countries_of_interest_c.options }">
{ $fields.countries_of_interest_c.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.countries_of_interest_c.name}" value="{ $fields.countries_of_interest_c.value }">
{ $fields.countries_of_interest_c.options[$fields.countries_of_interest_c.value]}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.preferred_hotel_category_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PREFERRED_HOTEL_CATEGORY' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="enum" field="preferred_hotel_category_c" width='37.5%'  >
{if !$fields.preferred_hotel_category_c.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.preferred_hotel_category_c.options)}
<input type="hidden" class="sugar_field" id="{$fields.preferred_hotel_category_c.name}" value="{ $fields.preferred_hotel_category_c.options }">
{ $fields.preferred_hotel_category_c.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.preferred_hotel_category_c.name}" value="{ $fields.preferred_hotel_category_c.value }">
{ $fields.preferred_hotel_category_c.options[$fields.preferred_hotel_category_c.value]}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.city_1_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CITY_1' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="city_1_c" width='37.5%'  >
{if !$fields.city_1_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.city_1_c.value) <= 0}
{assign var="value" value=$fields.city_1_c.default_value }
{else}
{assign var="value" value=$fields.city_1_c.value }
{/if} 
<span class="sugar_field" id="{$fields.city_1_c.name}">{$fields.city_1_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.nights_1_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_NIGHTS_1' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="nights_1_c" width='37.5%'  >
{if !$fields.nights_1_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.nights_1_c.value) <= 0}
{assign var="value" value=$fields.nights_1_c.default_value }
{else}
{assign var="value" value=$fields.nights_1_c.value }
{/if} 
<span class="sugar_field" id="{$fields.nights_1_c.name}">{$fields.nights_1_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.city_2_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CITY_2' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="city_2_c" width='37.5%'  >
{if !$fields.city_2_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.city_2_c.value) <= 0}
{assign var="value" value=$fields.city_2_c.default_value }
{else}
{assign var="value" value=$fields.city_2_c.value }
{/if} 
<span class="sugar_field" id="{$fields.city_2_c.name}">{$fields.city_2_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.nights_2_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_NIGHTS_2' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="nights_2_c" width='37.5%'  >
{if !$fields.nights_2_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.nights_2_c.value) <= 0}
{assign var="value" value=$fields.nights_2_c.default_value }
{else}
{assign var="value" value=$fields.nights_2_c.value }
{/if} 
<span class="sugar_field" id="{$fields.nights_2_c.name}">{$fields.nights_2_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.city_3_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CITY_3' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="city_3_c" width='37.5%'  >
{if !$fields.city_3_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.city_3_c.value) <= 0}
{assign var="value" value=$fields.city_3_c.default_value }
{else}
{assign var="value" value=$fields.city_3_c.value }
{/if} 
<span class="sugar_field" id="{$fields.city_3_c.name}">{$fields.city_3_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.nights_3_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_NIGHTS_3' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="nights_3_c" width='37.5%'  >
{if !$fields.nights_3_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.nights_3_c.value) <= 0}
{assign var="value" value=$fields.nights_3_c.default_value }
{else}
{assign var="value" value=$fields.nights_3_c.value }
{/if} 
<span class="sugar_field" id="{$fields.nights_3_c.name}">{$fields.nights_3_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.city_4_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CITY_4' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="city_4_c" width='37.5%'  >
{if !$fields.city_4_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.city_4_c.value) <= 0}
{assign var="value" value=$fields.city_4_c.default_value }
{else}
{assign var="value" value=$fields.city_4_c.value }
{/if} 
<span class="sugar_field" id="{$fields.city_4_c.name}">{$fields.city_4_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.nights_4_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_NIGHTS_4' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="nights_4_c" width='37.5%'  >
{if !$fields.nights_4_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.nights_4_c.value) <= 0}
{assign var="value" value=$fields.nights_4_c.default_value }
{else}
{assign var="value" value=$fields.nights_4_c.value }
{/if} 
<span class="sugar_field" id="{$fields.nights_4_c.name}">{$fields.nights_4_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.comments_and_requests_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_COMMENTS_AND_REQUESTS' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="text" field="comments_and_requests_c" width='37.5%'  >
{if !$fields.comments_and_requests_c.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.comments_and_requests_c.name|escape:'html'|url2html|nl2br}">{$fields.comments_and_requests_c.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.special_occassion_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_SPECIAL_OCCASSION' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="special_occassion_c" width='37.5%'  >
{if !$fields.special_occassion_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.special_occassion_c.value) <= 0}
{assign var="value" value=$fields.special_occassion_c.default_value }
{else}
{assign var="value" value=$fields.special_occassion_c.value }
{/if} 
<span class="sugar_field" id="{$fields.special_occassion_c.name}">{$fields.special_occassion_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.transfer_mode_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_TRANSFER_MODE' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="enum" field="transfer_mode_c" width='37.5%'  >
{if !$fields.transfer_mode_c.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.transfer_mode_c.options)}
<input type="hidden" class="sugar_field" id="{$fields.transfer_mode_c.name}" value="{ $fields.transfer_mode_c.options }">
{ $fields.transfer_mode_c.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.transfer_mode_c.name}" value="{ $fields.transfer_mode_c.value }">
{ $fields.transfer_mode_c.options[$fields.transfer_mode_c.value]}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.tour_mode_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_TOUR_MODE' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="enum" field="tour_mode_c" width='37.5%'  >
{if !$fields.tour_mode_c.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.tour_mode_c.options)}
<input type="hidden" class="sugar_field" id="{$fields.tour_mode_c.name}" value="{ $fields.tour_mode_c.options }">
{ $fields.tour_mode_c.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.tour_mode_c.name}" value="{ $fields.tour_mode_c.value }">
{ $fields.tour_mode_c.options[$fields.tour_mode_c.value]}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.tour_details_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_TOUR_DETAILS' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="text" field="tour_details_c" width='37.5%'  >
{if !$fields.tour_details_c.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.tour_details_c.name|escape:'html'|url2html|nl2br}">{$fields.tour_details_c.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.flight_details_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_FLIGHT_DETAILS' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="text" field="flight_details_c" width='37.5%'  >
{if !$fields.flight_details_c.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.flight_details_c.name|escape:'html'|url2html|nl2br}">{$fields.flight_details_c.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.stage_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_STAGE' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="enum" field="stage_c" width='37.5%'  >
{if !$fields.stage_c.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.stage_c.options)}
<input type="hidden" class="sugar_field" id="{$fields.stage_c.name}" value="{ $fields.stage_c.options }">
{ $fields.stage_c.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.stage_c.name}" value="{ $fields.stage_c.value }">
{ $fields.stage_c.options[$fields.stage_c.value]}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.amount_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_AMOUNT' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="currency" field="amount_c" width='37.5%'  >
{if !$fields.amount_c.hidden}
{counter name="panelFieldCount"}

<span id='{$fields.amount_c.name}'>
{sugar_number_format var=$fields.amount_c.value }
</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.closing_date_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLOSING_DATE' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="date" field="closing_date_c" width='37.5%'  >
{if !$fields.closing_date_c.hidden}
{counter name="panelFieldCount"}


{if strlen($fields.closing_date_c.value) <= 0}
{assign var="value" value=$fields.closing_date_c.default_value }
{else}
{assign var="value" value=$fields.closing_date_c.value }
{/if}
<span class="sugar_field" id="{$fields.closing_date_c.name}">{$value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.payment_status_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PAYMENT_STATUS' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="enum" field="payment_status_c" width='37.5%'  >
{if !$fields.payment_status_c.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.payment_status_c.options)}
<input type="hidden" class="sugar_field" id="{$fields.payment_status_c.name}" value="{ $fields.payment_status_c.options }">
{ $fields.payment_status_c.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.payment_status_c.name}" value="{ $fields.payment_status_c.value }">
{ $fields.payment_status_c.options[$fields.payment_status_c.value]}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.balance_due_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_BALANCE_DUE' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="currency" field="balance_due_c" width='37.5%' colspan='3' >
{if !$fields.balance_due_c.hidden}
{counter name="panelFieldCount"}

<span id='{$fields.balance_due_c.name}'>
{sugar_number_format var=$fields.balance_due_c.value }
</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
<script type="text/javascript">SUGAR.util.doWhen("typeof initPanel == 'function'", function() {ldelim} initPanel(3, 'expanded'); {rdelim}); </script>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EDITVIEW_PANEL2").style.display='none';</script>
{/if}
<div id='detailpanel_4' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<h4>
<a href="javascript:void(0)" class="collapseLink" onclick="collapsePanel(4);">
<img border="0" id="detailpanel_4_img_hide" src="{sugar_getimagepath file="basic_search.gif"}"></a>
<a href="javascript:void(0)" class="expandLink" onclick="expandPanel(4);">
<img border="0" id="detailpanel_4_img_show" src="{sugar_getimagepath file="advanced_search.gif"}"></a>
{sugar_translate label='LBL_EDITVIEW_PANEL1' module='Cases'}
<script>
      document.getElementById('detailpanel_4').className += ' expanded';
    </script>
</h4>
<table id='LBL_EDITVIEW_PANEL1' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.noof_nights_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_NOOF_NIGHTS' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="noof_nights_c" width='37.5%'  >
{if !$fields.noof_nights_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.noof_nights_c.value) <= 0}
{assign var="value" value=$fields.noof_nights_c.default_value }
{else}
{assign var="value" value=$fields.noof_nights_c.value }
{/if} 
<span class="sugar_field" id="{$fields.noof_nights_c.name}">{$fields.noof_nights_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.adults_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_ADULTS' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="adults_c" width='37.5%'  >
{if !$fields.adults_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.adults_c.value) <= 0}
{assign var="value" value=$fields.adults_c.default_value }
{else}
{assign var="value" value=$fields.adults_c.value }
{/if} 
<span class="sugar_field" id="{$fields.adults_c.name}">{$fields.adults_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.children_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CHILDREN' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="children_c" width='37.5%'  >
{if !$fields.children_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.children_c.value) <= 0}
{assign var="value" value=$fields.children_c.default_value }
{else}
{assign var="value" value=$fields.children_c.value }
{/if} 
<span class="sugar_field" id="{$fields.children_c.name}">{$fields.children_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.infant_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_INFANT' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="infant_c" width='37.5%'  >
{if !$fields.infant_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.infant_c.value) <= 0}
{assign var="value" value=$fields.infant_c.default_value }
{else}
{assign var="value" value=$fields.infant_c.value }
{/if} 
<span class="sugar_field" id="{$fields.infant_c.name}">{$fields.infant_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.double_room_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_DOUBLE_ROOM' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="double_room_c" width='37.5%'  >
{if !$fields.double_room_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.double_room_c.value) <= 0}
{assign var="value" value=$fields.double_room_c.default_value }
{else}
{assign var="value" value=$fields.double_room_c.value }
{/if} 
<span class="sugar_field" id="{$fields.double_room_c.name}">{$fields.double_room_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.single_room_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_SINGLE_ROOM' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="single_room_c" width='37.5%'  >
{if !$fields.single_room_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.single_room_c.value) <= 0}
{assign var="value" value=$fields.single_room_c.default_value }
{else}
{assign var="value" value=$fields.single_room_c.value }
{/if} 
<span class="sugar_field" id="{$fields.single_room_c.name}">{$fields.single_room_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.quad_room_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_QUAD_ROOM' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="quad_room_c" width='37.5%'  >
{if !$fields.quad_room_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.quad_room_c.value) <= 0}
{assign var="value" value=$fields.quad_room_c.default_value }
{else}
{assign var="value" value=$fields.quad_room_c.value }
{/if} 
<span class="sugar_field" id="{$fields.quad_room_c.name}">{$fields.quad_room_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.triple_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_TRIPLE' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="triple_c" width='37.5%'  >
{if !$fields.triple_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.triple_c.value) <= 0}
{assign var="value" value=$fields.triple_c.default_value }
{else}
{assign var="value" value=$fields.triple_c.value }
{/if} 
<span class="sugar_field" id="{$fields.triple_c.name}">{$fields.triple_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.quint_room_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_QUINT_ROOM' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="quint_room_c" width='37.5%' colspan='3' >
{if !$fields.quint_room_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.quint_room_c.value) <= 0}
{assign var="value" value=$fields.quint_room_c.default_value }
{else}
{assign var="value" value=$fields.quint_room_c.value }
{/if} 
<span class="sugar_field" id="{$fields.quint_room_c.name}">{$fields.quint_room_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.mobile_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_MOBILE' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="phone" field="mobile_c" width='37.5%'  class="phone">
{if !$fields.mobile_c.hidden}
{counter name="panelFieldCount"}

{if !empty($fields.mobile_c.value)}
{assign var="phone_value" value=$fields.mobile_c.value }
{sugar_phone value=$phone_value usa_format="0"}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.agent_name_form_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_AGENT_NAME_FORM' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="agent_name_form_c" width='37.5%'  >
{if !$fields.agent_name_form_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.agent_name_form_c.value) <= 0}
{assign var="value" value=$fields.agent_name_form_c.default_value }
{else}
{assign var="value" value=$fields.agent_name_form_c.value }
{/if} 
<span class="sugar_field" id="{$fields.agent_name_form_c.name}">{$fields.agent_name_form_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.agent_email_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_AGENT_EMAIL' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="agent_email_c" width='37.5%'  >
{if !$fields.agent_email_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.agent_email_c.value) <= 0}
{assign var="value" value=$fields.agent_email_c.default_value }
{else}
{assign var="value" value=$fields.agent_email_c.value }
{/if} 
<span class="sugar_field" id="{$fields.agent_email_c.name}">{$fields.agent_email_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.company_name_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_COMPANY_NAME' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="company_name_c" width='37.5%'  >
{if !$fields.company_name_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.company_name_c.value) <= 0}
{assign var="value" value=$fields.company_name_c.default_value }
{else}
{assign var="value" value=$fields.company_name_c.value }
{/if} 
<span class="sugar_field" id="{$fields.company_name_c.name}">{$fields.company_name_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.agent_city_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_AGENT_CITY' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="agent_city_c" width='37.5%' colspan='3' >
{if !$fields.agent_city_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.agent_city_c.value) <= 0}
{assign var="value" value=$fields.agent_city_c.default_value }
{else}
{assign var="value" value=$fields.agent_city_c.value }
{/if} 
<span class="sugar_field" id="{$fields.agent_city_c.name}">{$fields.agent_city_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
<script type="text/javascript">SUGAR.util.doWhen("typeof initPanel == 'function'", function() {ldelim} initPanel(4, 'expanded'); {rdelim}); </script>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EDITVIEW_PANEL1").style.display='none';</script>
{/if}
<div id='detailpanel_5' class='detail view  detail508 collapsed'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<h4>
<a href="javascript:void(0)" class="collapseLink" onclick="collapsePanel(5);">
<img border="0" id="detailpanel_5_img_hide" src="{sugar_getimagepath file="basic_search.gif"}"></a>
<a href="javascript:void(0)" class="expandLink" onclick="expandPanel(5);">
<img border="0" id="detailpanel_5_img_show" src="{sugar_getimagepath file="advanced_search.gif"}"></a>
{sugar_translate label='LBL_EDITVIEW_PANEL4' module='Cases'}
<script>
      document.getElementById('detailpanel_5').className += ' collapsed';
    </script>
</h4>
<table id='LBL_EDITVIEW_PANEL4' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.booking_id_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_BOOKING_ID' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="booking_id_c" width='37.5%'  >
{if !$fields.booking_id_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.booking_id_c.value) <= 0}
{assign var="value" value=$fields.booking_id_c.default_value }
{else}
{assign var="value" value=$fields.booking_id_c.value }
{/if} 
<span class="sugar_field" id="{$fields.booking_id_c.name}">{$fields.booking_id_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.tour_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_TOUR' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="relate" field="tour_c" width='37.5%'  >
{if !$fields.tour_c.hidden}
{counter name="panelFieldCount"}

{if !empty($fields.tou_tour_products_id_c.value)}
{capture assign="detail_url"}index.php?module=Tou_Tour_Products&action=DetailView&record={$fields.tou_tour_products_id_c.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="tou_tour_products_id_c" class="sugar_field" data-id-value="{$fields.tou_tour_products_id_c.value}">{$fields.tour_c.value}</span>
{if !empty($fields.tou_tour_products_id_c.value)}</a>{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.booking_status_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_BOOKING_STATUS' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="enum" field="booking_status_c" width='37.5%' colspan='3' >
{if !$fields.booking_status_c.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.booking_status_c.options)}
<input type="hidden" class="sugar_field" id="{$fields.booking_status_c.name}" value="{ $fields.booking_status_c.options }">
{ $fields.booking_status_c.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.booking_status_c.name}" value="{ $fields.booking_status_c.value }">
{ $fields.booking_status_c.options[$fields.booking_status_c.value]}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.hotel_pick_up_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_HOTEL_PICK_UP' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="enum" field="hotel_pick_up_c" width='37.5%'  >
{if !$fields.hotel_pick_up_c.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.hotel_pick_up_c.options)}
<input type="hidden" class="sugar_field" id="{$fields.hotel_pick_up_c.name}" value="{ $fields.hotel_pick_up_c.options }">
{ $fields.hotel_pick_up_c.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.hotel_pick_up_c.name}" value="{ $fields.hotel_pick_up_c.value }">
{ $fields.hotel_pick_up_c.options[$fields.hotel_pick_up_c.value]}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.customers_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CUSTOMERS' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="customers_c" width='37.5%'  >
{if !$fields.customers_c.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.customers_c.value) <= 0}
{assign var="value" value=$fields.customers_c.default_value }
{else}
{assign var="value" value=$fields.customers_c.value }
{/if} 
<span class="sugar_field" id="{$fields.customers_c.name}">{$fields.customers_c.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.sale_value_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_SALE_VALUE' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="currency" field="sale_value_c" width='37.5%'  >
{if !$fields.sale_value_c.hidden}
{counter name="panelFieldCount"}

<span id='{$fields.sale_value_c.name}'>
{sugar_number_format var=$fields.sale_value_c.value }
</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.balance_c.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_BALANCE' module='Cases'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="currency" field="balance_c" width='37.5%'  >
{if !$fields.balance_c.hidden}
{counter name="panelFieldCount"}

<span id='{$fields.balance_c.name}'>
{sugar_number_format var=$fields.balance_c.value }
</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
<script type="text/javascript">SUGAR.util.doWhen("typeof initPanel == 'function'", function() {ldelim} initPanel(5, 'collapsed'); {rdelim}); </script>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EDITVIEW_PANEL4").style.display='none';</script>
{/if}
</div>
</div>

</form>
<script>SUGAR.util.doWhen("document.getElementById('form') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script><script type="text/javascript" src="include/InlineEditing/inlineEditing.js"></script>
<script type="text/javascript" src="modules/Favorites/favorites.js"></script>