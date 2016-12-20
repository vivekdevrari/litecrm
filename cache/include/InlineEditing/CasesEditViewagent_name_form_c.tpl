
{if strlen($fields.agent_name_form_c.value) <= 0}
{assign var="value" value=$fields.agent_name_form_c.default_value }
{else}
{assign var="value" value=$fields.agent_name_form_c.value }
{/if}  
<input type='text' name='{$fields.agent_name_form_c.name}' 
    id='{$fields.agent_name_form_c.name}' size='30' 
    maxlength='255' 
    value='{$value}' title=''  tabindex='1'      >