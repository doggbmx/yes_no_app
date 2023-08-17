import 'package:flutter/material.dart';

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
    );
  }
}
