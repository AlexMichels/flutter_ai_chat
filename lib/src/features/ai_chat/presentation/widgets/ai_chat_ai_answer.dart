import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/widgets/ai_chat_ai_icon.dart';
import 'package:flutter/material.dart';

class AiChatAiAnswer extends StatelessWidget {
  final String answer;
  const AiChatAiAnswer({super.key, required this.answer});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenWidth = MediaQuery.sizeOf(context).width;
    final answerWidth = screenWidth * (Sizes.p3 / Sizes.p4);

    return Align(
      alignment: Alignment.bottomLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AiChatAiIcon(),
          gapW16,
          Flexible(
            child: Align(
              alignment: Alignment.centerLeft,
              child: FractionallySizedBox(
                widthFactor: answerWidth / screenWidth,
                child: SelectableText(
                  answer,
                  style: textTheme.bodyLarge,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
