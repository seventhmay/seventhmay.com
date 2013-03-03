$(function(){
  /*
    $('ul.nav li').click(function(e) {
        $('.nav li').removeClass('active');
        var $this = $(this);
        if (!$this.hasClass('active')) {
            $this.addClass('active');
        }
        e.preventDefault();
    });
  */

    $("#search").keyup(function(){
        //alert('');
        var name = $("#search").val();
        $.getJSON("links/live_search?name=" + name, function(data){
            // li削除
            $("#links > li").each(function(){
                $(this).remove();
            });
            // li追加
            $.each(data, function(i, items){
                $("<li/>", { text: items.name }).appendTo('#links');
            });
      });
  });
})
