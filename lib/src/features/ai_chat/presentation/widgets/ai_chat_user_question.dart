import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AiChatUserQuestion extends StatelessWidget {
  final String question;

  const AiChatUserQuestion({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final screenWidth = MediaQuery.of(context).size.width;
    final answerWidth = screenWidth * (Sizes.p3 / Sizes.p4);

    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: Sizes.p8),
        decoration: BoxDecoration(
          color: colorTheme.onSurface,
          borderRadius: BorderRadius.circular(Sizes.p20),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            Sizes.p18,
            Sizes.p10,
            Sizes.p18,
            Sizes.p10,
          ),
          child: FractionallySizedBox(
            widthFactor: question.length > Sizes.p48 ? answerWidth / screenWidth : null,
            child: SelectableText(
              question,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
}
