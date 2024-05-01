import 'package:app/presentation/core/utils/constants/colors.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constants/styles.dart';

class CustomerServiceScreen extends StatefulWidget {
  const CustomerServiceScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomerServiceScreenState createState() => _CustomerServiceScreenState();
}

class _CustomerServiceScreenState extends State<CustomerServiceScreen> {
  List<ChatMessage> messages = <ChatMessage>[
    ChatMessage(
      text: 'Where are you?',
      user: ChatUser(
        id: '1',
        firstName: 'Charles',
        lastName: 'Leclerc',
      ),
      createdAt: DateTime.now(),
    ),
    ChatMessage(
      text: 'Hey!',
      user: ChatUser(
        id: '1',
        firstName: 'Charles',
        lastName: 'Leclerc',
      ),
      createdAt: DateTime.now(),
    ),
    ChatMessage(
      text: 'Hey!',
      user: ChatUser(
        id: '2',
        firstName: 'Charles',
        lastName: 'Leclerc',
      ),
      createdAt: DateTime.now(),
    ),

    /* ChatMessage(
      text: 'I\'m at home. ',
      user: ChatUser(
        id: '2',
        firstName: 'Charles',
        lastName: 'Leclerc',
      ),
      createdAt: DateTime.now(),
    ),
    ChatMessage(
      text: 'and you...! ',
      user: ChatUser(
        id: '2',
        firstName: 'Charles',
        lastName: 'Leclerc',
      ),
      createdAt: DateTime.now(),
    ),
    ChatMessage(
      text: 'I\'m at work. ',
      user: ChatUser(
        id: '1',
        firstName: 'Charles',
        lastName: 'Leclerc',
      ),
      createdAt: DateTime.now(),
    ),*/
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Customer Service",
          style: AppStyles.font16Gray800Medium,
        ),
      ),
      body: DashChat(
        currentUser: ChatUser(
          id: '1',
          firstName: 'Charles',
          lastName: 'Leclerc',
        ),
        onSend: (ChatMessage m) {
          setState(() {
            messages.insert(0, m);
          });
        },
        messages: messages.toList(),
        messageOptions: const MessageOptions(
          showOtherUsersAvatar: false,
          showOtherUsersName: false,
        ),
        messageListOptions: const MessageListOptions(),
        inputOptions: InputOptions(
          inputDisabled: false,
          cursorStyle: const CursorStyle(color: AppColors.accent),
          inputDecoration: InputDecoration(
            filled: true,
            fillColor: AppColors.gray100,
            hintText: "Message",
            hintStyle: AppStyles.font14Gray500Medium,
            prefixIcon: const Icon(Icons.tag_faces_sharp),
          ),
          alwaysShowSend: true,
          sendOnEnter: true,
        ),
      ),
    );
  }
}
