require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// External imports
import "bootstrap";

// Internal imports, e.g:
import { initMapbox } from '../plugins/init_mapbox';
import { initSelect2 } from '../plugins/init_select2';
import { searchNavbar } from '../plugins/search_navbar';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  initSelect2();
  initMapbox();
  searchNavbar();
});

function setSearch(oEvent){
  console.log(oEvent);
  oEvent.preventDefault();
  var sType = oEvent.type,
      sClass =  "search",
      oSearch = oEvent.currentTarget,
      oForm  =  oSearch.form;
  if((sType == 'focus' || sType == 'click') && !oForm.classList.contains(sClass)){
    oForm.classList.add(sClass)
  }else if(sType == 'blur' && oSearch.value.trim() == ''){
    oForm.classList.remove(sClass)
  }
}

const splash = document.querySelector(".splash-link")

function unsplash(){
  splash.click();
}

setTimeout(unsplash, 4000);
