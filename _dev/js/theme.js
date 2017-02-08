window.$ = require('jquery');
window.tether = require('tether');

// Import bootstrap components
// import Tooltip  from 'bootstrap/js/src/tooltip';
import 'bootstrap/js/src/modal';


import 'flexibility';
import 'bootstrap-touchspin';

import '../css/theme';
import './responsive';
import './checkout';
import './customer';
import './listing';
import './product';
import './cart';

import DropDown             from './components/drop-down';
import Form                 from './components/form';
import ProductMinitature    from './components/product-miniature';
import ProductSelect        from './components/product-select';
import TopMenu              from './components/top-menu';

import prestashop           from 'prestashop';
import EventEmitter         from 'events';


import './lib/bootstrap-filestyle.min';
import './lib/jquery.scrollbox.min';

import './components/block-cart';

// "inherit" EventEmitter
for (var i in EventEmitter.prototype) {
    prestashop[i] = EventEmitter.prototype[i];
}

$(document).ready(() => {


    const form = new Form();

    let dropDownEl              = $('.js-dropdown'),
        topMenuEl               = $('.js-top-menu ul[data-depth="0"]'),
        dropDown                = new DropDown(dropDownEl),
        topMenu                 = new TopMenu(topMenuEl),
        productMinitature       = new ProductMinitature(),
        productSelect           = new ProductSelect();

    dropDown.init();
    form.init();
    topMenu.init();
    productMinitature.init();
    productSelect.init();
});
