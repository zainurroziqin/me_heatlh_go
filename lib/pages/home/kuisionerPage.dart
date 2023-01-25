import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:me_heatlh_go/config/theme.dart';
import 'package:me_heatlh_go/controller/cKuisioner.dart';
import 'package:me_heatlh_go/model/kuisioner.dart';
import 'package:me_heatlh_go/widget/kuisionerCard.dart';

class KuisionerPage extends StatefulWidget {
  KuisionerPage({super.key});

  @override
  State<KuisionerPage> createState() => _KuisionerPageState();
}

class _KuisionerPageState extends State<KuisionerPage> {
  final cKuisioner = Get.put(CKuisioner());

  refresh() {
    cKuisioner.getListKuisioner();
  }

  @override
  void initState() {
    refresh();
    cKuisioner.listKuisioner;
    super.initState();
  }

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
                child: GetBuilder<CKuisioner>(builder: (_) {
                  if (_.loading) return DView.loadingCircle();
                  if (_.listKuisioner.isEmpty)
                    return DView.empty('Pertanyaan Kosong');
                  return RefreshIndicator(
                    onRefresh: () async => refresh(),
                    child: ListView.builder(
                      itemCount: _.listKuisioner.length,
                      itemBuilder: (context, index) {
                        Kuisioner kuisioner = _.listKuisioner[index];
                        return kuisionerCard(
                          kuisioner: kuisioner,
                        );
                      },
                    ),
                  );
                }),
              )
            ],
          )),
    );
  }
}
