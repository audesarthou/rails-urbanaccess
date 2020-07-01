const searchNavbar = () => {
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
}

export { searchNavbar };
