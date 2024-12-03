import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/localization/app_localization_context.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AiChatTermPolicy extends StatelessWidget {
  const AiChatTermPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: GestureDetector(
                onTap: _launchURL,
                child: Text(
                  context.loc.termOfUse,
                  style: textTheme.labelMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p8),
              child: Container(
                width: Sizes.p1,
                height: Sizes.p12,
                color: colorTheme.primary,
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: _launchURL,
                child: Text(
                  context.loc.privacyPolicy,
                  style: textTheme.labelMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

Future<void> _launchURL() async {
  final Uri url = Uri.parse('https://fluttera.de/datenschutz.html');
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}
