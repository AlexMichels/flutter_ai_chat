// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_chat_ai_answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AiChatAiAnswerModelImpl _$$AiChatAiAnswerModelImplFromJson(Map<String, dynamic> json) =>
    _$AiChatAiAnswerModelImpl(
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => ChoicesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AiChatAiAnswerModelImplToJson(_$AiChatAiAnswerModelImpl instance) =>
    <String, dynamic>{
      'choices': instance.choices,
    };

_$ChoicesModelImpl _$$ChoicesModelImplFromJson(Map<String, dynamic> json) => _$ChoicesModelImpl(
      index: (json['index'] as num?)?.toInt(),
      message: json['message'] == null
          ? null
          : AiMessage.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChoicesModelImplToJson(_$ChoicesModelImpl instance) => <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
    };

_$AiMessageImpl _$$AiMessageImplFromJson(Map<String, dynamic> json) => _$AiMessageImpl(
      role: json['role'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$AiMessageImplToJson(_$AiMessageImpl instance) => <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
    };
