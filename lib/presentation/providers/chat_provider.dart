import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final yesNoAnswer = GetYesNoAnswer();

  List<Message> messages = [
    Message(text: 'alo bb', fromWho: FromWho.mine),
    Message(text: 'ya regresaste del trabajo?', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messages.add(newMessage);
    notifyListeners();
    // we check if that was a question
    if (text.endsWith('?')) await herReply();

    moveScrollToBottom();
  }

  Future<void> herReply() async {
    final herMessage = yesNoAnswer.getAnswer();
    messages.add(await herMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    // MOCK BEING SENT
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
