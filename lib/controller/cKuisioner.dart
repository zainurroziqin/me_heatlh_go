import 'package:get/get.dart';
import 'package:me_heatlh_go/model/kuisioner.dart';
import 'package:me_heatlh_go/source/source_kuisioner.dart';

class CKuisioner extends GetxController {
  final _loading = false.obs;
  bool get loading => _loading.value;

  final _hasil = 0.obs;
  int get hasil => _hasil.value;
  setHasil(int n) => _hasil.value = _hasil.value + n;
  setUpdate(int n) => _hasil.value = _hasil.value - n;

  final _details = <String>[].obs;
  List get details => _details.value;
  setDetails(n) => _details.value.add(n);
  removeDetails(n) => _details.value.remove(n);

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
