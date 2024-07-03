import 'package:dartz/dartz.dart';
import 'package:movie_info/core/errors/exceptions.dart';
import 'package:movie_info/core/errors/failures.dart';
import 'package:movie_info/data/data_sources/movie_remote_data_source.dart';
import 'package:movie_info/domain/entities/genres_entity.dart';
import 'package:movie_info/domain/entities/movie_entity.dart';
import 'package:movie_info/domain/repositories/genres_repository.dart';
import 'package:movie_info/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource remoteDataSource;
  final GenreRepository genreRepository;

  MovieRepositoryImpl({
    required this.remoteDataSource,
    required this.genreRepository,
  });

  Future<List<GenreEntity>?> _getGenres() async{
    List<GenreEntity>? genres;
    final genresResult = await genreRepository.getGenres();
    genresResult.fold(
          (failure) => genres = null,
          (result) => genres = result,
    );
    return genres;
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies() async {
    try {
      final genres = await _getGenres();
      final remoteMovies = await remoteDataSource.getPopularMovies();
      return Right(remoteMovies.map((e) => e.toEntity(genres)).toList());
    } on NetworkException {
      return Left(NetworkFailure());
    } catch (error) {
      print(error);
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> searchMovies(String query) async {
    try {
      final genres = await _getGenres();
      final remoteMovies = await remoteDataSource.searchMovies(query);
      return Right(remoteMovies.map((e) => e.toEntity(genres)).toList());
    } on NetworkException {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, MovieEntity>> getMovieDetails(int id) async {
    try {
      final genres = await _getGenres();
      final remoteMovie = await remoteDataSource.getMovieDetails(id);
      return Right(remoteMovie.toEntity(genres));
    } on NetworkException {
      return Left(NetworkFailure());
    }
  }
}
