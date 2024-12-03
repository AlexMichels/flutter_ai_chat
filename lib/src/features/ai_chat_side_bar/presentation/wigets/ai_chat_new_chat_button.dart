import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/localization/app_localization_context.dart';
import 'package:flutter/material.dart';

class AiChatNewChatButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AiChatNewChatButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: ButtonSize.width,
      height: ButtonSize.height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: colorTheme.secondaryFixedDim,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.p12),
          ),
        ),
        child: Row(
          children: [
            Icon(Icons.add, size: Sizes.p20, color: colorTheme.onSecondaryFixed),
            const SizedBox(
              width: Sizes.p4,
            ),
            Expanded(
              child: Text(
                context.loc.newChat,
                style: textTheme.labelLarge?.copyWith(color: colorTheme.onSecondaryFixed),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
