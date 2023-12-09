abstract class signinStates{}
class initialState extends signinStates{}
class loadingState extends signinStates{}
class inValidState extends signinStates{
  final String error;
  inValidState(this.error);
}

class validState extends signinStates{}