$(function() {
  $("#guess").on('submit',function(e) {
    e.preventDefault();
    var guess = $("#user_guess").val()
    $(".result").empty()
    $(".result").attr('hidden', false)
    if ($(".answer").text() === guess) {
      $(".result").removeClass('winner loser');
      $(".result").addClass("winner");
      $(".result").append("Correct!");
    } else {
      $(".result").removeClass('winner loser');
      $(".result").addClass("loser");
      $(".result").append("Try Again!");
    }
  });
});
