class Message {
  final int id;
  final String message;
  final String time;

  Message({required this.id, required this.message, required this.time});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      message: json['message'],
      time: json['time'],
    );
  }
}