// abstract class signInEvent {}

// class ssignInTextChanged extends signInEvent {
//   final String emailValue;
//   final String passwordValue;

//   signInTextChanged(this.emailValue, this.passwordValue);
// }

// class signInSubmitEvent extends signInEvent {
//   final String emailValue;
//   final String passwordValue;

//   signInSubmitEvent(this.emailValue, this.passwordValue);
// }
import 'package:flutter/widgets.dart';

class SigninEvents {
  static TextEditingController email = TextEditingController();
  static TextEditingController password = TextEditingController();
}
