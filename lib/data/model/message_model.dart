class MessageModel {
  String role, message;

  MessageModel({required this.role, required this.message});

  bool isUser() => role == 'user';
}