import 'package:me_heatlh_go/model/artikel.dart';
import 'package:me_heatlh_go/model/konsultan.dart';

import '../config/api.dart';
import '../config/app_request.dart';

class SourceKonsultan{
  static Future<List<Konsultan>> getKonsultan()async{
    String url = '${Api.baseUrl}/daftar-konsultan.php';
    Map? responseBody = await AppRequest.gets(url);

    if(responseBody == null) return [];
    if(responseBody.isNotEmpty){
      List list = responseBody['data'];
      return list.map((e) => Konsultan.fromJson(e)).toList();
    }
    return [];
  }
}