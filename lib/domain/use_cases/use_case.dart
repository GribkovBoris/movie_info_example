import 'package:dartz/dartz.dart';
import 'package:movie_info/core/errors/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {
  @override
  bool operator ==(Object other) {
    return other is NoParams;
  }

  @override
  int get hashCode => 0;
}
