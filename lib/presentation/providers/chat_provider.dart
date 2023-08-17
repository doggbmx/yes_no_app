import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'alo bb', fromWho: FromWho.mine),
    Message(text: 'ya regresaste del trabajo?', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String text) async {
    // TODO: IMPLEMENT THIS
  }
}
