import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/constants/breakpoints.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/controller/ai_chat_controller.dart';
import 'package:ai_chat_flutter/src/features/ai_chat_side_bar/presentation/wigets/ai_chat_history_chat.dart';
import 'package:ai_chat_flutter/src/features/ai_chat_side_bar/presentation/wigets/ai_chat_new_chat_button.dart';
import 'package:ai_chat_flutter/src/features/ai_chat_side_bar/presentation/wigets/ai_chat_upgrade_plan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AiChatLeftSideOpenDrawerState extends ConsumerWidget {
  const AiChatLeftSideOpenDrawerState({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorTheme = Theme.of(context).colorScheme;
    final isDesktopwidth = MediaQuery.of(context).size.width >= Breakpoint.desktop;
    final isDesktopheight = MediaQuery.of(context).size.height >= Breakpoint.tablet;

    return isDesktopwidth && isDesktopheight
        ? Container(
            width: MediaQuery.sizeOf(context).width * (Sizes.p1 / Sizes.p6),
            height: MediaQuery.sizeOf(context).height,
            color: colorTheme.secondaryFixed,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(right: Sizes.p12, left: Sizes.p12, top: Sizes.p20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AiChatNewChatButton(
                      onPressed: () {
                        ref.read(aiChatControllerProvider.notifier).resetChat();
                      },
                    ),
                    const AiChatHistoryChat(),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * (Sizes.p1 / Sizes.p6),
                    ),
                    const AiChatUpgradePlan()
                  ],
                ),
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
