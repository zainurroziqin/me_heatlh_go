import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:me_heatlh_go/config/theme.dart';
import 'package:me_heatlh_go/controller/cArtikel.dart';
import 'package:me_heatlh_go/model/artikel.dart';

import '../../controller/cKonsultan.dart';
import '../../widget/artikelCard.dart';

class ArtikelPage extends StatefulWidget {
  ArtikelPage({super.key});

  @override
  State<ArtikelPage> createState() => _ArtikelPageState();
}

class _ArtikelPageState extends State<ArtikelPage> {
  // List listArtikel = <Artikel>[
  final cArtikel = Get.put(CArtikel());

  refresh() {
    cArtikel.getListArtikel();
  }

  @override
  void initState() {
    // TODO: implement initState\
    refresh();
    cArtikel.getListArtikel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primariColor,
      body: Padding(
        padding: EdgeInsets.only(top: 8.h, bottom: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 21.h,
            ),
            Center(
              child: Text(
                "ARTIKEL",
                style: inter70016,
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Expanded(
              child: GetBuilder<CArtikel>(
                builder: (_) {
                  if (_.loading) return DView.loadingCircle();
                  if (_.listArtikel.isEmpty) return DView.empty('Kosong');
                  return RefreshIndicator(
                    onRefresh: () async => refresh(),
                    child: ListView.builder(
                      itemCount: _.listArtikel.length,
                      itemBuilder: (context, index) {
                        Artikel artikel = _.listArtikel[index];
                        return artikelCard(
                          artikel: artikel,
                        );
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
