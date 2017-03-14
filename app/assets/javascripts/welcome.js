// $('#myModal').on('shown.bs.modal', function () {
//   console.log('fire');
//   $('#myInput').focus()
// })
$(".modal-transparent").on('show.bs.modal', function () {
  setTimeout( function() {
    $(".modal-backdrop").addClass("modal-backdrop-transparent");
  }, .5);
});
$(".modal-transparent").on('hidden.bs.modal', function () {
  $(".modal-backdrop").addClass("modal-backdrop-transparent");
});
$(".modal-transparent_register").on('show.bs.modal', function () {
  console.log('fire');
  setTimeout( function() {
    $(".modal-backdrop").addClass("modal-backdrop-transparent");
  }, .5);
});
$(".modal-transparent_register").on('hidden.bs.modal', function () {
  $(".modal-backdrop").addClass("modal-backdrop-transparent");
});
