import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/features/ai_chat_side_bar/presentation/wigets/ai_chat_choose_history.dart';
import 'package:ai_chat_flutter/src/localization/app_localization_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AiChatHistoryChat extends ConsumerWidget {
  const AiChatHistoryChat({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * (SideBar.dividedWidth / SideBar.totalWidth),
        height: MediaQuery.sizeOf(context).height * (SideBar.dividedHeight / SideBar.totalHeight),
        child: Column(
          children: [
            // First half of the available height
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: Sizes.p12),
                    child: Text(
                      context.loc.todayChat,
                      style: textTheme.bodyMedium!.copyWith(
                        color: colorTheme.primary,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          AiChatChooseHistory(
                            key: UniqueKey(),
                            onSelected: () {},
                            text: 'the quick brown fox jumps over the lazy dog',
                          ),
                          AiChatChooseHistory(
                            key: UniqueKey(),
                            onSelected: () {},
                            text: 'the quick brown fox jumps over the lazy dog',
                          ),
                          AiChatChooseHistory(
                            key: UniqueKey(),
                            onSelected: () {},
                            text: 'the quick brown fox jumps over the lazy dog',
                          ),
                          AiChatChooseHistory(
                            key: UniqueKey(),
                            onSelected: () {},
                            text: 'the quick brown fox jumps over the lazy dog',
                          ),
                          AiChatChooseHistory(
                            key: UniqueKey(),
                            onSelected: () {},
                            text:
                                'the quick brown fox jumps over the lazy dog the quick brown fox jumps over the lazy do',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            gapH64,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: Sizes.p12),
                    child: Text(
                      context.loc.previousChat,
                      style: textTheme.bodyMedium!.copyWith(
                        color: colorTheme.primary,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          AiChatChooseHistory(
                            key: UniqueKey(),
                            onSelected: () {},
                            text: 'the quick brown fox jumps over the lazy dog',
                          ),
                          AiChatChooseHistory(
                            key: UniqueKey(),
                            onSelected: () {},
                            text: 'the quick brown fox jumps over the lazy dog',
                          ),
                          AiChatChooseHistory(
                            key: UniqueKey(),
                            onSelected: () {},
                            text: 'the quick brown fox jumps over the lazy dog',
                          ),
                          AiChatChooseHistory(
                            key: UniqueKey(),
                            onSelected: () {},
                            text: 'the quick brown fox jumps over the lazy dog',
                          ),
                          AiChatChooseHistory(
                            key: UniqueKey(),
                            onSelected: () {},
                            text: 'the quick brown fox jumps over the lazy dog',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
