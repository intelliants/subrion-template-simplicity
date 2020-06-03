<li>
    <a href="#" data-toggle="dropdown">
        {$core.currency.title|escape} <span class="fa fa-angle-down"></span>
    </a>
    <ul class="dropdown-menu dropdown-menu-right">
        {foreach $core.currencies as $code => $entry}
            <li><a href="#" class="dropdown-item{if $core.currency.code == $code} active{/if}" title="{$entry.code}" data-code="{$entry.code}">{$entry.title|escape}</a></li>
        {/foreach}
    </ul>
</li>
