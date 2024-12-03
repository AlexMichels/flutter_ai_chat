import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AiChatThirdPartyButton extends StatelessWidget {
  const AiChatThirdPartyButton({
    super.key,
    required this.logoPath,
    required this.thirdPartyName,
  });

  final String logoPath;
  final String thirdPartyName;

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.p10),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final double buttonWidth = constraints.maxWidth < AuthScreenButtonSize.buttonWidth
              ? constraints.maxWidth
              : AuthScreenButtonSize.buttonWidth;
          return SizedBox(
            width: buttonWidth,
            height: AuthScreenButtonSize.butttonHeight,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Sizes.p4),
                ),
                side: BorderSide(
                  color: colorTheme.onPrimary,
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    logoPath,
                    width: ThirdPartyIconsSize.width,
                    height: ThirdPartyIconsSize.height,
                  ),
                  gapW6,
                  Flexible(
                    child: Text(
                      thirdPartyName,
                      style: textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
