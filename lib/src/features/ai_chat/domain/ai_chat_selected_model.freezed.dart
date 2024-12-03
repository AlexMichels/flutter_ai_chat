// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_chat_selected_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AiChatSelectedModel _$AiChatSelectedModelFromJson(Map<String, dynamic> json) {
  return _AiChatSelectedModel.fromJson(json);
}

/// @nodoc
mixin _$AiChatSelectedModel {
  String? get selectedModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiChatSelectedModelCopyWith<AiChatSelectedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiChatSelectedModelCopyWith<$Res> {
  factory $AiChatSelectedModelCopyWith(
          AiChatSelectedModel value, $Res Function(AiChatSelectedModel) then) =
      _$AiChatSelectedModelCopyWithImpl<$Res, AiChatSelectedModel>;
  @useResult
  $Res call({String? selectedModel});
}

/// @nodoc
class _$AiChatSelectedModelCopyWithImpl<$Res, $Val extends AiChatSelectedModel>
    implements $AiChatSelectedModelCopyWith<$Res> {
  _$AiChatSelectedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedModel = freezed,
  }) {
    return _then(_value.copyWith(
      selectedModel: freezed == selectedModel
          ? _value.selectedModel
          : selectedModel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiChatSelectedModelImplCopyWith<$Res>
    implements $AiChatSelectedModelCopyWith<$Res> {
  factory _$$AiChatSelectedModelImplCopyWith(
          _$AiChatSelectedModelImpl value, $Res Function(_$AiChatSelectedModelImpl) then) =
      __$$AiChatSelectedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? selectedModel});
}

/// @nodoc
class __$$AiChatSelectedModelImplCopyWithImpl<$Res>
    extends _$AiChatSelectedModelCopyWithImpl<$Res, _$AiChatSelectedModelImpl>
    implements _$$AiChatSelectedModelImplCopyWith<$Res> {
  __$$AiChatSelectedModelImplCopyWithImpl(
      _$AiChatSelectedModelImpl _value, $Res Function(_$AiChatSelectedModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedModel = freezed,
  }) {
    return _then(_$AiChatSelectedModelImpl(
      selectedModel: freezed == selectedModel
          ? _value.selectedModel
          : selectedModel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiChatSelectedModelImpl implements _AiChatSelectedModel {
  const _$AiChatSelectedModelImpl({required this.selectedModel});

  factory _$AiChatSelectedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiChatSelectedModelImplFromJson(json);

  @override
  final String? selectedModel;

  @override
  String toString() {
    return 'AiChatSelectedModel(selectedModel: $selectedModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiChatSelectedModelImpl &&
            (identical(other.selectedModel, selectedModel) ||
                other.selectedModel == selectedModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, selectedModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiChatSelectedModelImplCopyWith<_$AiChatSelectedModelImpl> get copyWith =>
      __$$AiChatSelectedModelImplCopyWithImpl<_$AiChatSelectedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiChatSelectedModelImplToJson(
      this,
    );
  }
}

abstract class _AiChatSelectedModel implements AiChatSelectedModel {
  const factory _AiChatSelectedModel({required final String? selectedModel}) =
      _$AiChatSelectedModelImpl;

  factory _AiChatSelectedModel.fromJson(Map<String, dynamic> json) =
      _$AiChatSelectedModelImpl.fromJson;

  @override
  String? get selectedModel;
  @override
  @JsonKey(ignore: true)
  _$$AiChatSelectedModelImplCopyWith<_$AiChatSelectedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
