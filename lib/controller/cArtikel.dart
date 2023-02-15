import 'package:get/get.dart';
import 'package:me_heatlh_go/model/artikel.dart';
import 'package:me_heatlh_go/source/source_artikel.dart';

class CArtikel extends GetxController{
  final _loading = false.obs;
  bool get loading => _loading.value;

  final _listArtikel = <Artikel>[].obs;
  List<Artikel> get listArtikel => _listArtikel.value;

  getListArtikel() async{
    _loading.value = true;
    update();
    _listArtikel.value = await SourceArtikel.getArtikel();
    update();
    _loading.value = false;
    update();
  }

  getListArtikelByKategori(int n) async{
    _loading.value = true;
    update();
    _listArtikel.value = await SourceArtikel.getArtikelByKategori(n);
    update();
    _loading.value = false;
    update();
  }
}