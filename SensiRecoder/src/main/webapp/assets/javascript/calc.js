/**
 * 
 */

 $(function () {
    var ws = new WebSocket("ws://localhost:8080/SensiRecoder/WebSocketServer");

    ws.onopen = function () {
        $("#log").prepend("&lt;onopen&gt; " + "<br/>");
    }

	ws.onmessage = function (message) {
        var broadcastMessage = message.data;
        var mm = broadcastMessage.split(",");
        console.log(mm[0]);
        $("#chatlog1 p:last").remove(); 
        $("#chatlog2 p:last").remove(); 

        var textbox1 = document.getElementById("textbox10");
        textbox1.value = mm[0] + "cm";
        var textbox2 = document.getElementById("textbox20");
        textbox2.value = mm[1] + "cm";
    }
    ws.onerror = function () {
        $("#log").prepend("&lt;onerror&gt; " + "<br/>");
    }

    ws.onclose = function () {
        $("#log").prepend("&lt;onclose&gt; " + "<br/>");
    }

    $("#textbox1").on('input', function () {
        var value = $("#textbox1").val();

        if(value != null) {
       		console.log(value);
        	ws.send("sensi=" + value);
        }
    });

    $("#textbox2").on('input', function () {
        var value = $("#textbox2").val();
        if(value != null) {
        	console.log(value);
        	ws.send("dpi=" + value);
        }
    });

    $("#mySelect").on('change', function () {
        var selectedValue = $("#mySelect").val();
        if(selectedValue != null) {
        	console.log(selectedValue);
        	ws.send("game=" + selectedValue);
        }
    });

    $(window).unload(function () {
        ws.onclose();
    });
})