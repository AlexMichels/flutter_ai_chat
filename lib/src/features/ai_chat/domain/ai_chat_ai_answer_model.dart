import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_chat_ai_answer_model.freezed.dart';
part 'ai_chat_ai_answer_model.g.dart';

@freezed
class AiChatAiAnswerModel with _$AiChatAiAnswerModel {
  factory AiChatAiAnswerModel({
    List<ChoicesModel>? choices,
  }) = _AiChatAiAnswerModel;

  factory AiChatAiAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$AiChatAiAnswerModelFromJson(json);
}

@freezed
class ChoicesModel with _$ChoicesModel {
  factory ChoicesModel({
    int? index,
    AiMessage? message,
  }) = _ChoicesModel;

  factory ChoicesModel.fromJson(Map<String, dynamic> json) => _$ChoicesModelFromJson(json);
}

@freezed
class AiMessage extends AiChatMessageModel with _$AiMessage {
  factory AiMessage({
    required String role,
    required String content,
  }) = _AiMessage;

  factory AiMessage.fromJson(Map<String, dynamic> json) => _$AiMessageFromJson(json);
}
