import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AiChatSendingButton extends StatelessWidget {
  final Color iconBackgroundColor;
  final Color arrowUpColor;
  const AiChatSendingButton({
    super.key,
    required this.iconBackgroundColor,
    required this.arrowUpColor,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: iconBackgroundColor,
      radius: Sizes.p16,
      child: Icon(
        Icons.arrow_upward,
        size: Sizes.p24,
        color: arrowUpColor,
      ),
    );
  }
}
