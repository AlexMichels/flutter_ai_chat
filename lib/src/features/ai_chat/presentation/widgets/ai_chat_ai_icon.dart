import 'package:ai_chat_flutter/gen/assets.gen.dart';
import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AiChatAiIcon extends StatelessWidget {
  const AiChatAiIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Sizes.p100),
      child: Image.asset(
        Assets.images.fluttera.path,
        width: Sizes.p28,
        height: Sizes.p28,
        fit: BoxFit.cover,
      ),
    );
  }
}
