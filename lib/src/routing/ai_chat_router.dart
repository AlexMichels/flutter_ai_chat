import 'package:ai_chat_flutter/src/common_widgets/empty_placeholder_widget.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/ai_chat_screen.dart';
import 'package:ai_chat_flutter/src/features/ai_chat_authentication/presentiation/ai_chat_login_screen.dart';
import 'package:ai_chat_flutter/src/features/ai_chat_authentication/presentiation/ai_chat_sign_up_screen.dart';
import 'package:ai_chat_flutter/src/localization/app_localization_context.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AiChatRoute {
  login,
  signUp,
  chatHistory,
}

final aiChatRouter = GoRouter(
  initialLocation: '/login',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/login',
      name: AiChatRoute.login.name,
      builder: (context, state) => const AiChatLoginScreen(),
    ),
    GoRoute(
      path: '/signUp',
      name: AiChatRoute.signUp.name,
      builder: (context, state) => const AiChatSignUpScreen(),
    ),
    GoRoute(
      path: '/chatHistory',
      name: AiChatRoute.chatHistory.name,
      builder: (context, state) => const AiChatScreen(),
    ),
  ],
  errorBuilder: (context, state) {
    return Scaffold(
        appBar: AppBar(), body: EmptyPlaceholderWidget(message: context.loc.errorMessage));
  },
);
