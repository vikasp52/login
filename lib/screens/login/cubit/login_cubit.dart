import 'package:bloc/bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login/repository/login_repository/login_repository.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    this.loginRepository,
  ) : super(LoginInitial());

  final LoginRepository loginRepository;

  void loginWithEmail() {}

  Future<void> googleLogin() async {
    emit(LoginLoading());
    try {
      var googleSignInAccount = await loginRepository.handleSignIn();

      if (googleSignInAccount != null) {
        emit(LoginSuccess(googleSignInAccount.email));
      }
    } catch (e) {
      emit(LoginError('Something went wrong!'));
    }
  }
}
