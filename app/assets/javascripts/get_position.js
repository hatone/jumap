$(function(){
  $('#start_gps').click(function(){
    navigator.geolocation.getCurrentPosition(
      function(position){
        $('#latitude').html(position.coords.latitude); //緯度
        $('#longitude').html(position.coords.longitude); //経度
    
        var msg = $('#mes').val();
       
        var data = 'lat=' + position.coords.latitude  + '&long=' + position.coords.longitude + "&message=" + msg;
        $('#mes').val("");
        $.ajax({
            type: "POST",
            url: "/plot",
            data: data,
            success: function() {
            $('#mes').val("");
            }
        });
      }
    );
  });
});

