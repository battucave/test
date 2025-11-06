part of 'auth_bloc.dart';

abstract class AuthEvent {}

class LoginRequested extends AuthEvent {
  final String email;
  final String password;

  LoginRequested({required this.email, required this.password});
}

class SignUpRequested extends AuthEvent {
  final String fullName;
  final String email;
  final String password;

  SignUpRequested({
    required this.fullName,
    required this.email,
    required this.password,
  });
}
