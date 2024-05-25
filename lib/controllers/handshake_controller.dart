import 'dart:io';
import '../services/handshake_service.dart';

class HandshakeController {
  final HandshakeService _handshakeService = HandshakeService();
  int handshakeStage = 0;

  void handleHandshake(Socket socket, String message) {
    String response;

    if (handshakeStage == 0) {
      response = _handshakeService.handleInitialHandshake(message);
      if (response == 'HELLO_ACK') {
        handshakeStage = 1;
      }
    } else if (handshakeStage == 1) {
      response = _handshakeService.handleSecondaryHandshake(message);
      if (response == 'READY_ACK') {
        handshakeStage = 2;
      }
    } else {
      response = 'HANDSHAKE_COMPLETE';
    }

    socket.write(response);
  }
}