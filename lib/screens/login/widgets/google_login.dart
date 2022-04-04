import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/repository/to_do_repository/to_do_repository.dart';
import 'package:login/screens/home/cubit/home_cubit.dart';
import 'package:login/screens/home/home.dart';
import 'package:login/screens/login/cubit/login_cubit.dart';
import 'package:login/screens/login/widgets/widgets.dart';

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cubit = context.read<LoginCubit>();
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (BuildContext context, state) {
        if (state is LoginSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => BlocProvider(
                create: (context) => HomeCubit(ToDoRepository()),
                child: HomeScreen(
                  email: state.emailId,
                ),
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is LoginLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is LoginError) {
          return ErrorMessage(
            errorMessage: state.message,
          );
        }

        return MaterialButton(
          color: Colors.black,
          minWidth: double.maxFinite,
          onPressed: () async => await _cubit.googleLogin(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/googlelogin.png',
                height: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('Sign in with Google',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ],
          ),
        );
      },
    );
  }
}
