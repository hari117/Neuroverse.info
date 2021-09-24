import 'package:neuroverse/helpers/imports_and_exports.dart';

class SplashScreenn extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<SplashScreenController>(
      init: SplashScreenController(),
      builder: (controller) {
        controller.moveToHomeScreen();
        return Scaffold(
          backgroundColor: AppColors.neuroverse_Backgroud_Color,
          body: Center(
             child: Text(
               Keywords.app_Name,
               style:
               GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,letterSpacing: 1.5)),
             ),
          ),
        );
      },
    );
  }
}
