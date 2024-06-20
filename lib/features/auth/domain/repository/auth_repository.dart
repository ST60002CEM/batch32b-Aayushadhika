import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sagun/core/error/failure.dart';
import 'package:sagun/features/auth/data/repository/auth_local_repository.dart';
import 'package:sagun/features/auth/domain/entity/auth_entity.dart';

final authRepositoryProvider = Provider<IAuthRepository>((ref) {
  return ref.read(authLocalRepositoryProvider);
});

abstract class IAuthRepository {
  Future<Either<Faliure, bool>> registerStudent(AuthEntity student);
  Future<Either<Faliure, bool>> loginStudent(String username, String password);
  Future<Either<Faliure, String>> uploadProfilePicture(File file);
}
