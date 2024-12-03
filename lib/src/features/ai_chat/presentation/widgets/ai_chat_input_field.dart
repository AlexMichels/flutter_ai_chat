import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_user_question_model.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/controller/ai_chat_controller.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/widgets/ai_chat_sending_button.dart';
import 'package:ai_chat_flutter/src/localization/app_localization_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AiChatInputField extends ConsumerStatefulWidget {
  final TextEditingController userUpdateQuestionController;
  final bool showSuffixIcon;

  const AiChatInputField({
    super.key,
    required this.userUpdateQuestionController,
    required this.showSuffixIcon,
  });

  @override
  AiChatInputFieldState createState() => AiChatInputFieldState();
}

class AiChatInputFieldState extends ConsumerState<AiChatInputField> {
  bool isTextPresent = false;

  @override
  void initState() {
    super.initState();
    widget.userUpdateQuestionController.addListener(_handleTextChange);
  }

  void _handleTextChange() {
    setState(() {
      isTextPresent = widget.userUpdateQuestionController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    widget.userUpdateQuestionController.removeListener(_handleTextChange);
    super.dispose();
  }

  List<AiChatUserQuestionModel> userQuestionList = [];

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    userQuestionList = ref.watch(aiChatControllerProvider.notifier).userQuestionList;

    return Padding(
      padding: const EdgeInsets.only(right: inPutBoxWidth, left: inPutBoxWidth),
      child: Stack(
        children: [
          TextFormField(
            style: TextStyle(color: colorTheme.primary),
            textInputAction: TextInputAction.go,
            controller: widget.userUpdateQuestionController,
            minLines: TextLine.mini,
            maxLines: TextLine.maxi,
            onFieldSubmitted: (question) {
              fetchQuestion(question);
            },
            decoration: InputDecoration(
              hintText: context.loc.message_chat_gpt,
              hintStyle: textTheme.bodyLarge!.copyWith(color: colorTheme.tertiary),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Sizes.p30),
                borderSide: BorderSide(
                  color: colorTheme.tertiary,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Sizes.p30),
                borderSide: BorderSide(
                  color: colorTheme.tertiary,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Sizes.p30),
                borderSide: BorderSide(
                  color: colorTheme.tertiary,
                ),
              ),
            ),
          ),
          // Positioning the AiChatSendingButton
          if (widget.showSuffixIcon)
            Positioned(
              bottom: 10, // adjust this to position it higher or lower
              right: 10, // adjust this to position it further left or right
              child: InkWell(
                onTap: () {
                  fetchQuestion(widget.userUpdateQuestionController.text);
                },
                child: AiChatSendingButton(
                  iconBackgroundColor: isTextPresent ? colorTheme.primary : colorTheme.tertiary,
                  arrowUpColor: isTextPresent ? colorTheme.onPrimaryFixed : colorTheme.onTertiary,
                ),
              ),
            ),
        ],
      ),
    );
  }

  void fetchQuestion(String question) {
    if (isTextPresent) {
      ref
          .read(aiChatControllerProvider.notifier)
          .addUserQuestion(AiChatUserQuestionModel(role: 'user', content: question));
      ref.read(aiChatControllerProvider.notifier).fetchAnswer(userQuestionList);
      widget.userUpdateQuestionController.clear();
    }
  }
}
