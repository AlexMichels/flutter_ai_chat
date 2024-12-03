import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AiChatSignUpPrompt extends StatelessWidget {
  const AiChatSignUpPrompt({
    super.key,
    required this.promptText,
    required this.signUpOrLogin,
    required this.onTap,
  });

  final String promptText;
  final String signUpOrLogin;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.only(top: Sizes.p12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  promptText,
                  style: textTheme.labelLarge,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: GestureDetector(
                  onTap: onTap,
                  child: Text(
                    signUpOrLogin,
                    style: textTheme.bodySmall, //alreadyfixed
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
