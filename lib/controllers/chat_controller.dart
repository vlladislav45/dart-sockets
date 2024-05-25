import 'dart:io';
import '../services/chat_service.dart';

class ChatController {
  final ChatService _chatService = ChatService();

  void handleChat(Socket socket, String message) {
    final response = _chatService.processChatMessage(message);
    socket.write(response);
  }
}