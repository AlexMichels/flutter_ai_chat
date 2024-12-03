import 'package:ai_chat_flutter/src/features/ai_chat/presentation/widgets/ai_chat_multi_option.dart';
import 'package:flutter/material.dart';

class AiChatMultiOptionBody extends StatelessWidget {
  const AiChatMultiOptionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AiChatMultiOption(
          "Why was the math book sad?",
          "Because it had too many problems",
          "Fluttera",
          key: UniqueKey(), // Unique key for each instance
        ),
        AiChatMultiOption(
          "Why don't oysters donate to charity",
          "Because they're shellfish",
          "ChatGPT 4.0",
          key: UniqueKey(), // Unique key for each instance
        ),
        AiChatMultiOption(
          "Why did the scarecrow win an award",
          "Because he was outstanding in his field",
          "Gemini",
          key: UniqueKey(), // Unique key for each instance
        ),
      ],
    );
  }
}
