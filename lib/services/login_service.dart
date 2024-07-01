import '../helpers/user_info.dart';

class LoginService {
  Future<bool> login(int username, int password) async {
    bool isLogin = true;
    if (username == 'admin' || password == 'admin') {
      isLogin = false;
    }

    return isLogin;
  }
}
