{*BreadcrumbList*}

<nav data-depth="{$breadcrumb.count}" class="hidden-sm-down">
    <ol class="breadcrumb" itemscope itemtype="http://schema.org/BreadcrumbList">
        {foreach from=$breadcrumb.links item=path name=breadcrumb}
            <li  class="breadcrumb-item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a itemprop="item" href="{$path.url}">
                    <span itemprop="name">{$path.title}</span>
                </a>
                <meta itemprop="position" content="{$smarty.foreach.breadcrumb.iteration}">
            </li>
        {/foreach}
    </ol>
</nav>
