import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    @Default(false) bool isGoogleLoading,
    @Default(null) String? errorMessage,
    @Default(AuthStatus.initial) AuthStatus status,
  }) = _AuthState;

  factory AuthState.initial() {
    return const AuthState(
      isLoading: false,
      isGoogleLoading: false,
      errorMessage: null,
      status: AuthStatus.initial,
    );
  }
}

enum AuthStatus {
  initial,
  authenticated,
  unauthenticated,
  error,
}
