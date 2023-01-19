import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:me_heatlh_go/config/theme.dart';
import 'package:me_heatlh_go/model/kontak.dart';
import 'package:me_heatlh_go/widget/kontakCard.dart';

class ContactPage extends StatelessWidget {
   ContactPage({super.key});

  List listKontak = [
    Kontak(id: 1, nama: 'Dr. Raymond ', jabatan: 'Psikolog', alamat: 'Jember, Jawa Timur', noTelepon: '+6288765321889', imageUrl: 'assets/image_dummy.png'),
    Kontak(id: 1, nama: 'Dr. Raymond ', jabatan: 'Psikolog', alamat: 'Jember, Jawa Timur', noTelepon: '+6288765321889', imageUrl: 'assets/image_dummy.png'),
    Kontak(id: 1, nama: 'Dr. Raymond ', jabatan: 'Psikolog', alamat: 'Jember, Jawa Timur', noTelepon: '+6288765321889', imageUrl: 'assets/image_dummy.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primariColor,
      body: Padding(
          padding: EdgeInsets.only(top: 70.h, bottom: 50.h, left: 15.w, right: 15.w),
          child: Column(
            children: [
              SizedBox(
                height: 21.h,
              ),
              Center(
                child: Text(
                  'KONTAK WA DOKTER',
                  style: inter70016,
                ),
              ),
              SizedBox(
                height: 21.h,
              ),
              Expanded(
              child: ListView.builder(
                itemCount: listKontak.length,
                itemBuilder: (context, index) {
                  Kontak kontak = listKontak[index];
                  return kontakCard(kontak: kontak);
                },
              ),
            )
            ],
          )),
    );
  }
}
