import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/localization/app_localization_context.dart';
import 'package:ai_chat_flutter/src/theme/ai_chat_theme_helper.dart';
import 'package:flutter/material.dart';

class AiChatFlutterLogo extends StatelessWidget {
  const AiChatFlutterLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).isDarkMode;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: ChatScreenLogoSize.width,
          height: ChatScreenLogoSize.height,
          child: isDarkMode
              ? Image.asset('assets/images/Fluttera_dark.png')
              : Image.asset('assets/images/Fluttera_light.png'),
        ),
        gapH12,
        Text(
          context.loc.flutterSeniorDeveloper,
          style: textTheme.bodyLarge,
        ),
      ],
    );
  }
}
