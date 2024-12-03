import 'package:ai_chat_flutter/src/common_widgets/responsive_center.dart';
import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AiChatModelOption extends StatelessWidget {
  final String imagePath;
  final String whichModel;
  final String label;
  final TextStyle modelTextStyle;
  final TextStyle labelTextStyle;
  final bool isSelected;
  final VoidCallback onTap;

  const AiChatModelOption({
    super.key,
    required this.imagePath,
    required this.whichModel,
    required this.label,
    required this.modelTextStyle,
    required this.labelTextStyle,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;

    return ResponsiveCenter(
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              width: constraints.maxWidth, // Responsive width
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: Sizes.p16, horizontal: Sizes.p6),
                child: Row(
                  children: [
                    Image.asset(imagePath, width: Sizes.p40, height: Sizes.p40),
                    const SizedBox(width: Sizes.p8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            whichModel,
                            style: modelTextStyle,
                            maxLines: TextLine.mini,
                            overflow: TextOverflow.ellipsis, // Handle overflow
                          ),
                          const SizedBox(height: Sizes.p4),
                          Text(
                            label,
                            style: labelTextStyle,
                            maxLines: TextLine.mini,
                            overflow: TextOverflow.ellipsis, // Handle overflow
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    if (isSelected)
                      Padding(
                        padding: const EdgeInsets.only(left: Sizes.p8),
                        child: Icon(
                          Icons.check_circle,
                          size: Sizes.p20,
                          color: colorTheme.primary,
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
