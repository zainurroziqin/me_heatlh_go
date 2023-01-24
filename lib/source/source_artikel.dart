import 'package:me_heatlh_go/model/artikel.dart';

import '../config/api.dart';
import '../config/app_request.dart';

class SourceArtikel{
  static Future<List<Artikel>> getArtikel()async{
    String url = '${Api.baseUrl}/berita';
    Map? responseBody = await AppRequest.gets(url);

    if(responseBody == null) return [];
    if(responseBody.isNotEmpty){
      List list = responseBody['data'];
      return list.map((e) => Artikel.fromJson(e)).toList();
    }
    return [];
  }
}