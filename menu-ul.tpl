{function name=menu pid=0}
    {if isset($data.$pid)}
        <ul class="{$class}">
            {foreach $data.$pid as $menu}
                {if 'mainmenu' == $position && $menu@iteration > $core.config.max_top_menu_items|default:5 && $menu.level < 1}{capture append=dropdown name=$menu.page_name}{/if}
                <li class="nav-item{if isset($data[$menu.el_id]) || isset($menu_children)} dropdown{/if}{if $menu.active} active{/if}">
                    <a href="{if $menu.url}{$menu.url}{else}{$smarty.const.IA_SELF}#{/if}" class="nav-link"
                             {if $menu.nofollow} rel="nofollow"{/if}
                             {if $menu.new_window} target="_blank"{/if}
                             {if (isset($data[$menu.el_id]) || isset($menu_children)) && $menu.level == 0  && $position != 'left'}data-toggle="dropdown"{/if}>
                        {$menu.text|escape}
                        {if (isset($data[$menu.el_id]) || isset($menu_children)) && $menu.level == 0  && $position != 'left'}<span class="fa fa-angle-down"></span>{/if}
                    </a>
                    {if isset($data[$menu.el_id])}
                        {menu data=$data pid=$menu.el_id class='dropdown-menu'}
                    {/if}
                </li>
                {if 'mainmenu' == $position && $menu@iteration > $core.config.max_top_menu_items|default:5 && $menu.level < 1}{/capture}{/if}
            {/foreach}
        </ul>
    {/if}
{/function}

{menu data=$menus class=$menu_class}