import 'package:ai_chat_flutter/src/common_widgets/error_message_widget.dart';
import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/constants/breakpoints.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/controller/ai_chat_controller.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/widgets/ai_chat_body.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/widgets/ai_chat_flutter_logo.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/widgets/ai_chat_fluttera_model_button.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/widgets/ai_chat_histroy.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/widgets/ai_chat_input_field.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/widgets/ai_chat_multi_chat_button.dart';
import 'package:ai_chat_flutter/src/features/ai_chat_side_bar/presentation/ai_chat_left_side_open_drawer_state.dart';
import 'package:ai_chat_flutter/src/localization/app_localization_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isModelChooserVisibleProvider = StateProvider<bool>((ref) => false);

class AiChatScreen extends ConsumerStatefulWidget {
  const AiChatScreen({super.key});

  @override
  ConsumerState<AiChatScreen> createState() => _AiChatScreenState();
}

class _AiChatScreenState extends ConsumerState<AiChatScreen> {
  TextEditingController userUpdateQuestionController = TextEditingController();

  @override
  void dispose() {
    userUpdateQuestionController.dispose();
    super.dispose();
  }

  List<Map<String, dynamic>> combinedList = [];

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final answerValue = ref.watch(aiChatControllerProvider);
    combinedList = ref.watch(aiChatControllerProvider.notifier).getCombinedList;

    return Scaffold(
      backgroundColor: colorTheme.primaryContainer,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isSmallScreenHeight = constraints.maxHeight < Breakpoint.breakScreenHeightPoint;
          final isSmallScreenWidth = constraints.maxWidth < Breakpoint.breakScreenWidthPoint;

          return Row(
            children: [
              const AiChatLeftSideOpenDrawerState(), // Chat history and sidebar
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: ChatHistoryPadding.bottom),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AiChatFlutteraModelButton(),

                          MultiChatsButton(), // Button to toggle multi-option
                        ],
                      ),
                      //  const AiChatMultiOptionBody(), //TODO remove later
                      if (userQuestionsList.isEmpty)
                        Expanded(
                          child: Column(
                            children: [
                              if (constraints.maxWidth > Breakpoint.breakpointWidthforlogo &&
                                  constraints.maxHeight > Breakpoint.breakpointHeightforlogo)
                                const Expanded(child: AiChatFlutterLogo())
                              else if (constraints.maxWidth > Breakpoint.breakpointWidthtWarnText &&
                                  constraints.maxHeight > Breakpoint.breakpointHeightWarnText)
                                Center(
                                  child: Text(
                                    context.loc.tooSmallScreenSizeToShowChatScreen,
                                    style: textTheme.labelLarge,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              if (constraints.maxWidth >
                                      Breakpoint.breakpointWidthAiChatInputField &&
                                  constraints.maxHeight >
                                      Breakpoint.breakpointHeightAiChatInputField)
                                AiChatInputField(
                                  userUpdateQuestionController: userUpdateQuestionController,
                                  showSuffixIcon: !(isSmallScreenHeight || isSmallScreenWidth),
                                ),
                            ],
                          ),
                        )
                      else if (isSmallScreenWidth)
                        Expanded(
                          child: Center(
                            child: Text(
                              context.loc.tooSmallScreenSizeToShowChatScreen,
                              style: textTheme.labelLarge,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      else
                        Expanded(
                          child: AiChatHistory(
                            child: answerValue.when(
                              data: (question) => AiChatBody(combinedList: combinedList),
                              error: (e, st) => Center(child: ErrorMessageWidget(e.toString())),
                              loading: () => combinedList.isEmpty
                                  ? const Center(child: CircularProgressIndicator())
                                  : AiChatBody(combinedList: combinedList),
                            ),
                          ),
                        ),
                      if (userQuestionsList.isNotEmpty &&
                          constraints.maxWidth > Breakpoint.breakpointWidthAiChatInputField &&
                          constraints.maxHeight > Breakpoint.breakpointHeightAiChatInputField)
                        AiChatInputField(
                          userUpdateQuestionController: userUpdateQuestionController,
                          showSuffixIcon: !(isSmallScreenHeight || isSmallScreenWidth),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
