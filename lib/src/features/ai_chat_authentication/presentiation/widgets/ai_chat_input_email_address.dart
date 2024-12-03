import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/localization/app_localization_context.dart';
import 'package:flutter/material.dart';

class AiChatInputEmailAdress extends StatelessWidget {
  const AiChatInputEmailAdress({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: Sizes.p16),
      child: SizedBox(
        width: AuthScreenButtonSize.buttonWidth,
        height: AuthScreenButtonSize.butttonHeight,
        child: TextField(
          decoration: InputDecoration(
            labelText: context.loc.emailAddress,
            labelStyle: textTheme.labelMedium,
            hintStyle: textTheme.bodySmall, //already fix
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.only(
                top: Sizes.p8, left: Sizes.p16, right: Sizes.p16, bottom: Sizes.p8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.p8),
              borderSide: BorderSide(color: colorTheme.primary),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.p8),
              borderSide: BorderSide(color: colorTheme.primary),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.p8),
              borderSide: BorderSide(color: colorTheme.primary),
            ),
          ),
        ),
      ),
    );
  }
}
