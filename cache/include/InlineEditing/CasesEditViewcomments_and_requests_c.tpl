
{if empty($fields.comments_and_requests_c.value)}
{assign var="value" value=$fields.comments_and_requests_c.default_value }
{else}
{assign var="value" value=$fields.comments_and_requests_c.value }
{/if}  




<textarea  id='{$fields.comments_and_requests_c.name}' name='{$fields.comments_and_requests_c.name}'
rows="2" 
cols="32" 
title='' tabindex="1" 
 >{$value}</textarea>


