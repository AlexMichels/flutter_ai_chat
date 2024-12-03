// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_chat_user_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AiChatUserQuestionModel _$AiChatUserQuestionModelFromJson(Map<String, dynamic> json) {
  return _AiChatUserQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$AiChatUserQuestionModel {
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiChatUserQuestionModelCopyWith<AiChatUserQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiChatUserQuestionModelCopyWith<$Res> {
  factory $AiChatUserQuestionModelCopyWith(
          AiChatUserQuestionModel value, $Res Function(AiChatUserQuestionModel) then) =
      _$AiChatUserQuestionModelCopyWithImpl<$Res, AiChatUserQuestionModel>;
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class _$AiChatUserQuestionModelCopyWithImpl<$Res, $Val extends AiChatUserQuestionModel>
    implements $AiChatUserQuestionModelCopyWith<$Res> {
  _$AiChatUserQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiChatUserQuestionModelImplCopyWith<$Res>
    implements $AiChatUserQuestionModelCopyWith<$Res> {
  factory _$$AiChatUserQuestionModelImplCopyWith(
          _$AiChatUserQuestionModelImpl value, $Res Function(_$AiChatUserQuestionModelImpl) then) =
      __$$AiChatUserQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class __$$AiChatUserQuestionModelImplCopyWithImpl<$Res>
    extends _$AiChatUserQuestionModelCopyWithImpl<$Res, _$AiChatUserQuestionModelImpl>
    implements _$$AiChatUserQuestionModelImplCopyWith<$Res> {
  __$$AiChatUserQuestionModelImplCopyWithImpl(
      _$AiChatUserQuestionModelImpl _value, $Res Function(_$AiChatUserQuestionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_$AiChatUserQuestionModelImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiChatUserQuestionModelImpl implements _AiChatUserQuestionModel {
  _$AiChatUserQuestionModelImpl({required this.role, required this.content});

  factory _$AiChatUserQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiChatUserQuestionModelImplFromJson(json);

  @override
  final String role;
  @override
  final String content;

  @override
  String toString() {
    return 'AiChatUserQuestionModel(role: $role, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiChatUserQuestionModelImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiChatUserQuestionModelImplCopyWith<_$AiChatUserQuestionModelImpl> get copyWith =>
      __$$AiChatUserQuestionModelImplCopyWithImpl<_$AiChatUserQuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiChatUserQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _AiChatUserQuestionModel implements AiChatUserQuestionModel {
  factory _AiChatUserQuestionModel({required final String role, required final String content}) =
      _$AiChatUserQuestionModelImpl;

  factory _AiChatUserQuestionModel.fromJson(Map<String, dynamic> json) =
      _$AiChatUserQuestionModelImpl.fromJson;

  @override
  String get role;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$AiChatUserQuestionModelImplCopyWith<_$AiChatUserQuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
