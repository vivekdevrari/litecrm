

{if strlen($fields.mobile_c.value) <= 0}
{assign var="value" value=$fields.mobile_c.default_value }
{else}
{assign var="value" value=$fields.mobile_c.value }
{/if}  

<input type='text' name='{$fields.mobile_c.name}' id='{$fields.mobile_c.name}' size='30' maxlength='255' value='{$value}' title='' tabindex='1'	  class="phone" >
