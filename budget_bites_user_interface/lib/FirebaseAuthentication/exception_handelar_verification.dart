class VerificationFailure{
  final String message;

  const VerificationFailure([this.message="An Unknown error occurred"]);

  factory VerificationFailure.code(String code){

    switch(code){
      case 'weak-password':
        return const VerificationFailure('Please enter a strong password');
      case 'invalid-email':
        return const VerificationFailure('Please enter a valid email');
      case 'email-already-in-use':
        return const VerificationFailure('An account already exist within this email');
      case 'user-disable':
        return const VerificationFailure('This account is disable please contact with customer care');
      default:
        return const VerificationFailure();
    }
  }

}