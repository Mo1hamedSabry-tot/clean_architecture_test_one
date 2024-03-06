import 'package:dartz/dartz.dart';

import '../network/failure.dart';

typedef FutureEitherFailureType<T> = Future<Either<Failure, T>>;
