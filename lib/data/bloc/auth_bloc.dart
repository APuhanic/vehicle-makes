import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/data/storage/secure_storage.dart';
import 'package:vehicle_makes/domain/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository, this.storage)
      : super(const _Unauthenticated()) {
    on<_Login>(_onLogin);
  }
  final SecureStorage storage;
  final AuthRepository _authRepository;

  Future<void> _onLogin(_Login event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      final token = await _authRepository.login();
      storage.writeSecureData('token', token);
      emit(const AuthState.authenticated());
    } catch (e) {
      debugPrint(e.toString());
      emit(AuthState.error(e.toString()));
    }
  }
}
