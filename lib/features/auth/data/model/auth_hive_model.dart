import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sagun/app/constants/hive_table_constants.dart';
import 'package:sagun/features/auth/domain/entity/auth_entity.dart';

import 'package:uuid/uuid.dart';

part 'auth_hive_model.g.dart';

final authHiveModelProvider = Provider(
  (ref) => AuthHiveModel.empty(),
);

@HiveType(typeId: HiveTableConstant.studentTableId)
class AuthHiveModel {
  @HiveField(0)
  final String studentId;

  @HiveField(1)
  final String fname;

  @HiveField(2)
  final String lname;

  @HiveField(6)
  final String email;

  @HiveField(7)
  final String password;

  // Constructor
  AuthHiveModel({
    String? studentId,
    required this.fname,
    required this.lname,
    required this.email,
    required this.password,
  }) : studentId = studentId ?? const Uuid().v4();

  // empty constructor
  AuthHiveModel.empty()
      : this(
          studentId: '',
          fname: '',
          lname: '',
          email: '',
          password: '',
        );

  // Convert Hive Object to Entity
  AuthEntity toEntity() => AuthEntity(
        id: studentId,
        fname: fname,
        lname: lname,
        email: email,
        password: password,
      );

  // Convert Entity to Hive Object
  AuthHiveModel toHiveModel(AuthEntity entity) => AuthHiveModel(
        studentId: const Uuid().v4(),
        fname: entity.fname,
        lname: entity.lname,
        email: entity.email,
        password: entity.password,
      );

  // Convert Entity List to Hive List
  List<AuthHiveModel> toHiveModelList(List<AuthEntity> entities) =>
      entities.map((entity) => toHiveModel(entity)).toList();

  @override
  String toString() {
    return 'studentId: $studentId, fname: $fname, lname: $lname, gmail: gmail, password: $password';
  }
}
