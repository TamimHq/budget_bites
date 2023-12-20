class SignInWithEmailAndPasswordFailure{
  final String message;

  const SignInWithEmailAndPasswordFailure([this.message="An Unknown error occurred"]);

  factory SignInWithEmailAndPasswordFailure.code(String code){

    switch(code){
      case 'weak-password':
        return const SignInWithEmailAndPasswordFailure('Please enter a strong password');
      case 'invalid-email':
        return const SignInWithEmailAndPasswordFailure('Please enter a valid email');
      case 'email-already-in-use':
        return const SignInWithEmailAndPasswordFailure('An account already exist within this email');
      case 'user-disable':
        return const SignInWithEmailAndPasswordFailure('This account is disable please contact with customer care');
      default:
        return const SignInWithEmailAndPasswordFailure();
    }
  }

}