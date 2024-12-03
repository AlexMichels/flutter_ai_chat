import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_chat_user_question_model.freezed.dart';
part 'ai_chat_user_question_model.g.dart';

@freezed
class AiChatUserQuestionModel extends AiChatMessageModel with _$AiChatUserQuestionModel {
  factory AiChatUserQuestionModel({
    required String role,
    required String content,
  }) = _AiChatUserQuestionModel;

  factory AiChatUserQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$AiChatUserQuestionModelFromJson(json);
}
