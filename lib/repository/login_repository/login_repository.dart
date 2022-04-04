import 'package:google_sign_in/google_sign_in.dart';

class LoginRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
    ],
  );

  Future<GoogleSignInAccount?> handleSignIn() async {
    try {
      return await _googleSignIn.signIn();
    } catch (error) {
      error;
    }
    return null;
  }
}
