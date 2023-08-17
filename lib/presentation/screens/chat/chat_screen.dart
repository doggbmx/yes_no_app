import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://static.wikia.nocookie.net/metalgear/images/f/f1/TPPVenomSnakeMB.png/revision/latest?cb=20151206170252'),
          ),
        ),
        title: const Text('Venom'),
        // centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  // esto puedo quitarlo
  // const _ChatView({
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const HerMessageBubble()
                      : const MyMessageBubble();
                },
              ),
            ),
            MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
// yesno.wtf/api

