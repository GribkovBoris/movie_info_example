// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieInitialState value) initial,
    required TResult Function(_MovieLoadingState value) loading,
    required TResult Function(_MovieLoadedState value) loaded,
    required TResult Function(_MovieErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovieInitialState value)? initial,
    TResult? Function(_MovieLoadingState value)? loading,
    TResult? Function(_MovieLoadedState value)? loaded,
    TResult? Function(_MovieErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieLoadedState value)? loaded,
    TResult Function(_MovieErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res, MovieState>;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MovieInitialStateImplCopyWith<$Res> {
  factory _$$MovieInitialStateImplCopyWith(_$MovieInitialStateImpl value,
          $Res Function(_$MovieInitialStateImpl) then) =
      __$$MovieInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieInitialStateImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieInitialStateImpl>
    implements _$$MovieInitialStateImplCopyWith<$Res> {
  __$$MovieInitialStateImplCopyWithImpl(_$MovieInitialStateImpl _value,
      $Res Function(_$MovieInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MovieInitialStateImpl implements _MovieInitialState {
  const _$MovieInitialStateImpl();

  @override
  String toString() {
    return 'MovieState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? loaded,
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
    required TResult Function(_MovieInitialState value) initial,
    required TResult Function(_MovieLoadingState value) loading,
    required TResult Function(_MovieLoadedState value) loaded,
    required TResult Function(_MovieErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovieInitialState value)? initial,
    TResult? Function(_MovieLoadingState value)? loading,
    TResult? Function(_MovieLoadedState value)? loaded,
    TResult? Function(_MovieErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieLoadedState value)? loaded,
    TResult Function(_MovieErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MovieInitialState implements MovieState {
  const factory _MovieInitialState() = _$MovieInitialStateImpl;
}

/// @nodoc
abstract class _$$MovieLoadingStateImplCopyWith<$Res> {
  factory _$$MovieLoadingStateImplCopyWith(_$MovieLoadingStateImpl value,
          $Res Function(_$MovieLoadingStateImpl) then) =
      __$$MovieLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieLoadingStateImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieLoadingStateImpl>
    implements _$$MovieLoadingStateImplCopyWith<$Res> {
  __$$MovieLoadingStateImplCopyWithImpl(_$MovieLoadingStateImpl _value,
      $Res Function(_$MovieLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MovieLoadingStateImpl implements _MovieLoadingState {
  const _$MovieLoadingStateImpl();

  @override
  String toString() {
    return 'MovieState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? loaded,
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
    required TResult Function(_MovieInitialState value) initial,
    required TResult Function(_MovieLoadingState value) loading,
    required TResult Function(_MovieLoadedState value) loaded,
    required TResult Function(_MovieErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovieInitialState value)? initial,
    TResult? Function(_MovieLoadingState value)? loading,
    TResult? Function(_MovieLoadedState value)? loaded,
    TResult? Function(_MovieErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieLoadedState value)? loaded,
    TResult Function(_MovieErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MovieLoadingState implements MovieState {
  const factory _MovieLoadingState() = _$MovieLoadingStateImpl;
}

/// @nodoc
abstract class _$$MovieLoadedStateImplCopyWith<$Res> {
  factory _$$MovieLoadedStateImplCopyWith(_$MovieLoadedStateImpl value,
          $Res Function(_$MovieLoadedStateImpl) then) =
      __$$MovieLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MovieEntity> movies});
}

/// @nodoc
class __$$MovieLoadedStateImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieLoadedStateImpl>
    implements _$$MovieLoadedStateImplCopyWith<$Res> {
  __$$MovieLoadedStateImplCopyWithImpl(_$MovieLoadedStateImpl _value,
      $Res Function(_$MovieLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_$MovieLoadedStateImpl(
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
    ));
  }
}

/// @nodoc

class _$MovieLoadedStateImpl implements _MovieLoadedState {
  const _$MovieLoadedStateImpl({required final List<MovieEntity> movies})
      : _movies = movies;

  final List<MovieEntity> _movies;
  @override
  List<MovieEntity> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'MovieState.loaded(movies: $movies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieLoadedStateImplCopyWith<_$MovieLoadedStateImpl> get copyWith =>
      __$$MovieLoadedStateImplCopyWithImpl<_$MovieLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieInitialState value) initial,
    required TResult Function(_MovieLoadingState value) loading,
    required TResult Function(_MovieLoadedState value) loaded,
    required TResult Function(_MovieErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovieInitialState value)? initial,
    TResult? Function(_MovieLoadingState value)? loading,
    TResult? Function(_MovieLoadedState value)? loaded,
    TResult? Function(_MovieErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieLoadedState value)? loaded,
    TResult Function(_MovieErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _MovieLoadedState implements MovieState {
  const factory _MovieLoadedState({required final List<MovieEntity> movies}) =
      _$MovieLoadedStateImpl;

  List<MovieEntity> get movies;
  @JsonKey(ignore: true)
  _$$MovieLoadedStateImplCopyWith<_$MovieLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MovieErrorStateImplCopyWith<$Res> {
  factory _$$MovieErrorStateImplCopyWith(_$MovieErrorStateImpl value,
          $Res Function(_$MovieErrorStateImpl) then) =
      __$$MovieErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MovieErrorStateImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieErrorStateImpl>
    implements _$$MovieErrorStateImplCopyWith<$Res> {
  __$$MovieErrorStateImplCopyWithImpl(
      _$MovieErrorStateImpl _value, $Res Function(_$MovieErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MovieErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieErrorStateImpl implements _MovieErrorState {
  const _$MovieErrorStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MovieState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieErrorStateImplCopyWith<_$MovieErrorStateImpl> get copyWith =>
      __$$MovieErrorStateImplCopyWithImpl<_$MovieErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? loaded,
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
    required TResult Function(_MovieInitialState value) initial,
    required TResult Function(_MovieLoadingState value) loading,
    required TResult Function(_MovieLoadedState value) loaded,
    required TResult Function(_MovieErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovieInitialState value)? initial,
    TResult? Function(_MovieLoadingState value)? loading,
    TResult? Function(_MovieLoadedState value)? loaded,
    TResult? Function(_MovieErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieLoadedState value)? loaded,
    TResult Function(_MovieErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _MovieErrorState implements MovieState {
  const factory _MovieErrorState({required final String message}) =
      _$MovieErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$MovieErrorStateImplCopyWith<_$MovieErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
