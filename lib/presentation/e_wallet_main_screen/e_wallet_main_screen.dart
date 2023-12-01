
import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:vincent_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:vincent_s_application6/widgets/app_bar/custom_app_bar.dart';

class EWalletMainScreen extends StatelessWidget {
  EWalletMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: appBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 17.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Text("hello,",
                              style: CustomTextStyles.bodySmallBlack900Light)),
                      Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Text("Naswa Azahra!",
                              style: CustomTextStyles.titleMediumSemiBold)),
                      SizedBox(height: 28.v),
                      money(context),
                      SizedBox(height: 41.v),
                      button(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

    PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlue600,
            margin: EdgeInsets.only(left: 16.h, top: 26.v, bottom: 24.v),
            onTap: () {
              back(context);
            }),
        title: AppbarTitle(text: "E-Wallet", margin: EdgeInsets.only(left: 13.h)),
        styleType: Style.bgFill);
  }

  back(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreenPage);
  }

  Widget money(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            width: 339.h,
            padding: EdgeInsets.symmetric(vertical: 5.v),
            decoration: AppDecoration.fillPink10001
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 45.v,
                      width: 311.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 79.h),
                                child: Row(children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.v, bottom: 4.v),
                                      child: Text("Rp ",
                                          style: CustomTextStyles
                                              .titleSmallSemiBold)),
                                  Text("100.000",
                                      style: theme.textTheme.displaySmall)
                                ]))),
                      
                      ])),
                  SizedBox(height: 2.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgDollarCoin,
                        height: 21.v,
                        width: 25.h),
                    Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text("Rp 25.000",
                            style: CustomTextStyles.bodyMedium14))
                  ]),
                  SizedBox(height: 3.v)
                ])));
  }

  Widget button(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 63.h, vertical: 18.v),
        decoration: AppDecoration.fillPink
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 22.h, right: 3.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 76.v,
                            width: 60.h,
                            margin: EdgeInsets.only(bottom: 4.v),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: 71.v,
                                      width: 54.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.pink50))),
                              image(context,
                                  plusMath: ImageConstant.imgHourglass,
                                  topUp: "History", onTapSixtyEight: () {
                                toHistory(context);
                              })
                            ])),
                        GestureDetector(
                            onTap: () {
                              toPoints(context);
                            },
                            child: SizedBox(
                                height: 81.v,
                                width: 68.h,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                              height: 79.v,
                                              width: 64.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.pink50))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                              height: 74.v,
                                              width: 68.h,
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text(
                                                            "Flow Points",
                                                            style: CustomTextStyles
                                                                .labelLargeInterBlack900)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCoins,
                                                        height: 60.adaptSize,
                                                        width: 60.adaptSize,
                                                        alignment:
                                                            Alignment.topLeft)
                                                  ])))
                                    ])))
                      ])),
              SizedBox(height: 16.v),
               Padding(
                  padding: EdgeInsets.only(left: 22.h, right: 3.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 76.v,
                            width: 60.h,
                            margin: EdgeInsets.only(bottom: 4.v),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: 71.v,
                                      width: 54.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.pink50))),
                              image(context,
                                  plusMath: ImageConstant.imgPlusMath,
                                  topUp: "Top Up", onTapSixtyEight: () {
                                toTopup(context);
                              })
                            ])),
                        GestureDetector(
                            onTap: () {
                              toContact(context);
                            },
                            child: SizedBox(
                                height: 81.v,
                                width: 68.h,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                              height: 79.v,
                                              width: 64.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.pink50))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                              height: 74.v,
                                              width: 68.h,
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text(
                                                            "Transfer",
                                                            style: CustomTextStyles
                                                                .labelLargeInterBlack900)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPaperPlane,
                                                        height: 65.adaptSize,
                                                        width: 65.adaptSize,
                                                        alignment:
                                                            Alignment.topLeft)
                                                  ])))
                                    ])))
                      ])),
              SizedBox(height: 6.v)
            ]));
  }

  Widget image(
    BuildContext context, {
    required String plusMath,
    required String topUp,
    Function? onTapSixtyEight,
  }) {
    return GestureDetector(
        onTap: () {
          onTapSixtyEight!.call();
        },
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: plusMath, height: 60.adaptSize, width: 60.adaptSize),
          SizedBox(height: 1.v),
          Text(topUp,
              style: CustomTextStyles.labelLargeInterBlack900
                  .copyWith(color: appTheme.black900))
        ]));
  }

  toHistory(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletTransactionHistoryScreen);
  }

  toPoints(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletPointsScreen);
  }

  toTopup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletTopupScreen);
  }

  toContact(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletContactTransferScreen);
  }
}
