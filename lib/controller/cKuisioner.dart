import 'package:get/get.dart';
import 'package:me_heatlh_go/model/kuisioner.dart';
import 'package:me_heatlh_go/source/source_kuisioner.dart';

class CKuisioner extends GetxController {
  final _loading = false.obs;
  bool get loading => _loading.value;

  final _list = <int>[0].obs;
  final _panjang = 0.obs;
  int get panjang => _panjang.value;
  List<int> get dataList => _list.value;

  resetPanjang() async {
    _list.clear();
  }

  final _validasiJawaban = 0.obs;
  int get validasiJawaban => _validasiJawaban.value;
  setValidasiJawaban(int n) =>
      _validasiJawaban.value = _validasiJawaban.value + n;
  resetValidasiJawaban() => _validasiJawaban .value = 0;

  getPanjangList() {
    _panjang.value = listKuisioner.length;
    for (int i = 0; i < _panjang.value + 1; i++) {
      _list.add(0);
    }
  }

  final _hasil = 0.obs;
  int get hasil => _hasil.value;
  setHasil(int n) => _hasil.value = _hasil.value + n;
  setUpdate(int n) => _hasil.value = _hasil.value - n;

  resetHasil() {
    _hasil.value = 0;
  }

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
