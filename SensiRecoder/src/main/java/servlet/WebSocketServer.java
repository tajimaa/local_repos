package servlet;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/WebSocketServer")
public class WebSocketServer {
    private static Set<Session> clients = Collections.synchronizedSet(new HashSet<>());
    private int dpi = 800;
    private double sensi = 1.0;
    private String game = "1v1.LOL";
    
    
    @OnOpen
    public void onOpen(Session session) {
        clients.add(session);
        System.out.println("WebSocketセッションが開始されました。");
    }

    @OnMessage
    public void onMessage(String message, Session session) {
        System.out.println("WebSocket受信: " + message);
        String param[] = message.split("=");
        System.out.println(param.length);
        System.out.println(param[1]);
        
        switch (param[0]){
        case "game":
        	game=param[1];
          
        	break;
        case "sensi":
        	sensi=Double.parseDouble(param[1]);
          
        	break;
        case "dpi":
        	dpi = Integer.parseInt(param[1]);
        	break;
      }
        double result1 = calc.GameSensitivity.cm180(dpi, game, sensi);
        double result2 = calc.GameSensitivity.cm360(dpi, game, sensi);
        StringBuilder mm = new StringBuilder();
        mm.append(String.valueOf(result1));
        mm.append(",");
        mm.append(String.valueOf(result2));
        broadcast(mm.toString());
    }

    @OnClose
    public void onClose(Session session) {
        clients.remove(session);
        System.out.println("WebSocketセッションが閉じられました。");
    }

    @OnError
    public void onError(Throwable error) {
        System.err.println("WebSocketエラー: " + error.getMessage());
    }

    private void broadcast(String message) {
        for (Session session : clients) {
            try {
                session.getBasicRemote().sendText(message);
                
            } catch (IOException e) {
                System.err.println("ブロードキャストエラー: " + e.getMessage());
            }
        }
    }
}
