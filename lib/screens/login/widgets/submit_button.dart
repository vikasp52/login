import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/repository/to_do_repository/to_do_repository.dart';
import 'package:login/screens/home/cubit/home_cubit.dart';
import 'package:login/screens/home/home.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.black,
      minWidth: double.maxFinite,
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => HomeCubit(ToDoRepository()),
              child: const HomeScreen(
                email: 'vikas@gmail.com',
              ),
            ),
          ),
        );
      },
      child: const Text('Submit',
          style: TextStyle(
            color: Colors.white,
          )),
    );
  }
}
