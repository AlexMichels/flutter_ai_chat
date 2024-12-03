import 'package:ai_chat_flutter/src/features/ai_chat/application/ai_chat_service.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_ai_answer_model.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_user_question_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ai_chat_controller.g.dart';

List<AiChatUserQuestionModel> userQuestionsList = [];
List<Map<String, dynamic>> combinedQuestionAndAnswerList = [];

@riverpod
class AiChatController extends _$AiChatController {
  AiChatAiAnswerModel aiMessageModel = AiChatAiAnswerModel(choices: []);

  @override
  Future<AiChatAiAnswerModel> build() async {
    return aiMessageModel;
  }

  Future<void> fetchAnswer(List<AiChatUserQuestionModel> model) async {
    state = const AsyncLoading();
    final service = ref.read(aiChatServiceProvider);
    final value = await AsyncValue.guard(() async {
      aiMessageModel = await service.fetchAnswer(model);
    });
    if (value.hasError) {
      state = AsyncError(value.error!, StackTrace.current);
    } else {
      combinedQuestionAndAnswerList.add({'type': 'question', 'data': aiMessageModel});
      state = AsyncData(aiMessageModel);
    }
  }

  // Add user question
  void addUserQuestion(AiChatUserQuestionModel question) {
    combinedQuestionAndAnswerList.add({'type': 'answer', 'data': question});
    userQuestionsList.add(question);
  }

  // Get user question list
  List<AiChatUserQuestionModel> get userQuestionList => userQuestionsList;

  List<Map<String, dynamic>> get getCombinedList => combinedQuestionAndAnswerList;

  // Reset method to clear questions and answers
  void resetChat() {
    userQuestionsList.clear();
    combinedQuestionAndAnswerList.clear();
    // Reset state to a new instance of AiChatAiAnswerModel
    state = AsyncData(AiChatAiAnswerModel(choices: []));
  }
}
