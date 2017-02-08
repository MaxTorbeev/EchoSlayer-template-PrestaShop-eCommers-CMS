{block name='header_nav'}
    <nav class="header_nav">
        <div class="container">
            <div class="row">
                <div class="col">
                    {hook h='displayNav1'}
                </div>
                <div class="col-4">
                    {hook h='displayNav2'}
                </div>
            </div>
        </div>
    </nav>
    {*<nav class="header-nav">*}
        {*<div class="container">*}
            {*<div class="row">*}
                {*<div class="hidden-sm-down">*}
                    {*<div class="col-md-4 col-xs-12">*}
                        {*{hook h='displayNav1'}*}
                    {*</div>*}
                    {*<div class="col-md-8 right-nav">*}
                        {*{hook h='displayNav2'}*}
                    {*</div>*}
                {*</div>*}
                {*<div class="hidden-md-up text-xs-center mobile">*}
                    {*<div class="pull-xs-left" id="menu-icon">*}
                        {*<i class="material-icons d-inline">&#xE5D2;</i>*}
                    {*</div>*}
                    {*<div class="pull-xs-right" id="_mobile_cart"></div>*}
                    {*<div class="pull-xs-right" id="_mobile_user_info"></div>*}
                    {*<div class="top-logo" id="_mobile_logo"></div>*}
                    {*<div class="clearfix"></div>*}
                {*</div>*}
            {*</div>*}
        {*</div>*}
    {*</nav>*}


    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Launch demo modal
    </button>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
{/block}

{block name='header_top'}
    <div class="header-top">
        <div class="container">
            <div class="row">
                <div class="col-md-2 hidden-sm-down" id="_desktop_logo">
                    <a href="{$urls.base_url}">
                        <img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}">
                    </a>
                </div>
                <div class="col-md-10 col-sm-12 position-static">
                    <div class="row">
                        {hook h='displayTop'}
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div id="mobile_top_menu_wrapper" class="row hidden-md-up" style="display:none;">
                <div class="js-top-menu mobile" id="_mobile_top_menu"></div>
                <div class="js-top-menu-bottom">
                    <div id="_mobile_currency_selector"></div>
                    <div id="_mobile_language_selector"></div>
                    <div id="_mobile_contact_link"></div>
                </div>
            </div>
        </div>
    </div>
    {hook h='displayNavFullWidth'}
{/block}
