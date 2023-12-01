
import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';

class SubscribeScreen extends StatelessWidget {
  const SubscribeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: appBar(context),
            body: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.promosScreen);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 236, 227, 227)),
                            foregroundColor: MaterialStateProperty.all(Colors.black),
                            padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 10.0)),
                            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 22)),
                            shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                              ),              
                            ),
                            minimumSize: MaterialStateProperty.all(
                            Size(double.infinity, 50.0),
                            ),
                            elevation: MaterialStateProperty.all(0),
                            ), 
                            child: Text("Promo"),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.subscribeScreen);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xFF00A86B)),
                            foregroundColor: MaterialStateProperty.all(Colors.black),
                            padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 10.0)),
                            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 22)),
                            shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                              ),              
                            ),
                            minimumSize: MaterialStateProperty.all(
                            Size(double.infinity, 50.0),
                            ),
                            elevation: MaterialStateProperty.all(0),
                            ), 
                            child: Text("Subscribe"), 
                          )
                        ),
                      ]
                    ),
                Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 5),
              child: Text(
                "   RideFlow Plus",
                style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold,),
              ),
            ),
            Container(
            margin: EdgeInsets.fromLTRB(0, 4, 0, 5),
            child: Text(
              "     Lebih hemat dengan rideflow plus",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            ),
            Container(
              width: 350,
              height: 165,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.fromLTRB(20, 10, 0, 5),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 89, 188, 255),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                "    FlowRide 30 Days Deal",
                style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
                  Text(
                    " ~ Cash back s/d 50% disetiap perjalanan",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    " ~ Gratis biaya admin",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    " ~ Gratis biaya asuransi",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Divider(indent: 10.h, endIndent: 10.h, thickness: 2.0, color: Color.fromARGB(255, 255, 255, 255),)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        " Rp. 50.000",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Container(
                        width: 70,
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                        child: Text(
                          "Buy",
                          style: TextStyle(fontSize: 15, color: Colors.blueAccent, fontWeight: FontWeight.bold),
                        )
                        ),
                    ),
                    ],
                  )
                  )
                ]
            ),
            ),
            
            Container(
              width: 350,
              height: 165,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.fromLTRB(20, 10, 0, 5),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 89, 188, 255),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                "    FlowRide 90 Days Deal",
                style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
                  Text(
                    " ~ Cash back s/d 50% disetiap perjalanan",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    " ~ Gratis biaya admin",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    " ~ Gratis biaya asuransi",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Divider(indent: 10.h, endIndent: 10.h, thickness: 2.0, color: Color.fromARGB(255, 255, 255, 255),)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        " Rp. 125.000",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Container(
                        width: 70,
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                        child: Text(
                          "Buy",
                          style: TextStyle(fontSize: 15, color: Colors.blueAccent, fontWeight: FontWeight.bold),
                        )
                        ),
                    ),
                    ],
                  )
                  )
                ]
            ),
            ),
            Container(
              width: 350,
              height: 165,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.fromLTRB(20, 10, 0, 5),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 89, 188, 255),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                "    FlowRide 365 Days Deal",
                style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
                  Text(
                    " ~ Cash back s/d 50% disetiap perjalanan",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    " ~ Gratis biaya admin",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    " ~ Gratis biaya asuransi",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Divider(indent: 10.h, endIndent: 10.h, thickness: 2.0, color: Color.fromARGB(255, 255, 255, 255),)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        " Rp. 400.000",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Container(
                        width: 70,
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                        child: Text(
                          "Buy",
                          style: TextStyle(fontSize: 15, color: Colors.blueAccent, fontWeight: FontWeight.bold),
                        ),
                        ),
                      ),
            ],
        ),
      ),]
    ),
  ),],
              ),),),);
}
            
  PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 47.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 15.h, top: 25.v, bottom: 25.v),
            onTap: () {
              back(context);
            }),
        title:
            AppbarSubtitleOne(text: "Subscribe", margin: EdgeInsets.only(left: 8.h)),
        styleType: Style.bgFill);
  }
  back(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreenPage);
  }
}
