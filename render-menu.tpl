{switch $position}
    {case 'inventory' break}
        {$classes = 'inventory__block inventory__block--navbar'}
    {case 'mainmenu' break}
        {$classes = ' navbar-nav mr-auto'}
    {default}
        {$classes = 'navbar-nav'}
{/switch}

{if in_array($position, ['inventory', 'mainmenu'])}
    {ia_menu menus=$menu.contents class="{$classes} {$menu.classname}"}
{else}
    {if $menu.header || isset($manageMode)}
        <div class="nav-menu-header {$menu.classname}">{$menu.title|escape}</div>
    {else}
        <div class="menu {$menu.classname}">
    {/if}

    {ia_menu menus=$menu.contents class="{$classes} {$menu.classname}"}

    {if $menu.header || isset($manageMode)}
    {else}
        </div>
    {/if}
{/if}