import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_selected_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'ai_chat_model_controller.g.dart';

@riverpod
class AiChatModelController extends _$AiChatModelController {
  @override
  Future<AiChatSelectedModel> build() async {
    return const AiChatSelectedModel(selectedModel: null);
  }

  // Method to select a model with loading state
  Future<void> selectModel(String model) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return state.value!.copyWith(selectedModel: model);
    });
  }
}
