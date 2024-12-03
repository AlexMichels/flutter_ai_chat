import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// State provider to store the clicked state for each AiChatMultiOption
final isSelectedProvider = StateProvider.autoDispose.family<Color, Key>((ref, key) {
  //TODO move the provider to data
  return Colors.transparent; // Initial color for each instance
});

class AiChatMultiOption extends ConsumerWidget {
  final String userQuestion;
  final String aiAnswer;
  final String whichModel;

  const AiChatMultiOption(this.userQuestion, this.aiAnswer, this.whichModel, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    // Using the key to manage independent state for each widget
    final currentColor = ref.watch(isSelectedProvider(key!));

    return GestureDetector(
      //TODO make responsive
      onTap: () {},
      child: MouseRegion(
        onEnter: (event) {
          ref.read(isSelectedProvider(key!).notifier).state = colorTheme.primaryFixed;
        },
        onExit: (event) {
          ref.read(isSelectedProvider(key!).notifier).state = colorTheme.onPrimaryFixedVariant;
        },
        child: Container(
          width: MediaQuery.sizeOf(context).width * (Sizes.p1 / Sizes.p6),
          height: MediaQuery.sizeOf(context).height * (Sizes.p1 / ButtonSize.divided),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: Sizes.p1,
                blurRadius: Sizes.p4,
                offset: const Offset(0, Sizes.p8),
              ),
            ],
            color: currentColor,
            borderRadius: BorderRadius.circular(Sizes.p20), // Set corner radius to 20
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: Sizes.p46, left: Sizes.p24, right: Sizes.p24, bottom: Sizes.p12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  userQuestion,
                  style: textTheme.bodyLarge,
                  maxLines: TextLine.middle,
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: Sizes.p24, bottom: Sizes.p28),
                  child: Text(
                    aiAnswer,
                    style: textTheme.bodyLarge,
                    maxLines: TextLine.middle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Align(
                  child: Text(
                    whichModel,
                    style: textTheme.bodyLarge,
                    maxLines: TextLine.middle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
