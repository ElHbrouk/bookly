import 'package:dartz/dartz.dart';

import '../errors/failure.dart';

abstract class UseCaseWithoutParam<Type> {
  Future<Either<Failure, Type>> call();
}


abstract class UseCaseWithParam<Type, Param> {
  Future<Either<Failure, Type>> call(Param param);
}
