// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initMapbox } from '../plugins/init_mapbox';
import { initSelect2 } from '../plugins/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  initSelect2();
  initMapbox();

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
//Quand le DOm est dispo
document.addEventListener('DOMContentLoaded',function(){
  // var oInput = document.forms["form-search"]["search"];
  // oInput.addEventListener('focus',setSearch)
  // oInput.addEventListener('blur',setSearch);

  // document.getElementById("bt-search").addEventListener('click', function(oEvent){
  //   oEvent.preventDefault();oInput.focus() ;
  // });

  // document.getElementById("bt-close").addEventListener('click', function(oEvent){
  //   oEvent.preventDefault();
  //   oInput.form.classList.remove("search");
  //   oInput.value ='';
  // });

  const searchInput = document.querySelector('.searchbar input');
  const navLogo = document.querySelector('.navbar-brand > img');

  searchInput.addEventListener('focus', (event) => {
    navLogo.classList.remove("navbar-present");
    navLogo.classList.add('d-none');
  });

  if (searchInput.value != '' ) {
    navLogo.classList.add('d-none')
  }

  const removeDisplayNone = (navLogo) => {
    navLogo.classList.add("navbar-present");
  }

  searchInput.addEventListener('blur', (event) => {
    setTimeout(removeDisplayNone(navLogo), 5000);
  });

  searchInput.addEventListener('keyup', e => {
    if (searchInput.value != '' ) {
      navLogo.classList.add('d-none')
    } else {
      navLogo.classList.remove('d-none')
    }
  });
});

