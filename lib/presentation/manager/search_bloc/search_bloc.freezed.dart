// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MovieEntity>? lastMovies) loading,
    required TResult Function(
            String query, List<MovieEntity> movies, bool finalizedMoviesList)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MovieEntity>? lastMovies)? loading,
    TResult? Function(
            String query, List<MovieEntity> movies, bool finalizedMoviesList)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MovieEntity>? lastMovies)? loading,
    TResult Function(
            String query, List<MovieEntity> movies, bool finalizedMoviesList)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchLoadedState value) loaded,
    required TResult Function(_SearchErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchInitialState value)? initial,
    TResult? Function(_SearchLoadingState value)? loading,
    TResult? Function(_SearchLoadedState value)? loaded,
    TResult? Function(_SearchErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchInitialStateImplCopyWith<$Res> {
  factory _$$SearchInitialStateImplCopyWith(_$SearchInitialStateImpl value,
          $Res Function(_$SearchInitialStateImpl) then) =
      __$$SearchInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchInitialStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchInitialStateImpl>
    implements _$$SearchInitialStateImplCopyWith<$Res> {
  __$$SearchInitialStateImplCopyWithImpl(_$SearchInitialStateImpl _value,
      $Res Function(_$SearchInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchInitialStateImpl implements _SearchInitialState {
  const _$SearchInitialStateImpl();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MovieEntity>? lastMovies) loading,
    required TResult Function(
            String query, List<MovieEntity> movies, bool finalizedMoviesList)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MovieEntity>? lastMovies)? loading,
    TResult? Function(
            String query, List<MovieEntity> movies, bool finalizedMoviesList)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MovieEntity>? lastMovies)? loading,
    TResult Function(
            String query, List<MovieEntity> movies, bool finalizedMoviesList)?
        loaded,
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
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchLoadedState value) loaded,
    required TResult Function(_SearchErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchInitialState value)? initial,
    TResult? Function(_SearchLoadingState value)? loading,
    TResult? Function(_SearchLoadedState value)? loaded,
    TResult? Function(_SearchErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchInitialState implements SearchState {
  const factory _SearchInitialState() = _$SearchInitialStateImpl;
}

/// @nodoc
abstract class _$$SearchLoadingStateImplCopyWith<$Res> {
  factory _$$SearchLoadingStateImplCopyWith(_$SearchLoadingStateImpl value,
          $Res Function(_$SearchLoadingStateImpl) then) =
      __$$SearchLoadingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MovieEntity>? lastMovies});
}

/// @nodoc
class __$$SearchLoadingStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadingStateImpl>
    implements _$$SearchLoadingStateImplCopyWith<$Res> {
  __$$SearchLoadingStateImplCopyWithImpl(_$SearchLoadingStateImpl _value,
      $Res Function(_$SearchLoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastMovies = freezed,
  }) {
    return _then(_$SearchLoadingStateImpl(
      lastMovies: freezed == lastMovies
          ? _value._lastMovies
          : lastMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>?,
    ));
  }
}

/// @nodoc

class _$SearchLoadingStateImpl implements _SearchLoadingState {
  const _$SearchLoadingStateImpl({final List<MovieEntity>? lastMovies})
      : _lastMovies = lastMovies;

  final List<MovieEntity>? _lastMovies;
  @override
  List<MovieEntity>? get lastMovies {
    final value = _lastMovies;
    if (value == null) return null;
    if (_lastMovies is EqualUnmodifiableListView) return _lastMovies;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchState.loading(lastMovies: $lastMovies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoadingStateImpl &&
            const DeepCollectionEquality()
                .equals(other._lastMovies, _lastMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_lastMovies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLoadingStateImplCopyWith<_$SearchLoadingStateImpl> get copyWith =>
      __$$SearchLoadingStateImplCopyWithImpl<_$SearchLoadingStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MovieEntity>? lastMovies) loading,
    required TResult Function(
            String query, List<MovieEntity> movies, bool finalizedMoviesList)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading(lastMovies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MovieEntity>? lastMovies)? loading,
    TResult? Function(
            String query, List<MovieEntity> movies, bool finalizedMoviesList)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call(lastMovies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MovieEntity>? lastMovies)? loading,
    TResult Function(
            String query, List<MovieEntity> movies, bool finalizedMoviesList)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(lastMovies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchLoadedState value) loaded,
    required TResult Function(_SearchErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchInitialState value)? initial,
    TResult? Function(_SearchLoadingState value)? loading,
    TResult? Function(_SearchLoadedState value)? loaded,
    TResult? Function(_SearchErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchLoadingState implements SearchState {
  const factory _SearchLoadingState({final List<MovieEntity>? lastMovies}) =
      _$SearchLoadingStateImpl;

  List<MovieEntity>? get lastMovies;
  @JsonKey(ignore: true)
  _$$SearchLoadingStateImplCopyWith<_$SearchLoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLoadedStateImplCopyWith<$Res> {
  factory _$$SearchLoadedStateImplCopyWith(_$SearchLoadedStateImpl value,
          $Res Function(_$SearchLoadedStateImpl) then) =
      __$$SearchLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, List<MovieEntity> movies, bool finalizedMoviesList});
}

/// @nodoc
class __$$SearchLoadedStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadedStateImpl>
    implements _$$SearchLoadedStateImplCopyWith<$Res> {
  __$$SearchLoadedStateImplCopyWithImpl(_$SearchLoadedStateImpl _value,
      $Res Function(_$SearchLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? movies = null,
    Object? finalizedMoviesList = null,
  }) {
    return _then(_$SearchLoadedStateImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
      finalizedMoviesList: null == finalizedMoviesList
          ? _value.finalizedMoviesList
          : finalizedMoviesList // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchLoadedStateImpl implements _SearchLoadedState {
  const _$SearchLoadedStateImpl(
      {required this.query,
      required final List<MovieEntity> movies,
      required this.finalizedMoviesList})
      : _movies = movies;

  @override
  final String query;
  final List<MovieEntity> _movies;
  @override
  List<MovieEntity> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  final bool finalizedMoviesList;

  @override
  String toString() {
    return 'SearchState.loaded(query: $query, movies: $movies, finalizedMoviesList: $finalizedMoviesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoadedStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.finalizedMoviesList, finalizedMoviesList) ||
                other.finalizedMoviesList == finalizedMoviesList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query,
      const DeepCollectionEquality().hash(_movies), finalizedMoviesList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLoadedStateImplCopyWith<_$SearchLoadedStateImpl> get copyWith =>
      __$$SearchLoadedStateImplCopyWithImpl<_$SearchLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MovieEntity>? lastMovies) loading,
    required TResult Function(
            String query, List<MovieEntity> movies, bool finalizedMoviesList)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(query, movies, finalizedMoviesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MovieEntity>? lastMovies)? loading,
    TResult? Function(
            String query, List<MovieEntity> movies, bool finalizedMoviesList)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(query, movies, finalizedMoviesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MovieEntity>? lastMovies)? loading,
    TResult Function(
            String query, List<MovieEntity> movies, bool finalizedMoviesList)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(query, movies, finalizedMoviesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchLoadedState value) loaded,
    required TResult Function(_SearchErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchInitialState value)? initial,
    TResult? Function(_SearchLoadingState value)? loading,
    TResult? Function(_SearchLoadedState value)? loaded,
    TResult? Function(_SearchErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SearchLoadedState implements SearchState {
  const factory _SearchLoadedState(
      {required final String query,
      required final List<MovieEntity> movies,
      required final bool finalizedMoviesList}) = _$SearchLoadedStateImpl;

  String get query;
  List<MovieEntity> get movies;
  bool get finalizedMoviesList;
  @JsonKey(ignore: true)
  _$$SearchLoadedStateImplCopyWith<_$SearchLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchErrorStateImplCopyWith<$Res> {
  factory _$$SearchErrorStateImplCopyWith(_$SearchErrorStateImpl value,
          $Res Function(_$SearchErrorStateImpl) then) =
      __$$SearchErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SearchErrorStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchErrorStateImpl>
    implements _$$SearchErrorStateImplCopyWith<$Res> {
  __$$SearchErrorStateImplCopyWithImpl(_$SearchErrorStateImpl _value,
      $Res Function(_$SearchErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SearchErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchErrorStateImpl implements _SearchErrorState {
  const _$SearchErrorStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SearchState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchErrorStateImplCopyWith<_$SearchErrorStateImpl> get copyWith =>
      __$$SearchErrorStateImplCopyWithImpl<_$SearchErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MovieEntity>? lastMovies) loading,
    required TResult Function(
            String query, List<MovieEntity> movies, bool finalizedMoviesList)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MovieEntity>? lastMovies)? loading,
    TResult? Function(
            String query, List<MovieEntity> movies, bool finalizedMoviesList)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MovieEntity>? lastMovies)? loading,
    TResult Function(
            String query, List<MovieEntity> movies, bool finalizedMoviesList)?
        loaded,
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
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchLoadedState value) loaded,
    required TResult Function(_SearchErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchInitialState value)? initial,
    TResult? Function(_SearchLoadingState value)? loading,
    TResult? Function(_SearchLoadedState value)? loaded,
    TResult? Function(_SearchErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SearchErrorState implements SearchState {
  const factory _SearchErrorState({required final String message}) =
      _$SearchErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SearchErrorStateImplCopyWith<_$SearchErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
