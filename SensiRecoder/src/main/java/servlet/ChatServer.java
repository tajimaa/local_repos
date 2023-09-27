package servlet;

import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/Chat")

public class ChatServer {
	 private static Set<Session> clients = Collections.synchronizedSet(new HashSet<>());

	    @OnOpen
	    public void onOpen(Session session) {
	        String userId = UUID.randomUUID().toString();
	        session.getUserProperties().put("userId", userId);

	        clients.add(session);
	        System.out.println("WebSocketセッションが開始されました。ユーザーID: " + userId);
	    }

	    @OnMessage
	    public void onMessage(String message, Session session) {
	        String userId = (String) session.getUserProperties().get("userId");
	        String fullMessage = "[" + userId + "]=" + message;

	        broadcast(fullMessage);
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

