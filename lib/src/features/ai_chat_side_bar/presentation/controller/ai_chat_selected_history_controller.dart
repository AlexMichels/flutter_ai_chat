import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ai_chat_selected_history_controller.g.dart';

@riverpod
class AiChatSelectedHistoryController extends _$AiChatSelectedHistoryController {
  @override
  Future<Key?> build() async {
    return null;
  }

  Future<void> selectKey(Key key) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return key;
    });
  }
}
