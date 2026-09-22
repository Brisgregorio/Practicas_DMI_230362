import 'package:flutter/material.dart';
import 'package:yes_no_app/prensentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIXg1ouDuND7mbJmNeZeeIJj0v29FlGKDa_eAXWKMslZLncy7oib4ukTU&s=10'),
                
          ),
        ),
        title: const Text('Quackity'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
      
      child: Column(
          children: [

            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder:  (context, index) {
                return const MyMessageBubble();
              }))
          ],
        ),
      )
    );
  }
} 