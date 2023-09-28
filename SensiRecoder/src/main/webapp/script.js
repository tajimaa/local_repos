


$(function(){
    var ws = new WebSocket("ws://172.19.4.110:8080/SensiRecoder/Chat");

    ws.onopen = function(){
        $("#log").prepend("&lt;onopen&gt; " + "<br/>");
    }

    ws.onmessage = function(message){
        $("#chatlog").prepend(message.data + "<br/>");
    }

    ws.onerror = function(){
        $("#log").prepend("&lt;onerror&gt; " + "<br/>");
    }

    ws.onclose = function(){
        $("#log").prepend("&lt;onclose&gt; " + "<br/>");
    }

    $("#send").click(function() {
        var message = $("#message").val();
        ws.send(message);
        $("#message").val("");
    });

    $(window).unload(function() {
        ws.onclose(); 
    });
})
