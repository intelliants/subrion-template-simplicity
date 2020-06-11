{if $header}
    <div id="block_{$name}"
         class="box {$classname}{if isset($collapsible) && $collapsible} collapsible{if isset($collapsed) && $collapsed} collapsed{/if}{/if}"
        {if isset($manageMode)} vm-hidden="{$hidden}" data-type="{$type}" data-block_id="{$id}"{/if}>
        {if isset($position) && 'landing' == $position}
            <div class="container">
        {/if}
        <div id="caption_{$name}" class="box__caption">{$title|escape}
            {if isset($icons) && $icons}
                <span class="box__actions">
                    {foreach $icons as $icon}
                        <a href="{$icon.url}" {$icon.attributes} id="{$icon.name}_{$name}">{$icon.text}</a>
                    {/foreach}
                </span>
            {/if}
        </div>
        <div id="content_{$name}" class="box__content"{if isset($display) && !$display} style="display: none;"{/if}>
{else}
    <div id="block_{$name}" class="box box--no-header {$classname}"
        {if isset($manageMode)} vm-hidden="{$hidden}" data-type="{$type}" data-block_id="{$id}"{/if}>
        {if isset($position) && 'landing' == $position}
            <div class="container">
        {/if}
{/if}

{if isset($manageMode) && ($type === 'plain' || empty($header))}
    <div>{$_block_content_}</div>
{else}
    {$_block_content_}
{/if}

{if $header}
        </div>
        {if isset($position) && 'landing' == $position}
            </div>
        {/if}
    </div>
{else}
    {if isset($position) && 'landing' == $position}
        </div>
    {/if}
    </div>
{/if}
