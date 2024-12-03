import 'dart:convert';
import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_ai_answer_model.dart';
import 'package:ai_chat_flutter/src/features/ai_chat/domain/ai_chat_user_question_model.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'open_api_service.g.dart';

final _log = Logger();

class OpenAIService {
  final String apiKey;

  OpenAIService({required this.apiKey});

  Future<AiChatAiAnswerModel> generateResponse(List<AiChatUserQuestionModel> messages) async {
    try {
      final response = await http.post(
        Uri.parse('https://api.openai.com/v1/chat/completions'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': apiKey,
          'OpenAI-Organization': 'org-811O1dV4xfzLh9wwRqfi90es',
        },
        body: jsonEncode({
          'model': 'chatgpt-4o-latest',
          'messages': messages,
        }),
      );

      _log.i(jsonEncode({
        'model': 'chatgpt-4o-latest',
        'messages': messages,
      }));
      _log.i(response.statusCode.toString());

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        _log.i(jsonEncode(responseBody));

        return AiChatAiAnswerModel.fromJson(responseBody as Map<String, dynamic>);
      } else {
        final info = response.body;
        throw Exception('Failed to load response: $info');
      }
    } catch (e) {
      // Handle the exception, e.g., logging or rethrowing a custom exception
      _log.i('Error generating response: $e');
      throw Exception('Failed to generate response');
    }
  }
}

@Riverpod(keepAlive: true)
OpenAIService openApiService(OpenApiServiceRef ref) {
  return OpenAIService(apiKey: const String.fromEnvironment('OPENAI'));
}
