import 'package:flutter/material.dart';
import 'package:news_app_firbace/core/constants/colors_const.dart';
import 'package:news_app_firbace/core/constants/size_const.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);

    return Scaffold(
      backgroundColor: ColorsConst.white,
      appBar: AppBar(
        elevation: 0,
        title: SizedBox(
          width: 375,
          height: 100,
          child: Row(
            children: [
              Expanded(
                flex: 8,
                child: SizedBox(
                  width: SizeConst.getWidth(345),
                  height: SizeConst.getHeight(40),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Dogecoin to the Moon...",
                      labelStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      suffixIcon: const Icon(Icons.search),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: InkWell(
                  child: Image.asset("assets/images/notif.png"),
                  onTap: () {
                    Navigator.pushNamed(context, "/hot");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return const Center(child: Text("Something went wrong!"));
          } else  {
            return Container(color: ColorsConst.black);
          }
        },
      ),
    );
  }
}
/*


 */