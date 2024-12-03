import 'package:ai_chat_flutter/src/features/ai_chat/data/fetch_answer_repository.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_ai_answer_model.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_user_question_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ai_chat_service.g.dart';

class AiChatService {
  final Ref ref;

  AiChatService({required this.ref});

  Future<AiChatAiAnswerModel> fetchAnswer(List<AiChatUserQuestionModel> userMessage) {
    final repository = ref.read(fetchAnswerProvider);
    return repository.fetchAnswer(userMessage);
  }
}

@Riverpod(keepAlive: true)
AiChatService aiChatService(AiChatServiceRef ref) {
  return AiChatService(ref: ref);
}
