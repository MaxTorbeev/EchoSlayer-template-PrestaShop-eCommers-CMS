<!-- Block search module TOP -->
<div id="search_widget" class="col-lg-4 col-md-5 col-12 search-widget" data-search-controller-url="{$search_controller_url}">

    <form method="get" class="form-inline" action="{$search_controller_url}">

        <label class="sr-only" for="searchWidgetInput">Поиск</label>

        <input type="hidden" name="controller" value="search">

        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
            <input type="text" name="s" id="searchWidgetInput" value="{$search_string}" class="form-control" placeholder="{l s='Search our catalog' d='Shop.Theme.Catalog'}">
            <button type="submit" class="btn btn-primary">
                <i class="material-icons search">&#xE8B6;</i>
            </button>
        </div>

    </form>
</div>
<!-- /Block search module TOP -->


{*<input type="text" name="s"  placeholder="{l s='Search our catalog' d='Shop.Theme.Catalog'}">*}
{*<button type="submit"> <i class="material-icons search">&#xE8B6;</i> </button>*}
