import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:me_heatlh_go/config/theme.dart';
import 'package:me_heatlh_go/model/Kuisioner.dart';
import 'package:me_heatlh_go/widget/kuisionerCard.dart';

class KuisionerPage extends StatelessWidget {
  KuisionerPage({super.key});

  List listkuisioner = [
    Kuisioner(
        id: 1,
        nomerSoal: "1.",
        soal: "Saya bahagia, puas, atau senang dengan kehidupan pribadi saya"),
    Kuisioner(
        id: 2,
        nomerSoal: "2.",
        soal:
            "Saya merasa masa depan terlihat penuh harapan dan menjanjikan bagi saya"),
    Kuisioner(
        id: 2,
        nomerSoal: "3.",
        soal:
            "Saya merasa masa depan terlihat penuh harapan dan menjanjikan bagi saya"),
    Kuisioner(
        id: 3,
        nomerSoal: "4.",
        soal:
            "Saya merasa masa depan terlihat penuh harapan dan menjanjikan bagi saya"),
    Kuisioner(
        id: 4,
        nomerSoal: "5.",
        soal:
            "Saya merasa masa depan terlihat penuh harapan dan menjanjikan bagi saya"),
    Kuisioner(
        id: 5,
        nomerSoal: "6.",
        soal:
            "Saya merasa masa depan terlihat penuh harapan dan menjanjikan bagi saya"),
    Kuisioner(
        id: 6,
        nomerSoal: "7.",
        soal:
            "Saya merasa masa depan terlihat penuh harapan dan menjanjikan bagi saya"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primariColor,
      body: Padding(
          padding: EdgeInsets.only(top: 70.h, bottom: 50.h),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 21.h,
              ),
              Center(
                child: Text(
                  "KUISIONER",
                  style: inter70016,
                ),
              ),
              SizedBox(
                height: 21.h,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: listkuisioner.length,
                  itemBuilder: (context, index) {
                    Kuisioner kuisioner = listkuisioner[index];
                    return kuisionerCard(kuisioner: kuisioner);
                  },
                ),
              )
            ],
          )),
    );
  }
}
