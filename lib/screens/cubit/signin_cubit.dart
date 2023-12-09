// import 'package:email_validator/email_validator.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:form_validation_block/screens/bloc/signin_events.dart';
// import 'package:form_validation_block/screens/bloc/signin_states.dart';

// class signinCubit extends Cubit<signinStates>{
//   signinCubit() : super(initialState()){
//     if(EmailValidator.validate(signInTextChanged.emailValue)==false){
//       emit(inValidState("Please enter valid email address"));
//     }else if(signInTextChanged.passwordValue.length<7){
//       emit(inValidState('Password must be at leat 7 characters long'));}

//       else{
//         emit(validState());
//         emit(loadingState());
//       }
      
//   }
  
// }