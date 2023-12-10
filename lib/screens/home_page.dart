import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validation_block/screens/bloc/signin_bloc.dart';
import 'package:form_validation_block/screens/bloc/signin_events.dart';
import 'package:form_validation_block/screens/bloc/signin_states.dart';
import 'package:form_validation_block/screens/cubit/signin_cubit.dart';

class HomePage extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // SigninEvents signin = SigninEvents();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<signinCubit, signinStates>(builder: (context, state) {
              if (state is inValidState) {
                return Text(state.error);
              } else {
                return Container();
              }
            }),
            TextFormField(
              controller: SigninEvents.email,
              onChanged: (val) {
                SigninEvents.email.text = val;
              },
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: SigninEvents.password,
              onChanged: (val) {
                SigninEvents.password.text = val;
              },
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 16),
            BlocBuilder<signinCubit, signinStates>(
              builder: (context, state) {
                if (state is loadingState) {
                  return const CircularProgressIndicator();
                }
                return ElevatedButton(
                  onPressed: () {
                    if (state is validState) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Login Successful'),
                        ),
                      );
                    }
                  },
                  child: const Text('Sign In'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
