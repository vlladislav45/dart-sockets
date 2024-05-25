
class HandshakeService {
  String handleInitialHandshake(String message) {
    if (message == 'HELLO') {
      return 'HELLO_ACK';
    }
    return 'UNKNOWN_COMMAND';
  }

  String handleSecondaryHandshake(String message) {
    if (message == 'READY') {
      return 'READY_ACK';
    }
    return 'UNKNOWN_COMMAND';
  }
}