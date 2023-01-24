import 'package:get/get.dart';
import '../model/konsultan.dart';
import '../source/suorce_konsultan.dart';

class CKonsultan extends GetxController{
  final _loading = false.obs;
  bool get loading => _loading.value;

  final _listKonsultan = <Konsultan>[].obs;
  List<Konsultan> get listKonsultan => _listKonsultan.value;

  getListKonsultan() async{
    _loading.value = true;
    update();
    _listKonsultan.value = await SourceKonsultan.getKonsultan();
    update();
    _loading.value = false;
    update();
  }
}