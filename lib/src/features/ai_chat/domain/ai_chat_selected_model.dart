import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_chat_selected_model.freezed.dart';
part 'ai_chat_selected_model.g.dart';

@freezed
class AiChatSelectedModel with _$AiChatSelectedModel {
  const factory AiChatSelectedModel({
    required String? selectedModel,
  }) = _AiChatSelectedModel;

  // Optional: add serialization if needed
  factory AiChatSelectedModel.fromJson(Map<String, dynamic> json) =>
      _$AiChatSelectedModelFromJson(json);
}
