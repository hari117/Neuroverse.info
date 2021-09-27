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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisSize: MainAxisSize.min,
              children: [

                Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Image(image: AssetImage(ImagesAndIcons.app_logo),),
                ),
                SizedBox(height: 10,),
                Text(
                  Keywords.app_Name,
                  style:
                  GoogleFonts.palanquin(textStyle: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,letterSpacing: 1.2)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
