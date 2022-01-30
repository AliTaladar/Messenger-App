import 'package:flutter/material.dart';
import 'package:messenger/constants.dart';
import 'package:messenger/models/ChatMessage.dart';

import 'chat_input_field.dart';
import 'message.dart';
import 'text_message.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demoChatMessages.length,
              itemBuilder: (context, index) => Message(
                message: demoChatMessages[index],
              ),
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}
