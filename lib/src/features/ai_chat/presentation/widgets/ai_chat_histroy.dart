import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AiChatHistory extends StatelessWidget {
  const AiChatHistory({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: ChatHistoryPadding.top,
          left: ChatHistoryPadding.left,
          right: ChatHistoryPadding.right),
      child: Container(
        child: child,
      ),
    );
  }
}
