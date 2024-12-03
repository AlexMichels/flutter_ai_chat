import 'package:ai_chat_flutter/src/common_widgets/async_value_widget.dart';
import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/constants/breakpoints.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_selected_model.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/controller/ai_chat_model_controller.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/widgets/ai_chat_model_option.dart';
import 'package:ai_chat_flutter/src/localization/app_localization_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AiChatChooseModels extends ConsumerWidget {
  const AiChatChooseModels({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    // Access the currently selected model from the provider
    final selectedModelState = ref.watch(
        aiChatModelControllerProvider); // This returns AsyncValue<AiChatSelectedHistoryModel>

    final isBreakButtonWidth = MediaQuery.sizeOf(context).width >= Breakpoint.desktop;
    final isBreakButtonHeight =
        MediaQuery.sizeOf(context).height >= Breakpoint.breakButtonHeightPoint;

    return isBreakButtonHeight && isBreakButtonWidth
        ? AsyncValueWidget<AiChatSelectedModel>(
            value: selectedModelState,
            data: (data) {
              final selectedModel = data.selectedModel; // Extract selectedModel from data

              return SizedBox(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * (Sizes.p1 / Sizes.p6),
                      height: Sizes.p206,
                      decoration: BoxDecoration(
                        color: colorTheme.onTertiaryFixed,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: Sizes.p8),
                        child: Column(
                          children: [
                            AiChatModelOption(
                              imagePath: 'assets/images/image 1.png',
                              whichModel: context.loc.flutera,
                              label: context.loc.greatForMostDeveloperTasks,
                              modelTextStyle: textTheme.labelMedium ?? const TextStyle(),
                              labelTextStyle: textTheme.labelMedium ?? const TextStyle(),
                              isSelected: selectedModel == context.loc.flutera,
                              onTap: () {
                                ref
                                    .read(aiChatModelControllerProvider.notifier)
                                    .selectModel(context.loc.flutera);
                              },
                            ),
                            AiChatModelOption(
                              imagePath: 'assets/images/image copy 3.png',
                              whichModel: context.loc.gemini,
                              label: context.loc.greatForMostTasks,
                              modelTextStyle: textTheme.labelMedium ?? const TextStyle(),
                              labelTextStyle: textTheme.labelMedium ?? const TextStyle(),
                              isSelected: selectedModel == context.loc.gemini,
                              onTap: () {
                                ref
                                    .read(aiChatModelControllerProvider.notifier)
                                    .selectModel(context.loc.gemini);
                              },
                            ),
                            AiChatModelOption(
                              imagePath: 'assets/images/Icon 128.png',
                              whichModel: context.loc.chatGPT,
                              label: context.loc.usedAdvancedReasoning,
                              modelTextStyle: textTheme.labelMedium ?? const TextStyle(),
                              labelTextStyle: textTheme.labelMedium ?? const TextStyle(),
                              isSelected: selectedModel == context.loc.chatGPT,
                              onTap: () {
                                ref
                                    .read(aiChatModelControllerProvider.notifier)
                                    .selectModel(context.loc.chatGPT);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        : const SizedBox.shrink();
  }
}
