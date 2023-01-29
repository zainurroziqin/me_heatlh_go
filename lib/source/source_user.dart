import '../config/app_request.dart';
import '../config/api.dart';
import '../config/session.dart';
import '../model/user.dart';

class SourceUser {
  static Future<bool> login(String username, String password) async {
    String url = '${Api.baseUrl}/login';
    Map? responseBody = await AppRequest.post(
        url, {'username': username, 'password': password});
    if (responseBody == null) return false;
    if (responseBody['success'] == null) return false;
    if (responseBody['success']) {
      var mapUser = responseBody['data'];
      Session.saveUser(User.fromJson(mapUser));
    }
    return responseBody['success'];
  }

  static Future<bool> register(
      String name, String asalSekolah, String username, String password) async {
    String url = '${Api.baseUrl}/register';
    Map? responseBody = await AppRequest.post(url, {
      'name': name,
      'asal_sekolah': asalSekolah,
      'username': username,
      'password': password
    });

    if (responseBody == null) return false;
    if (responseBody['success'] == null) return false;
    return responseBody['success'];
  }
}
