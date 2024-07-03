// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genres_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenresState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GenreEntity> genres) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GenreEntity> genres)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GenreEntity> genres)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenresInitialState value) initial,
    required TResult Function(_GenresLoadingState value) loading,
    required TResult Function(_GenresLoadedState value) loaded,
    required TResult Function(_GenresErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenresInitialState value)? initial,
    TResult? Function(_GenresLoadingState value)? loading,
    TResult? Function(_GenresLoadedState value)? loaded,
    TResult? Function(_GenresErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenresInitialState value)? initial,
    TResult Function(_GenresLoadingState value)? loading,
    TResult Function(_GenresLoadedState value)? loaded,
    TResult Function(_GenresErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresStateCopyWith<$Res> {
  factory $GenresStateCopyWith(
          GenresState value, $Res Function(GenresState) then) =
      _$GenresStateCopyWithImpl<$Res, GenresState>;
}

/// @nodoc
class _$GenresStateCopyWithImpl<$Res, $Val extends GenresState>
    implements $GenresStateCopyWith<$Res> {
  _$GenresStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GenresInitialStateImplCopyWith<$Res> {
  factory _$$GenresInitialStateImplCopyWith(_$GenresInitialStateImpl value,
          $Res Function(_$GenresInitialStateImpl) then) =
      __$$GenresInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenresInitialStateImplCopyWithImpl<$Res>
    extends _$GenresStateCopyWithImpl<$Res, _$GenresInitialStateImpl>
    implements _$$GenresInitialStateImplCopyWith<$Res> {
  __$$GenresInitialStateImplCopyWithImpl(_$GenresInitialStateImpl _value,
      $Res Function(_$GenresInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GenresInitialStateImpl implements _GenresInitialState {
  const _$GenresInitialStateImpl();

  @override
  String toString() {
    return 'GenresState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenresInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GenreEntity> genres) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GenreEntity> genres)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GenreEntity> genres)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenresInitialState value) initial,
    required TResult Function(_GenresLoadingState value) loading,
    required TResult Function(_GenresLoadedState value) loaded,
    required TResult Function(_GenresErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenresInitialState value)? initial,
    TResult? Function(_GenresLoadingState value)? loading,
    TResult? Function(_GenresLoadedState value)? loaded,
    TResult? Function(_GenresErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenresInitialState value)? initial,
    TResult Function(_GenresLoadingState value)? loading,
    TResult Function(_GenresLoadedState value)? loaded,
    TResult Function(_GenresErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GenresInitialState implements GenresState {
  const factory _GenresInitialState() = _$GenresInitialStateImpl;
}

/// @nodoc
abstract class _$$GenresLoadingStateImplCopyWith<$Res> {
  factory _$$GenresLoadingStateImplCopyWith(_$GenresLoadingStateImpl value,
          $Res Function(_$GenresLoadingStateImpl) then) =
      __$$GenresLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenresLoadingStateImplCopyWithImpl<$Res>
    extends _$GenresStateCopyWithImpl<$Res, _$GenresLoadingStateImpl>
    implements _$$GenresLoadingStateImplCopyWith<$Res> {
  __$$GenresLoadingStateImplCopyWithImpl(_$GenresLoadingStateImpl _value,
      $Res Function(_$GenresLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GenresLoadingStateImpl implements _GenresLoadingState {
  const _$GenresLoadingStateImpl();

  @override
  String toString() {
    return 'GenresState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenresLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GenreEntity> genres) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GenreEntity> genres)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GenreEntity> genres)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenresInitialState value) initial,
    required TResult Function(_GenresLoadingState value) loading,
    required TResult Function(_GenresLoadedState value) loaded,
    required TResult Function(_GenresErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenresInitialState value)? initial,
    TResult? Function(_GenresLoadingState value)? loading,
    TResult? Function(_GenresLoadedState value)? loaded,
    TResult? Function(_GenresErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenresInitialState value)? initial,
    TResult Function(_GenresLoadingState value)? loading,
    TResult Function(_GenresLoadedState value)? loaded,
    TResult Function(_GenresErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GenresLoadingState implements GenresState {
  const factory _GenresLoadingState() = _$GenresLoadingStateImpl;
}

/// @nodoc
abstract class _$$GenresLoadedStateImplCopyWith<$Res> {
  factory _$$GenresLoadedStateImplCopyWith(_$GenresLoadedStateImpl value,
          $Res Function(_$GenresLoadedStateImpl) then) =
      __$$GenresLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GenreEntity> genres});
}

/// @nodoc
class __$$GenresLoadedStateImplCopyWithImpl<$Res>
    extends _$GenresStateCopyWithImpl<$Res, _$GenresLoadedStateImpl>
    implements _$$GenresLoadedStateImplCopyWith<$Res> {
  __$$GenresLoadedStateImplCopyWithImpl(_$GenresLoadedStateImpl _value,
      $Res Function(_$GenresLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_$GenresLoadedStateImpl(
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreEntity>,
    ));
  }
}

/// @nodoc

class _$GenresLoadedStateImpl implements _GenresLoadedState {
  const _$GenresLoadedStateImpl({required final List<GenreEntity> genres})
      : _genres = genres;

  final List<GenreEntity> _genres;
  @override
  List<GenreEntity> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'GenresState.loaded(genres: $genres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenresLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenresLoadedStateImplCopyWith<_$GenresLoadedStateImpl> get copyWith =>
      __$$GenresLoadedStateImplCopyWithImpl<_$GenresLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GenreEntity> genres) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(genres);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GenreEntity> genres)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(genres);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GenreEntity> genres)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(genres);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenresInitialState value) initial,
    required TResult Function(_GenresLoadingState value) loading,
    required TResult Function(_GenresLoadedState value) loaded,
    required TResult Function(_GenresErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenresInitialState value)? initial,
    TResult? Function(_GenresLoadingState value)? loading,
    TResult? Function(_GenresLoadedState value)? loaded,
    TResult? Function(_GenresErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenresInitialState value)? initial,
    TResult Function(_GenresLoadingState value)? loading,
    TResult Function(_GenresLoadedState value)? loaded,
    TResult Function(_GenresErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _GenresLoadedState implements GenresState {
  const factory _GenresLoadedState({required final List<GenreEntity> genres}) =
      _$GenresLoadedStateImpl;

  List<GenreEntity> get genres;
  @JsonKey(ignore: true)
  _$$GenresLoadedStateImplCopyWith<_$GenresLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenresErrorStateImplCopyWith<$Res> {
  factory _$$GenresErrorStateImplCopyWith(_$GenresErrorStateImpl value,
          $Res Function(_$GenresErrorStateImpl) then) =
      __$$GenresErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GenresErrorStateImplCopyWithImpl<$Res>
    extends _$GenresStateCopyWithImpl<$Res, _$GenresErrorStateImpl>
    implements _$$GenresErrorStateImplCopyWith<$Res> {
  __$$GenresErrorStateImplCopyWithImpl(_$GenresErrorStateImpl _value,
      $Res Function(_$GenresErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GenresErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenresErrorStateImpl implements _GenresErrorState {
  const _$GenresErrorStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GenresState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenresErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenresErrorStateImplCopyWith<_$GenresErrorStateImpl> get copyWith =>
      __$$GenresErrorStateImplCopyWithImpl<_$GenresErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GenreEntity> genres) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GenreEntity> genres)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GenreEntity> genres)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenresInitialState value) initial,
    required TResult Function(_GenresLoadingState value) loading,
    required TResult Function(_GenresLoadedState value) loaded,
    required TResult Function(_GenresErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenresInitialState value)? initial,
    TResult? Function(_GenresLoadingState value)? loading,
    TResult? Function(_GenresLoadedState value)? loaded,
    TResult? Function(_GenresErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenresInitialState value)? initial,
    TResult Function(_GenresLoadingState value)? loading,
    TResult Function(_GenresLoadedState value)? loaded,
    TResult Function(_GenresErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _GenresErrorState implements GenresState {
  const factory _GenresErrorState({required final String message}) =
      _$GenresErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$GenresErrorStateImplCopyWith<_$GenresErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
