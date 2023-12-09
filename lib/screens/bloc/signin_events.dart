abstract class signInEvent {}

class signInTextChanged extends signInEvent {
  final String emailValue;
  final String passwordValue;

  signInTextChanged(this.emailValue, this.passwordValue);
}

class signInSubmitEvent extends signInEvent {
  final String emailValue;
  final String passwordValue;

  signInSubmitEvent(this.emailValue, this.passwordValue);
}
