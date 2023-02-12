import 'package:me_heatlh_go/config/app_request.dart';
import 'package:me_heatlh_go/model/kuisioner.dart';
import 'package:me_heatlh_go/config/api.dart';

class SourceKuisioner {
  static Future<List<Kuisioner>> getKuisioner() async {
    String url = '${Api.baseUrl}/kuisioner.php';
    Map? responseBody = await AppRequest.gets(url);

    if (responseBody == null) return [];
    if (responseBody.isNotEmpty) {
      List list = responseBody['data'];
      return list.map((e) => Kuisioner.fromJson(e)).toList();
    }
    return [];
  }

  static Future<bool> postJawaban(
      String idUser, String detailJawaban, String nilai, String hasil) async {
    String url = '${Api.baseUrl}/jawaban';
    Map? responseBody = await AppRequest.post(url, {
      'id_user': idUser,
      'detail_jawaban': detailJawaban,
      'nilai': nilai,
      'hasil': hasil
    });

    if (responseBody == null) return false;
    if (responseBody['success'] == null) return false;
    return responseBody['success'];
  }
}
