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
    <div class="menu {$menu.classname}">
        {if 'copyright' !== $position && $menu.header || isset($manageMode)}
            <div class="menu__caption {$menu.classname}">{$menu.title|escape}</div>
        {/if}
        {ia_menu menus=$menu.contents class="menu__content {$classes} {$menu.classname}"}
    </div>
{/if}