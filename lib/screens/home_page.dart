import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validation_block/screens/bloc/signin_bloc.dart';
import 'package:form_validation_block/screens/bloc/signin_events.dart';
import 'package:form_validation_block/screens/bloc/signin_states.dart';

class HomePage extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
            BlocBuilder<signInBloc, signinStates>(builder: (context, state) {
              if (state is inValidState) {
                return Text(state.error);
              } else {
                return Container();
              }
            }),
            TextFormField(
              controller: email,
              onChanged: (val) {
                BlocProvider.of<signInBloc>(context)
                    .add(signInTextChanged(email.text, password.text));
              },
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: password,
              onChanged: (val) {
                BlocProvider.of<signInBloc>(context)
                    .add(signInTextChanged(email.text, password.text));
              },
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 16),
            BlocBuilder<signInBloc, signinStates>(
              builder: (context, state) {
                if (state is loadingState) {
                  return const CircularProgressIndicator();
                }
                return ElevatedButton(
                  onPressed: () {
                    if (state is validState) {
                      BlocProvider.of<signInBloc>(context)
                          .add(signInSubmitEvent(email.text, password.text));
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
