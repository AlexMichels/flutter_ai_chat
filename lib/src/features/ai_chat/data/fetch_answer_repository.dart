import 'package:ai_chat_flutter/src/api_service/open_api_service.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_ai_answer_model.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_user_question_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_answer_repository.g.dart';

class FetchAnswerRepository {
  final OpenAIService openAIService;

  FetchAnswerRepository({required this.openAIService});

  Future<AiChatAiAnswerModel> fetchAnswer(List<AiChatUserQuestionModel> message) async {
    return await openAIService.generateResponse(message);
  }
}

@Riverpod(keepAlive: true)
FetchAnswerRepository fetchAnswer(FetchAnswerRef ref) {
  final openApiService = ref.read(openApiServiceProvider);
  return FetchAnswerRepository(openAIService: openApiService);
}
