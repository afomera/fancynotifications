//Fancy Notification Hide the NoticeWrapper
$(document).ready(function() {
    setTimeout(function() {
        $("#notice_wrapper").fadeOut("slow", function() {
            $(this).remove();
        })
    }, 4500 );
    $(".alert_close").click(function(e) {
      e.preventDefault();
      $("#notice_wrapper").remove();
    })
});
