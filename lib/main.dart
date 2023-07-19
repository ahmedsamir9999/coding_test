import 'package:coding_test/Screens/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'helper/const.dart';
import 'helper/shared.dart';

void main() async{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await MyCache.init();
  runApp(const CodingTest());
}

class CodingTest extends StatelessWidget {
  const CodingTest({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(425 , 925),
        builder: (BuildContext , Widget)=>GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
          //  scaffoldBackgroundColor: K.whiteColor,
          ),
          home: HomeScreen(),
        ));
  }
}
