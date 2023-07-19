import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../customs/custom_button.dart';
import '../../helper/const.dart';
import 'home controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

   String coachName = 'Coach Name' ;
   String seriesName = 'Series Name' ;
   String aboutSeries = 'About Series' ;
   String imageUrl = 'https://cmmodels.com/wp-content/uploads/2019/03/modelagentur-sport-fitness-model-schuh-training-sporthose-uhr-herrenuhr.jpg' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 350.h,
                child: Image.network(
                    imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                seriesName,
                style: TextStyle(
                  fontSize: 30,
                  color: K.blackColor,
                  fontWeight: FontWeight.bold,

                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                coachName,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 100.w,
                ),
                child: CustomButton(
                  buttonColor: K.blackColor,
                  text: 'START PRACTICING ',
                  fun: (){},
                  textColor: K.whiteColor,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
          GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) =>Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: Column(
              children: [
                CupertinoSlidingSegmentedControl(
                        backgroundColor: const Color(0xffF4F4F5),
                        thumbColor: K.blackColor,
                        padding: EdgeInsets.all(4.sp),
                        groupValue: controller.groupValue,
                        onValueChanged: (value) {
                    controller.groupChange(value);
                  },
                        children: {
                          0: SizedBox(
                            width: 200.w,
                            height: 50.h,
                            child: Center(
                                child: Text(
                                  "OVERVIEW",
                                  style: TextStyle(
                                      color: controller.groupValue == 0
                                          ? Colors.white
                                          : Colors.black),
                                )),
                          ),
                          1: SizedBox(
                            width: 200.w,
                            height: 50.h,
                            child: Center(
                                child: Text(
                                  "CLASSES",
                                  style: TextStyle(
                                      color: controller.groupValue == 1
                                          ? Colors.white
                                          : Colors.black),
                                )),
                          ),
                          2: SizedBox(
                            width: 200.w,
                            height: 50.h,
                            child: Center(
                                child: Text(
                                  "COMMUNITY",
                                  style: TextStyle(
                                      color: controller.groupValue == 2
                                          ? Colors.white
                                          : Colors.black),
                                )),
                          ),
                        },
                        ),
                SizedBox(
                  height: 20.h,
                ),
                CarouselSlider(
                  carouselController: controller.controller,
                  options: CarouselOptions(
                    disableCenter: true,
                    onPageChanged: (index, reason) {
                      controller.groupChange(index);
                    },
                    viewportFraction: 1,
                  ),
                  items: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ABOUT THE SERIES",
                            style: TextStyle(
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            aboutSeries,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: const Color(0xff4B5563),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ABOUT THE SERIES",
                            style: TextStyle(
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            aboutSeries,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: const Color(0xff4B5563),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ABOUT THE SERIES",
                            style: TextStyle(
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            aboutSeries,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: const Color(0xff4B5563),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ),
            ],
          ),
        ],
      ),
    );
  }
}
