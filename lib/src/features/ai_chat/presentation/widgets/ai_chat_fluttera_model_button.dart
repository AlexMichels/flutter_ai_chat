import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/constants/breakpoints.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/widgets/ai_chat_choose_models.dart';
import 'package:ai_chat_flutter/src/localization/app_localization_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AiChatFlutteraModelButton extends ConsumerStatefulWidget {
  const AiChatFlutteraModelButton({super.key});

  @override
  ConsumerState<AiChatFlutteraModelButton> createState() => _AiChatFlutteraModelButtonState();
}

class _AiChatFlutteraModelButtonState extends ConsumerState<AiChatFlutteraModelButton> {
  OverlayEntry? _overlayEntry;

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isBreakButtonWidth = MediaQuery.sizeOf(context).width >= Breakpoint.desktop;
    final isBreakButtonHeight =
        MediaQuery.sizeOf(context).height >= Breakpoint.breakButtonHeightPoint;

    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return isBreakButtonHeight && isBreakButtonWidth
        ? LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > Breakpoint.breakpointWidthAiChatInputField &&
                  constraints.maxHeight > Breakpoint.breakpointHeightAiChatInputField) {
                return Padding(
                  padding:
                      const EdgeInsets.only(top: Sizes.p28, left: Sizes.p18, bottom: Sizes.p22),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        _toggleOverlay(context);
                      },
                      child: Text(
                        context.loc.fluttera,
                        style: textTheme.bodyLarge?.copyWith(color: colorTheme.onSecondaryFixed),
                      ),
                    ),
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          )
        : const SizedBox.shrink();
  }

  void _toggleOverlay(BuildContext context) {
    if (_overlayEntry == null) {
      _showOverlay(context);
    } else {
      _removeOverlay();
    }
  }

  void _showOverlay(BuildContext context) {
    _overlayEntry = OverlayEntry(
      builder: (context) {
        return GestureDetector(
          onTap: _removeOverlay, // Remove overlay on tap
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * ModelSizes.fromTop,
                left: MediaQuery.of(context).size.width * ModelSizes.fromLeft,
                child: const Material(
                  color: Colors.transparent,
                  child: AiChatChooseModels(),
                ),
              ),
            ],
          ),
        );
      },
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}
