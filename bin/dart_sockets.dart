// bin/server.dart

import 'dart:io';
import 'package:dart_sockets/controllers/handshake_controller.dart';
import 'package:dart_sockets/controllers/chat_controller.dart';

void main() async {
  final server = await ServerSocket.bind(InternetAddress.anyIPv4, 4040);
  print('Server listening on port ${server.port}');

  final handshakeController = HandshakeController();
  final chatController = ChatController();

  await for (var socket in server) {
    socket.listen(
          (data) {
        final message = String.fromCharCodes(data).trim();
        print('Message from client: $message');

        if (message.startsWith('HELLO') || message.startsWith('READY')) {
          handshakeController.handleHandshake(socket, message);
        } else if (message.startsWith('CHAT')) {
          chatController.handleChat(socket, message);
        } else {
          socket.write('UNKNOWN_COMMAND');
        }
      },
      onDone: () {
        print('Client disconnected');
        socket.close();
      },
    );
  }
}
