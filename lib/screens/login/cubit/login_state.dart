part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final String emailId;

  LoginSuccess(this.emailId);
}

class LoginError extends LoginState {
  final String message;

  LoginError(this.message);
}
