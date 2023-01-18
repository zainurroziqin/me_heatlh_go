import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:me_heatlh_go/config/theme.dart';

class ArtikelPage extends StatelessWidget {
  const ArtikelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: primariColor,
      body: Padding(
        padding: EdgeInsets.only(top: 70.h, bottom: 50.h),
        child: const Center(child: Text('Artikel')),
      ),
    );
  }
}