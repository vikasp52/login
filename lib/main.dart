import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/repository/login_repository/login_repository.dart';
import 'package:login/screens/login/cubit/login_cubit.dart';
import 'package:login/screens/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: BlocProvider(
        create: (context) => LoginCubit(LoginRepository()),
        child: const LoginScreen(),
      ),
    );
  }
}
