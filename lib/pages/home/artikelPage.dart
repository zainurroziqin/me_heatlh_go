import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:me_heatlh_go/config/theme.dart';
import 'package:me_heatlh_go/model/artikel.dart';

import '../../widget/artikelCard.dart';

class ArtikelPage extends StatelessWidget {
  ArtikelPage({super.key});

  List listArtikel = <Artikel>[
    Artikel(
      id: 1,
      judul: 'Lari bikin Sehat',
      isi: 'Lari bikin sehat setiap pagi nya',
      tanggal: '19 Januari',
      imageUrl: 'assets/image_dummy.png',
    ),
    Artikel(
      id: 2,
      judul: 'Mahfud MD menjadi MenkoPolhukam',
      isi: 'Menteri Mahfud MD dilantik oleh presiden joko widodo menjadi menteri koordinator politik, hukum dan HAM',
      tanggal: '19 Januari',
      imageUrl: 'assets/image_dummy.png',
    ),
    Artikel(
      id: 3,
      judul: 'Azril Anjing',
      isi: 'Menteri Mahfud MD dilantik oleh presiden joko widodo menjadi menteri koordinator politik, hukum dan HAM',
      tanggal: '19 Januari',
      imageUrl: 'assets/image_dummy.png',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primariColor,
      body: Padding(
        padding: EdgeInsets.only(top: 70.h, bottom: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 44.h,
            ),
            Center(child: Image.asset('assets/image_dummy.png', width: 200.w, height: 118.h, fit: BoxFit.fill,)),
            SizedBox(
              height: 55.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: listArtikel.length,
                itemBuilder: (context, index) {
                  Artikel artikel = listArtikel[index];
                  return artikelCard(artikel: artikel);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
