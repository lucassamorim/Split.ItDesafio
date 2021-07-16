import 'package:app_divisao/modules/login/models/user_model.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class LoginService {
  Future<UserModel> googleSignIn();
}

class LoginServiceImpl implements LoginService {
  @override
  Future<UserModel> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: <String>[
        'email',
      ],
    );
    final account = await _googleSignIn.signIn();
    return UserModel.google(account!);
  }
}
