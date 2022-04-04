import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/screens/home/cubit/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.email,
  }) : super(key: key);

  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do List'),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is HomeLoaded) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Center(
                    child: Text('Your email id $email'),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.toDos.length,
                      itemBuilder: (context, index) {
                        final toDo = state.toDos[index];

                        return ListTile(
                          title: Text(toDo.title),
                          subtitle: Text(toDo.description),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
