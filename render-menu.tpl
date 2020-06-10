{switch $position}
    {case 'inventory' break}
        {$classes = 'inventory__block inventory__block--navbar'}
    {case 'mainmenu' break}
        {$classes = ' navbar-nav mr-auto'}
    {default}
        {$classes = 'navbar-nav'}
{/switch}

{ia_menu menus=$menu.contents class="{$classes} {$menu.classname}"}
