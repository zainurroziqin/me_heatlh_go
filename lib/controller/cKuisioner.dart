import 'package:get/get.dart';
import 'package:me_heatlh_go/model/kuisioner.dart';
import 'package:me_heatlh_go/source/source_kuisioner.dart';

class CKuisioner extends GetxController {
  final _loading = false.obs;
  bool get loading => _loading.value;

  final _listKuisioner = <Kuisioner>[].obs;
  List<Kuisioner> get listKuisioner => _listKuisioner.value;

  getListKuisioner() async {
    _loading.value = true;
    update();
    _listKuisioner.value = await SourceKuisioner.getKuisioner();
    update();
    _loading.value = false;
    update();
  }
}
