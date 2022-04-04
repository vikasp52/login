import 'package:flutter/material.dart';
import 'package:login/screens/login/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            LoginTextField(
              hintText: 'Enter email ID',
              icons: Icons.email,
            ),
            SizedBox(height: 20),
            LoginTextField(
              hintText: 'Enter Password',
              icons: Icons.lock,
            ),
            SizedBox(height: 10),
            SubmitButton(),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Text(
                'OR',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GoogleLoginButton(),
          ],
        ),
      ),
    );
  }
}
