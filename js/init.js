$( document ).ready(function() {
  $(function(){

    $('.sidenav').sidenav();
    $('.parallax').parallax();
    $('.dropdown-trigger').dropdown({
      coverTrigger: false,
      // hover: true,
      alignment: 'right',
      constrainWidth: false
    });
    $('.modal').modal({
      onOpenStart: true
    });
    $('select').material_select();

  });
});




// document.addEventListener('DOMContentLoaded', function() {
//   var elems = document.querySelectorAll('.dropdown-trigger');
//   var instances = M.Dropdown.init(elems, options);
// });

// document.addEventListener('DOMContentLoaded', function() {
//   var elems = document.querySelectorAll('.modal');
//   var instances = M.Modal.init(elems, options);
// });

