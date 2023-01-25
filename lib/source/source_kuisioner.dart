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
}
