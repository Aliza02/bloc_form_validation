import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validation_block/screens/bloc/signin_bloc.dart';
import 'package:form_validation_block/screens/cubit/signin_cubit.dart';
import 'package:form_validation_block/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // backgroundColor: Colors.deepPurple,

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
        ),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: BlocProvider(create: (context) => signinCubit(), child: HomePage()),
    );
  }
}
