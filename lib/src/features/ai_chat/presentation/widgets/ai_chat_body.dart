import 'package:ai_chat_flutter/src/constants/app_sizes.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_ai_answer_model.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_user_question_model.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/widgets/ai_chat_ai_answer.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/presentation/widgets/ai_chat_user_question.dart';
import 'package:flutter/material.dart';

class AiChatBody extends StatelessWidget {
  final List<Map<String, dynamic>> combinedList;
  const AiChatBody({super.key, required this.combinedList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p18),
      child: ListView.builder(
        itemCount: combinedList.length,
        itemBuilder: (context, index) {
          final item = combinedList[index];
          if (item['type'] == 'question') {
            final answer = item['data'] as AiChatAiAnswerModel;
            return AiChatAiAnswer(answer: answer.choices![0].message!.content);
          } else {
            final question = item['data'] as AiChatUserQuestionModel;
            return AiChatUserQuestion(question: question.content);
          }
        },
      ),
    );
  }
}
