<!DOCTYPE html>
<html lang="{$core.language.iso}" dir="{$core.language.direction}">
    <head>
        {ia_hooker name='smartyFrontBeforeHeadSection'}

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <title>{ia_print_title}</title>
        <meta name="description" content="{$core.page['meta-description']}">
        <meta name="keywords" content="{$core.page['meta-keywords']}">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="generator" content="Subrion CMS - Open Source Content Management System">
        <meta name="robots" content="index">
        <meta name="robots" content="follow">
        <meta name="revisit-after" content="1 day">
        <base href="{$smarty.const.IA_URL}">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <link rel="shortcut icon" href="{if !empty($core.config.site_favicon)}{$core.page.nonProtocolUrl}uploads/{$core.config.site_favicon}{else}{$core.page.nonProtocolUrl}favicon.ico{/if}">

        {ia_add_media files='jquery, subrion, js:_IA_TPL_bootstrap.min, css:iabootstrap, css:user-style' order=0}
        {ia_print_js files='_IA_TPL_app' order=999}

        {ia_hooker name='smartyFrontAfterHeadSection'}

        {ia_print_css display='on'}

        {ia_add_js}
            intelli.pageName = '{$core.page.name}';
            intelli.securityToken = '{$securityToken}';
            intelli.config.url = '{$smarty.const.IA_URL}';
            {foreach $core.customConfig as $key => $value}
                intelli.config.{$key} = '{$value}';
            {/foreach}
        {/ia_add_js}
    </head>

    <body class="page-{$core.page.name}">

        <nav class="navbar navbar-expand-md navbar-light bg-light {if $core.config.navbar_sticky}fixed-top{/if}">
            <div class="container">
                <a class="navbar-brand" href="{$smarty.const.IA_URL}">
                    {if $core.config.enable_text_logo}
                        {$core.config.logo_text}
                    {else}
                        {if !empty($core.config.site_logo)}
                            <img src="{$core.page.nonProtocolUrl}uploads/{$core.config.site_logo}" width="auto" height="40" alt="{$core.config.site|escape}">
                        {else}
                            <img src="{$img}logo.png" width="auto" height="40" alt="{$core.config.site|escape}">
                        {/if}
                    {/if}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                    {ia_blocks block='mainmenu'}

                    {*<ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="#">Disabled</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown01">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                    </ul>*}
                    <form method="get" action="{$smarty.const.IA_URL}search/" class="form-inline my-2 my-lg-0">
                        <div class="input-group">
                            <input class="form-control" type="text" name="q" placeholder="{lang key='search'}">
                            <div class="input-group-append">
                                <button class="btn btn-success my-2 my-sm-0" type="submit">
                                    <span class="fas fa-search"></span>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </nav>

        <header class="header">
            {ia_blocks block='teaser'}
        </header>

        {ia_hooker name='smartyFrontBeforeBreadcrumb'}

        {include 'breadcrumb.tpl'}

        {if $core.config.enable_landing && 'index' == $core.page.name}
            <main class="landing">
                {ia_blocks block='landing'}
            </main>
        {else}
            <main class="content">
                <div class="container">
                    <div class="row">
                        <div class="{width section='content' position='left' tag='col-md-'} aside">
                            {ia_blocks block='left'}
                        </div>
                        <div class="{width section='content' position='center' tag='col-md-'}">
                            <div class="content__wrap">

                                {ia_blocks block='top'}

                                <div class="content__header">
                                    <h1>{$core.page.title|escape}</h1>
                                    <ul class="content__actions">
                                        {foreach $core.actions as $name => $action}
                                            <li>
                                                {if 'action-favorites' == $name}
                                                    {printFavorites item=$item itemtype=$item.item guests=true}
                                                {else}
                                                    <a data-toggle="tooltip" title="{$action.title}" {foreach $action.attributes as $key => $value}{$key}="{$value}" {/foreach}>
                                                    <span class="fa fa-{$name}"></span>
                                                    </a>
                                                {/if}
                                            </li>
                                        {/foreach}
                                    </ul>
                                </div>

                                {ia_hooker name='smartyFrontBeforeNotifications'}
                                {include 'notification.tpl'}

                                {ia_hooker name='smartyFrontBeforeMainContent'}

                                <div class="content__body">
                                    {$_content_}
                                </div>

                                {ia_hooker name='smartyFrontAfterMainContent'}

                                {ia_blocks block='bottom'}
                            </div>
                        </div>
                        <div class="{width section='content' position='right' tag='col-md-'} aside">
                            {ia_blocks block='right'}
                        </div>
                    </div>
                </div>
            </main>
        {/if}

        <footer class="footer">
            <div class="container">
                <p>&copy; {$smarty.server.REQUEST_TIME|date_format:'%Y'} {lang key='powered_by_subrion'}</p>
                {ia_hooker name='smartyFrontAfterFooterLinks'}
            </div>
        </footer>

        <!-- SYSTEM STUFF -->

        {if $core.config.cron}
            <div style="display: none;">
                <img src="{$core.page.nonProtocolUrl}cron/?{randnum}" width="1" height="1" alt="">
            </div>
        {/if}

        {if isset($manageMode)}
            {include 'visual-mode.tpl'}
        {/if}

        {if isset($previewMode)}
            <p>{lang key='youre_in_preview_mode'}</p>
        {/if}

        {ia_print_js display='on'}

        {ia_hooker name='smartyFrontFinalize'}
    </body>
</html>
