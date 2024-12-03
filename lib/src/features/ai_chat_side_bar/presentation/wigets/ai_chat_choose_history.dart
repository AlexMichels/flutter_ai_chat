import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/features/ai_chat_side_bar/presentation/controller/ai_chat_selected_history_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AiChatChooseHistory extends ConsumerWidget {
  const AiChatChooseHistory({
    super.key,
    required this.onSelected,
    required this.text,
  });

  final VoidCallback onSelected;
  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    // Watch the selected key state
    final selectedKeyState = ref.watch(aiChatSelectedHistoryControllerProvider);

    // Determine if this item is selected based on the current selected key
    final isSelected = selectedKeyState.value == key;

    return Padding(
      padding: const EdgeInsets.only(top: Sizes.p6),
      child: GestureDetector(
        onTap: () async {
          // Call selectKey when tapped
          await ref.read(aiChatSelectedHistoryControllerProvider.notifier).selectKey(key!);
          onSelected();
        },
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? colorTheme.onSecondaryFixedVariant : colorTheme.secondaryFixed,
            borderRadius: BorderRadius.circular(Sizes.p6),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p12, vertical: Sizes.p12),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: textTheme.labelLarge,
                maxLines: TextLine.mini,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
