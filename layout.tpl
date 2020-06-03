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

        {ia_add_media files='css:app, css:user-style' order=0}
        {ia_print_js files='_IA_TPL_app' order=0}

        {ia_hooker name='smartyFrontAfterHeadSection'}

        {ia_print_css display='on'}
    </head>

    <body class="page-{$core.page.name}">
        <section class="inventory">
            <div class="inventory__container container">
                {ia_blocks block='inventory'}
                {if $core.config.language_switch && count($core.languages) > 1}
                    <ul class="inventory__block inventory__block--lang-selector">
                        {include 'language-selector.tpl'}
                    </ul>
                {/if}
                {if $core.config.currency_switch && count($core.currencies) > 1}
                    <ul id="js-currencies-list" class="inventory__block inventory__block--currency-selector">
                        {include 'currency-selector.tpl'}
                    </ul>
                {/if}
                {if $core.config.search_inventory}
                    <form action="{$smarty.const.IA_URL}search/" class="inventory__block inventory__block--search-form input-group">
                        <input type="text" name="q" class="form-control form-control-sm" placeholder="{lang key='search' readonly=true}">
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-primary btn-sm"><span class="fa fa-search"></span></button>
                        </div>
                    </form>
                {/if}
                {if $core.config.website_social}
                    <ul class="inventory__block inventory__block--social-links">
                        {if $core.config.website_social_t}<li><a href="{$core.config.website_social_t}" class="twitter"><span class="fab fa-twitter"></span></a></li>{/if}
                        {if $core.config.website_social_f}<li><a href="{$core.config.website_social_f}" class="facebook"><span class="fab fa-facebook"></span></a></li>{/if}
                        {if $core.config.website_social_g}<li><a href="{$core.config.website_social_g}" class="google-plus"><span class="fab fa-google-plus"></span></a></li>{/if}
                        {if $core.config.website_social_i}<li><a href="{$core.config.website_social_i}" class="linkedin"><span class="fab fa-linkedin"></span></a></li>{/if}
                    </ul>
                {/if}
            </div>
        </section>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="#">
                    {if !empty($core.config.site_logo)}
                        <img src="{$core.page.nonProtocolUrl}uploads/{$core.config.site_logo}" height="50" alt="{$core.config.site|escape}">
                    {else}
                        <img src="{$img}logo.png" height="50" alt="{$core.config.site|escape}">
                    {/if}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Dropdown
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                    </ul>
                    <form action="{$smarty.const.IA_URL}search/" class="form-inline">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="{lang key='search' readonly=true}">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-success"><span class="fa fa-search"></span></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </nav>

        <header class="jumbotron">
            <div class="container">
                <h1 class="display-4">Hello, world!</h1>
                <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                <hr class="my-4">
                <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
                <p class="lead">
                    <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
                </p>
            </div>
        </header>

        <main class="py-5">
            <div class="container">
                <article>
                    <h1 class="mb-4">Lorem ipsum</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero officia laudantium fugit sit magni exercitationem voluptates recusandae veritatis architecto quod et iste commodi non quas, sed enim pariatur laborum eos.</p>
                    <p>Temporibus quisquam consequatur voluptate asperiores, numquam quasi ad! Expedita velit, enim, numquam, ratione aspernatur officiis delectus fugiat ducimus, praesentium quos excepturi ullam commodi ea tenetur aliquam labore suscipit debitis dolorum.</p>
                    <p>Illum sapiente accusantium eum, quisquam consectetur aliquam! Accusantium fugiat, doloremque delectus perferendis aspernatur ipsa quia in ipsum, nisi impedit autem quas aliquam tempore distinctio expedita facilis nesciunt omnis exercitationem odit.</p>
                    <p>Quas a ab commodi, similique repellat voluptatem. Culpa, dolor! Vero, maxime quis perferendis? Temporibus quae vero iusto, sit labore impedit officia rerum quas soluta nesciunt quidem. Deleniti debitis libero quidem?</p>
                    <p>Enim ratione saepe eveniet beatae, quas ipsum hic inventore adipisci voluptas voluptatibus facilis eaque labore, fugit? Veniam nisi sapiente rerum, atque expedita vero facilis veritatis doloribus voluptate alias blanditiis enim.</p>
                    <p>Modi sapiente dolore, minima ipsa deleniti nesciunt facere, enim totam neque. Officiis quisquam, atque consectetur libero repellendus. Velit facilis inventore deserunt sit, nam in! Nobis voluptate sequi in. Molestias, vero.</p>
                    <p>Culpa explicabo saepe quisquam accusantium accusamus vitae perspiciatis dignissimos, consectetur laboriosam esse inventore laudantium deserunt dolores odio maiores velit facere sit officiis hic. Nesciunt, eaque quidem, optio quaerat odio itaque!</p>
                    <p>Sequi, recusandae, rerum! Natus explicabo delectus dolore assumenda maxime illum temporibus unde nobis excepturi deleniti necessitatibus dolor vitae autem tempora consectetur eos at provident laborum quo eaque soluta, cupiditate non?</p>
                    <p>Eos aliquam incidunt beatae necessitatibus dolorem sit voluptas obcaecati aspernatur tenetur doloribus earum, rerum, voluptatum, atque eaque voluptatibus odit! Exercitationem consectetur, cum maiores et. Atque eaque omnis illo commodi unde.</p>
                    <p>Officia reiciendis minus odit maxime explicabo, labore aperiam tempore facilis, earum deserunt, aliquam placeat suscipit! Veritatis porro saepe nulla, libero officiis, ipsum dicta quo aperiam tempore dolores, suscipit laborum perferendis.</p>
                    <p>Quisquam ea sapiente esse, eveniet impedit ullam voluptas accusantium! Velit sint delectus labore unde, repellat explicabo. Aspernatur suscipit nobis aliquam, fugiat nostrum vel tempore fugit, voluptate iste ea, impedit deserunt.</p>
                    <p>Ut sit sequi recusandae, esse possimus voluptas amet similique nobis, laudantium aut omnis. Obcaecati, dolore recusandae corrupti iusto, non a assumenda magnam odit animi consequuntur ad cum qui suscipit veniam.</p>
                    <p>Minus illo, atque non fugiat incidunt nostrum porro maxime saepe consectetur quia consequuntur sunt neque eum eaque laborum reiciendis possimus dolor nesciunt officiis doloribus tempora sapiente! Voluptate impedit, quod nemo.</p>
                    <p>Obcaecati rem voluptatibus sunt alias quibusdam libero dicta illum dignissimos hic, earum atque accusamus, quam veritatis? Iure eveniet et cum ea error sapiente, voluptates placeat reiciendis non. Ducimus eligendi, officiis.</p>
                    <p>In, nulla, soluta! Nisi pariatur sapiente itaque cumque quas et, architecto mollitia harum praesentium sunt consequatur asperiores enim dicta incidunt ipsum veniam iure, dolore maxime explicabo. Expedita sed nihil voluptatibus.</p>
                    <p>Libero qui, consectetur ipsam, consequatur perferendis dolores cum officiis quaerat ut deserunt doloremque eius quae voluptatum id aperiam error illum placeat dicta molestias provident saepe modi, ea delectus! Quaerat, optio?</p>
                    <p>Sint veritatis obcaecati deleniti dicta, soluta et cum qui consequuntur dolore eveniet maxime animi ut ipsum perferendis recusandae cupiditate facere nesciunt ad deserunt delectus. Itaque eveniet doloribus facilis inventore incidunt.</p>
                    <p>Blanditiis dolores eum, cupiditate id, quidem dignissimos, vel suscipit nihil nulla rerum sunt quisquam vero laboriosam quae in possimus similique natus? Voluptates culpa vitae tenetur, error iure recusandae enim cumque.</p>
                    <p>Vel placeat, fuga itaque eligendi, quo vitae nulla, quos eos rem quisquam iure eveniet. Hic, cupiditate et officiis mollitia, porro error ad quos, quae corporis ab explicabo nesciunt, quaerat consequuntur.</p>
                    <p>Quo sit, id aut nihil dolore est debitis consequuntur officia molestias rem maxime quis, rerum ducimus laboriosam dolorum officiis! Earum, ipsum? Voluptate excepturi repellat, iste vero delectus placeat quidem explicabo?</p>
                </article>
            </div>
        </main>

        <footer class="bg-dark text-white py-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <nav class="mb-4">
                            <div class="mb-3">Footer menu #1</div>
                            <ul class="list-unstyled">
                                <li><a href="">Link #1</a></li>
                                <li><a href="">Link #2</a></li>
                                <li><a href="">Link #3</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-md-3">
                        <nav class="mb-4">
                            <div class="mb-3">Footer menu #2</div>
                            <ul class="list-unstyled">
                                <li><a href="">Link #1</a></li>
                                <li><a href="">Link #2</a></li>
                                <li><a href="">Link #3</a></li>
                                <li><a href="">Link #4</a></li>
                                <li><a href="">Link #5</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-md-3">
                        <nav class="mb-4">
                            <div class="mb-3">Footer menu #3</div>
                            <ul class="list-unstyled">
                                <li><a href="">Link #1</a></li>
                                <li><a href="">Link #2</a></li>
                                <li><a href="">Link #3</a></li>
                                <li><a href="">Link #4</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-md-3">
                        <nav class="mb-4">
                            <div class="mb-3">Footer menu #4</div>
                            <ul class="list-unstyled">
                                <li><a href="">Link #1</a></li>
                                <li><a href="">Link #2</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
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
