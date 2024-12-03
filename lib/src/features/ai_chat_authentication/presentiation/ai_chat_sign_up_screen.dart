// ignore_for_file: deprecated_member_use

import 'package:ai_chat_flutter/src/common_widgets/responsive_center.dart';
import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/features/ai_chat_authentication/presentiation/widgets/ai_chat_continue_button.dart';
import 'package:ai_chat_flutter/src/features/ai_chat_authentication/presentiation/widgets/ai_chat_division_line.dart';
import 'package:ai_chat_flutter/src/features/ai_chat_authentication/presentiation/widgets/ai_chat_input_email_address.dart';
import 'package:ai_chat_flutter/src/features/ai_chat_authentication/presentiation/widgets/ai_chat_sign_up_prompt.dart';
import 'package:ai_chat_flutter/src/features/ai_chat_authentication/presentiation/widgets/ai_chat_term_policy.dart';
import 'package:ai_chat_flutter/src/features/ai_chat_authentication/presentiation/widgets/ai_chat_third_party_button.dart';
import 'package:ai_chat_flutter/src/localization/app_localization_context.dart';
import 'package:ai_chat_flutter/src/routing/ai_chat_router.dart';
import 'package:ai_chat_flutter/src/theme/ai_chat_theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AiChatSignUpScreen extends ConsumerWidget {
  const AiChatSignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final isDarkMode = Theme.of(context).isDarkMode;
    return Scaffold(
      backgroundColor: colorTheme.onPrimaryContainer,
      body: ResponsiveCenter(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: Sizes.p10),
                  child: SizedBox(
                    width: AuthScreenToolSize.flutteralogoWidth,
                    height: AuthScreenToolSize.flutteralogoHeigh,
                    child: isDarkMode
                        ? Image.asset('assets/images/Dart.png')
                        : Image.asset('assets/images/Light-removebg-preview.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: Sizes.p114),
                  child: Text(
                    context.loc.createAnAccount,
                    style: textTheme.headlineMedium,
                  ),
                ),
                const AiChatInputEmailAdress(),
                const AiChatContinueButton(),
                AiChatSignUpPrompt(
                  promptText: context.loc.alreadyHaveAnAccount,
                  signUpOrLogin: context.loc.login,
                  onTap: () => context.goNamed(AiChatRoute.login.name),
                ),
                const AiChatDivisionLine(),
                Padding(
                  padding: const EdgeInsets.only(top: Sizes.p18),
                  child: AiChatThirdPartyButton(
                      thirdPartyName: context.loc.continueWithGoogle,
                      logoPath:
                          isDarkMode ? 'assets/images/Group1.png' : 'assets/images/Group.jpg'),
                ),
                AiChatThirdPartyButton(
                  thirdPartyName: context.loc.continueWithMicrosoftAccount,
                  logoPath: 'assets/images/Microsoft_Logo 1.png',
                ),
                AiChatThirdPartyButton(
                  thirdPartyName: context.loc.continueWithApple,
                  logoPath: 'assets/images/apple 1.png',
                ),
                gapH112,
                const AiChatTermPolicy(),
                gapH112
              ],
            ),
          ),
        ),
      ),
    );
  }
}
