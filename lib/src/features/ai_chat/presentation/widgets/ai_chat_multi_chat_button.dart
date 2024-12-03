import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/constants/breakpoints.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_button_state_changes_repository.dart';
import 'package:ai_chat_flutter/src/localization/app_localization_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MultiChatsButton extends ConsumerWidget {
  const MultiChatsButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    // Check if the width and height exceed the breakpoints
    final isBreakButtonWidth = MediaQuery.sizeOf(context).width >= Breakpoint.breakButtonWidthPoint;
    final isBreakButtonHeight =
        MediaQuery.sizeOf(context).height >= Breakpoint.breakButtonHeightPoint;

    // Watch the isClickedProvider to detect state changes
    final isClicked = ref.watch(isClickedMultiButtonProvider);

    return isBreakButtonHeight && isBreakButtonWidth
        ? LayoutBuilder(
            builder: (context, constraints) {
              return Padding(
                padding: const EdgeInsets.only(top: Sizes.p6, right: Sizes.p20),
                child: GestureDetector(
                  onTap: () {
                    ref.read(isClickedMultiButtonProvider.notifier).state = !isClicked;
                  },
                  child: Container(
                    width: ButtonSize.width,
                    height: ButtonSize.height,
                    decoration: BoxDecoration(
                      color: isClicked
                          ? colorTheme.primaryFixedDim
                          : Colors.transparent, // Solid color after click
                      border: isClicked
                          ? null
                          : Border.all(
                              color: colorTheme.primaryFixedDim,
                              width: Sizes.p3), // Border before click
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        context.loc.multiChats,
                        style: isClicked
                            ? textTheme.bodyMedium!.copyWith(color: colorTheme.tertiaryContainer)
                            : textTheme.bodyMedium!
                                .copyWith(color: colorTheme.onTertiaryFixedVariant),
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        : const SizedBox.shrink();
  }
}
