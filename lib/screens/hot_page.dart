import 'package:flutter/material.dart';
import 'package:news_app_firbace/core/constants/colors_const.dart';

class HotPage extends StatelessWidget {
  const HotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Hot Updates",
          style: TextStyle(color: ColorsConst.gradient),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
