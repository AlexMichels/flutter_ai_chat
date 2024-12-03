import 'package:ai_chat_flutter/src/constants/breakpoints.dart';
import 'package:ai_chat_flutter/src/localization/app_localization_context.dart';
import 'package:ai_chat_flutter/src/theme/ai_chat_theme_helper.dart';
import 'package:flutter/material.dart';

class AiChatUpgradePlan extends StatelessWidget {
  const AiChatUpgradePlan({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final isDarkMode = Theme.of(context).isDarkMode;

    // Get the screen width
    final isDesktop = MediaQuery.of(context).size.width >= Breakpoint.breakUpgradePlanWidthPoint;

    return InkWell(
      // onTap event can be handled later
      onTap: () {
        // TODO: Handle tap event
        print("Upgrade Plan clicked!");
      },
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            isDarkMode
                ? 'assets/images/upgradeplanDark.png' // Path for dark mode image
                : 'assets/images/UpgradePlanLlight.png',
          ),
          const SizedBox(width: 8), // Space between image and text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.loc.upgradePlan,
                style: textTheme.labelLarge!.copyWith(color: colorTheme.primary),
              ),
              const SizedBox(height: 4), // Space between model and label text
              // Conditionally render the text based on screen width
              if (isDesktop)
                Text(
                  context.loc.moreAccessToTheBestModels,
                  style: textTheme.labelMedium!.copyWith(color: colorTheme.tertiaryFixed),
                )
              else
                const SizedBox.shrink(),
            ],
          ),
        ],
      ),
    );
  }
}
