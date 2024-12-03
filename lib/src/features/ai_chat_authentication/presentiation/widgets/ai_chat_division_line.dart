import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/localization/app_localization_context.dart';
import 'package:flutter/material.dart';

class AiChatDivisionLine extends StatelessWidget {
  const AiChatDivisionLine({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final linewidth = MediaQuery.sizeOf(context).width * (Sizes.p009 / Sizes.p12);
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: linewidth,
            height: AuthScreenToolSize.lineHeight,
            color: colorTheme.primary,
          ),
          Padding(
            padding: const EdgeInsets.all(Sizes.p12),
            child: Text(
              context.loc.or,
              style: textTheme.labelMedium,
            ),
          ),
          Container(
            width: linewidth,
            height: AuthScreenToolSize.lineHeight,
            color: colorTheme.primary,
          ),
        ],
      );
    });
  }
}
