jQuery(function($) {
  alert('on!')
  var hp = $('#path_horsepower').val()
  var distance = $('#path_distance').val()
  var total = hp + distance
  var horse = parseInt(hp)
  var dist = parseInt(distance)

  $('#new_path').on('submit', function(){
    $('#path_total').val(total)
    console.log(horse)
    console.log(dist)
    console.log(total)
    return false
  })
})
