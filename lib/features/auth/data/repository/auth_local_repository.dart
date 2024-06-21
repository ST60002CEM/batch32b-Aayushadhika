import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sagun/core/failure/failure.dart';
import 'package:sagun/features/auth/data/data_source/local/auth_local_data_source.dart';
import 'package:sagun/features/auth/domain/entity/auth_entity.dart';
import 'package:sagun/features/auth/domain/repository/auth_repository.dart';

final authLocalRepositoryProvider = Provider<IAuthRepository>((ref) {
  return AuthLocalRepository(
    ref.read(authLocalDataSourceProvider),
  );
});

class AuthLocalRepository implements IAuthRepository {
  final AuthLocalDataSource _authLocalDataSource;

  AuthLocalRepository(this._authLocalDataSource);

  
  @override
  Future<Either<Failure, bool>> loginUser(String username, String password) {
    // TODO: implement loginUser
    throw UnimplementedError();
  }
  
  @override
  Future<Either<Failure, bool>> registerUser(AuthEntity user) {
    // TODO: implement registerUser
    throw UnimplementedError();
  }
}
