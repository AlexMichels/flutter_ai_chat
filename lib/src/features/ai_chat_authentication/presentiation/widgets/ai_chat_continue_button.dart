import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/localization/app_localization_context.dart';
import 'package:ai_chat_flutter/src/routing/ai_chat_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AiChatContinueButton extends StatelessWidget {
  const AiChatContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: Sizes.p22),
      child: SizedBox(
        width: AuthScreenButtonSize.buttonWidth,
        height: AuthScreenButtonSize.butttonHeight,
        child: InkWell(
          onTap: () => context.goNamed(AiChatRoute.chatHistory.name),
          borderRadius: BorderRadius.circular(Sizes.p10),
          child: Ink(
            decoration: BoxDecoration(
              color: colorTheme.onSecondary,
              borderRadius: BorderRadius.circular(Sizes.p10),
            ),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                context.loc.continueText,
                style: textTheme.bodyMedium,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
