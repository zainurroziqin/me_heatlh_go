import 'package:get/get.dart';

import '../source/source_user.dart';

class CLogin extends GetxController {
  final _loading = false.obs;
  bool get loading => _loading.value;
  final _successLogin = false.obs;
  bool get successLogin => _successLogin.value;
  final _successRegister = false.obs;
  bool get successRegister => _successRegister.value;

  login(String username, String password) async {
    _loading.value = true;
    update();
    _successLogin.value = await SourceUser.login(username, password);
    update();
    _loading.value = false;
    update();
  }

  regsiter(
      String username, String name, String password, String asalSekolah) async {
    _loading.value = true;
    update();
    _successRegister.value =
        await SourceUser.register(username, name, password, asalSekolah);
    update();
    _loading.value = false;
    update();
  }
}
