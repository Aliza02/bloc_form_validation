import 'dart:async';

import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validation_block/screens/bloc/signin_events.dart';
import 'package:form_validation_block/screens/bloc/signin_states.dart';

class signinCubit extends Cubit<signinStates> {
  signinCubit() : super(initialState()) {
    // SigninEvents signin=SigninEvents();

    SigninEvents.email.addListener(() {
      if (EmailValidator.validate(SigninEvents.email.text) == false) {
        emit(inValidState("Please enter valid email address"));
      } else {
        emit(validState());
      }
    });
    SigninEvents.password.addListener(() {
      if (SigninEvents.password.text.length < 7) {
        emit(inValidState('Password must be at leat 7 characters long'));
      } else {
        emit(validState());
      }
    });
    // if(EmailValidator.validate(SigninEvents.email.text)==false){
    //   emit(inValidState("Please enter valid email address"));
    // }else if(SigninEvents.password.text.length<7){
    //   emit(inValidState('Password must be at leat 7 characters long'));}

    //   else{
    //     emit(validState());
    //     emit(loadingState());
    //   }
  }
}
