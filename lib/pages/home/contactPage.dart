import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:me_heatlh_go/config/theme.dart';
import 'package:me_heatlh_go/controller/cKonsultan.dart';
import 'package:me_heatlh_go/model/konsultan.dart';
import 'package:me_heatlh_go/model/kontak.dart';
import 'package:me_heatlh_go/widget/kontakCard.dart';

class ContactPage extends StatefulWidget {
  ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final cKonsultan = Get.put(CKonsultan());

  refresh() {
    cKonsultan.getListKonsultan();
  }

  @override
  void initState() {
    // TODO: implement initState
    refresh();
    cKonsultan.listKonsultan;
    super.initState();
  }

  // List listKontak = [
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primariColor,
      body: Padding(
          padding:
              EdgeInsets.only(top: 8.h, bottom: 50.h, left: 15.w, right: 15.w),
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
                child: GetBuilder<CKonsultan>(
                  builder: (_) {
                    if (_.loading) return DView.loadingCircle();
                    if (_.listKonsultan.isEmpty) return DView.empty('Kosong');
                    return RefreshIndicator(
                      onRefresh: () async => refresh(),
                      child: ListView.builder(
                        itemCount: _.listKonsultan.length,
                        itemBuilder: (context, index) {
                          Konsultan konsultan = _.listKonsultan[index];
                          return kontakCard(
                            konsultan: konsultan,
                          );
                        },
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
