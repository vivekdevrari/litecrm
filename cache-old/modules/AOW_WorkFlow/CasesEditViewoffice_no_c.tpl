

{if strlen($fields.office_no_c.value) <= 0}
{assign var="value" value=$fields.office_no_c.default_value }
{else}
{assign var="value" value=$fields.office_no_c.value }
{/if}  

<input type='text' name='{$fields.office_no_c.name}' id='{$fields.office_no_c.name}' size='30' maxlength='255' value='{$value}' title='' tabindex='1'	  class="phone" >
