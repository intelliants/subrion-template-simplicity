{function name=menu pid=0}
    {if isset($data.$pid)}
        <ul class="nav {$class}">
            {foreach $data.$pid as $menu}
                {if 'mainmenu' == $position && $menu@iteration > $core.config.max_top_menu_items|default:5 && $menu.level < 1}{capture append=dropdown name=$menu.page_name}{/if}
                <li class="nav-item{if $menu.active} active{/if}">
                    <a href="{if $menu.url}{$menu.url}{else}{$smarty.const.IA_SELF}#{/if}" class="nav-link"
                             {if $menu.nofollow} rel="nofollow"{/if}
                             {if $menu.new_window} target="_blank"{/if}>
                        {$menu.text|escape}
                    </a>
                </li>
                {if 'mainmenu' == $position && $menu@iteration > $core.config.max_top_menu_items|default:5 && $menu.level < 1}{/capture}{/if}
            {/foreach}
        </ul>
    {/if}
{/function}

{menu data=$menus class=$menu_class}