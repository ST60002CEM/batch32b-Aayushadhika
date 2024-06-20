import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sagun/core/error/failure.dart';
import 'package:sagun/features/auth/domain/entity/auth_entity.dart';
import 'package:sagun/features/auth/domain/repository/auth_repository.dart';

final authUseCaseProvider = Provider((ref) {
  return AuthUseCase(ref.read(authRepositoryProvider));
});

class AuthUseCase {
  final IAuthRepository _authRepository;

  AuthUseCase(this._authRepository);

  Future<Either<Faliure, String>> uploadProfilePicture(File file) async {
    return await _authRepository.uploadProfilePicture(file);
  }

  Future<Either<Faliure, bool>> registerStudent(AuthEntity student) async {
    return await _authRepository.registerStudent(student);
  }

  Future<Either<Faliure, bool>> loginStudent(
      String username, String password) async {
    return await _authRepository.loginStudent(username, password);
  }
}
