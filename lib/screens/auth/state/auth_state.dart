abstract class AuthState {
  AuthState();
}

class AuthLoadingState extends AuthState {
 AuthLoadingState();
}
class AuthErrorState extends AuthState {
  String msg;
  AuthErrorState({required this.msg});
}
class AuthComplete extends AuthState{
  AuthComplete();
}