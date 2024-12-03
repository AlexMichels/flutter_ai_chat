// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_chat_ai_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AiChatAiAnswerModel _$AiChatAiAnswerModelFromJson(Map<String, dynamic> json) {
  return _AiChatAiAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$AiChatAiAnswerModel {
  List<ChoicesModel>? get choices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiChatAiAnswerModelCopyWith<AiChatAiAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiChatAiAnswerModelCopyWith<$Res> {
  factory $AiChatAiAnswerModelCopyWith(
          AiChatAiAnswerModel value, $Res Function(AiChatAiAnswerModel) then) =
      _$AiChatAiAnswerModelCopyWithImpl<$Res, AiChatAiAnswerModel>;
  @useResult
  $Res call({List<ChoicesModel>? choices});
}

/// @nodoc
class _$AiChatAiAnswerModelCopyWithImpl<$Res, $Val extends AiChatAiAnswerModel>
    implements $AiChatAiAnswerModelCopyWith<$Res> {
  _$AiChatAiAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choices = freezed,
  }) {
    return _then(_value.copyWith(
      choices: freezed == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoicesModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiChatAiAnswerModelImplCopyWith<$Res>
    implements $AiChatAiAnswerModelCopyWith<$Res> {
  factory _$$AiChatAiAnswerModelImplCopyWith(
          _$AiChatAiAnswerModelImpl value, $Res Function(_$AiChatAiAnswerModelImpl) then) =
      __$$AiChatAiAnswerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChoicesModel>? choices});
}

/// @nodoc
class __$$AiChatAiAnswerModelImplCopyWithImpl<$Res>
    extends _$AiChatAiAnswerModelCopyWithImpl<$Res, _$AiChatAiAnswerModelImpl>
    implements _$$AiChatAiAnswerModelImplCopyWith<$Res> {
  __$$AiChatAiAnswerModelImplCopyWithImpl(
      _$AiChatAiAnswerModelImpl _value, $Res Function(_$AiChatAiAnswerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choices = freezed,
  }) {
    return _then(_$AiChatAiAnswerModelImpl(
      choices: freezed == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoicesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiChatAiAnswerModelImpl implements _AiChatAiAnswerModel {
  _$AiChatAiAnswerModelImpl({final List<ChoicesModel>? choices}) : _choices = choices;

  factory _$AiChatAiAnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiChatAiAnswerModelImplFromJson(json);

  final List<ChoicesModel>? _choices;
  @override
  List<ChoicesModel>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AiChatAiAnswerModel(choices: $choices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiChatAiAnswerModelImpl &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_choices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiChatAiAnswerModelImplCopyWith<_$AiChatAiAnswerModelImpl> get copyWith =>
      __$$AiChatAiAnswerModelImplCopyWithImpl<_$AiChatAiAnswerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiChatAiAnswerModelImplToJson(
      this,
    );
  }
}

abstract class _AiChatAiAnswerModel implements AiChatAiAnswerModel {
  factory _AiChatAiAnswerModel({final List<ChoicesModel>? choices}) = _$AiChatAiAnswerModelImpl;

  factory _AiChatAiAnswerModel.fromJson(Map<String, dynamic> json) =
      _$AiChatAiAnswerModelImpl.fromJson;

  @override
  List<ChoicesModel>? get choices;
  @override
  @JsonKey(ignore: true)
  _$$AiChatAiAnswerModelImplCopyWith<_$AiChatAiAnswerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChoicesModel _$ChoicesModelFromJson(Map<String, dynamic> json) {
  return _ChoicesModel.fromJson(json);
}

/// @nodoc
mixin _$ChoicesModel {
  int? get index => throw _privateConstructorUsedError;
  AiMessage? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoicesModelCopyWith<ChoicesModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoicesModelCopyWith<$Res> {
  factory $ChoicesModelCopyWith(ChoicesModel value, $Res Function(ChoicesModel) then) =
      _$ChoicesModelCopyWithImpl<$Res, ChoicesModel>;
  @useResult
  $Res call({int? index, AiMessage? message});

  $AiMessageCopyWith<$Res>? get message;
}

/// @nodoc
class _$ChoicesModelCopyWithImpl<$Res, $Val extends ChoicesModel>
    implements $ChoicesModelCopyWith<$Res> {
  _$ChoicesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as AiMessage?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AiMessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $AiMessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChoicesModelImplCopyWith<$Res> implements $ChoicesModelCopyWith<$Res> {
  factory _$$ChoicesModelImplCopyWith(
          _$ChoicesModelImpl value, $Res Function(_$ChoicesModelImpl) then) =
      __$$ChoicesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? index, AiMessage? message});

  @override
  $AiMessageCopyWith<$Res>? get message;
}

/// @nodoc
class __$$ChoicesModelImplCopyWithImpl<$Res>
    extends _$ChoicesModelCopyWithImpl<$Res, _$ChoicesModelImpl>
    implements _$$ChoicesModelImplCopyWith<$Res> {
  __$$ChoicesModelImplCopyWithImpl(
      _$ChoicesModelImpl _value, $Res Function(_$ChoicesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ChoicesModelImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as AiMessage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoicesModelImpl implements _ChoicesModel {
  _$ChoicesModelImpl({this.index, this.message});

  factory _$ChoicesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoicesModelImplFromJson(json);

  @override
  final int? index;
  @override
  final AiMessage? message;

  @override
  String toString() {
    return 'ChoicesModel(index: $index, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoicesModelImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoicesModelImplCopyWith<_$ChoicesModelImpl> get copyWith =>
      __$$ChoicesModelImplCopyWithImpl<_$ChoicesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoicesModelImplToJson(
      this,
    );
  }
}

abstract class _ChoicesModel implements ChoicesModel {
  factory _ChoicesModel({final int? index, final AiMessage? message}) = _$ChoicesModelImpl;

  factory _ChoicesModel.fromJson(Map<String, dynamic> json) = _$ChoicesModelImpl.fromJson;

  @override
  int? get index;
  @override
  AiMessage? get message;
  @override
  @JsonKey(ignore: true)
  _$$ChoicesModelImplCopyWith<_$ChoicesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AiMessage _$AiMessageFromJson(Map<String, dynamic> json) {
  return _AiMessage.fromJson(json);
}

/// @nodoc
mixin _$AiMessage {
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiMessageCopyWith<AiMessage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiMessageCopyWith<$Res> {
  factory $AiMessageCopyWith(AiMessage value, $Res Function(AiMessage) then) =
      _$AiMessageCopyWithImpl<$Res, AiMessage>;
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class _$AiMessageCopyWithImpl<$Res, $Val extends AiMessage> implements $AiMessageCopyWith<$Res> {
  _$AiMessageCopyWithImpl(this._value, this._then);

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
abstract class _$$AiMessageImplCopyWith<$Res> implements $AiMessageCopyWith<$Res> {
  factory _$$AiMessageImplCopyWith(_$AiMessageImpl value, $Res Function(_$AiMessageImpl) then) =
      __$$AiMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class __$$AiMessageImplCopyWithImpl<$Res> extends _$AiMessageCopyWithImpl<$Res, _$AiMessageImpl>
    implements _$$AiMessageImplCopyWith<$Res> {
  __$$AiMessageImplCopyWithImpl(_$AiMessageImpl _value, $Res Function(_$AiMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_$AiMessageImpl(
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
class _$AiMessageImpl implements _AiMessage {
  _$AiMessageImpl({required this.role, required this.content});

  factory _$AiMessageImpl.fromJson(Map<String, dynamic> json) => _$$AiMessageImplFromJson(json);

  @override
  final String role;
  @override
  final String content;

  @override
  String toString() {
    return 'AiMessage(role: $role, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiMessageImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiMessageImplCopyWith<_$AiMessageImpl> get copyWith =>
      __$$AiMessageImplCopyWithImpl<_$AiMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiMessageImplToJson(
      this,
    );
  }
}

abstract class _AiMessage implements AiMessage {
  factory _AiMessage({required final String role, required final String content}) = _$AiMessageImpl;

  factory _AiMessage.fromJson(Map<String, dynamic> json) = _$AiMessageImpl.fromJson;

  @override
  String get role;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$AiMessageImplCopyWith<_$AiMessageImpl> get copyWith => throw _privateConstructorUsedError;
}
