<a href="#" data-toggle="dropdown">
    {$core.languages[$smarty.const.IA_LANGUAGE].title} <span class="fa fa-angle-down"></span>
</a>
<ul class="dropdown-menu dropdown-menu-right">
    {foreach $core.languages as $code => $language}
        <li><a href="{ia_page_url code=$code}" class="dropdown-item{if $smarty.const.IA_LANGUAGE == $code} active{/if}" title="{$language.title}">{$language.title}</a></li>
    {/foreach}
</ul>
