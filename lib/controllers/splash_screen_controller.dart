import 'package:neuroverse/helpers/imports_and_exports.dart';

class SplashScreenController extends GetxController
{

 @override
  void onInit() {

  Get.find<TwitterAuthService>()..initTwitter();

//
  }

 @override
  void onReady() {

  moveToHomeScreen();
  print("on ready funtion callled");
 }





 moveToHomeScreen() => Future.delayed(Duration(seconds: 5),()=>Get.to(HomeScreen()));

}