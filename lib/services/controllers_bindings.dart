

import 'package:neuroverse/helpers/imports_and_exports.dart';



initControllers(){

  Get.lazyPut<SplashScreenController>(() => SplashScreenController());
  Get.lazyPut<HomeScreenController>(() => HomeScreenController());
  Get.lazyPut<BlogsScreenController>(() => BlogsScreenController());
  Get.lazyPut<BlogDetailsController>(() => BlogDetailsController());
  Get.lazyPut<QuizScreenController>(() => QuizScreenController());


  Get.lazyPut<SettingsScreenController>(() => SettingsScreenController());
  Get.lazyPut<SingleBlogController>(() => SingleBlogController());
  Get.lazyPut<LocalStorage>(() => LocalStorage());
  Get.lazyPut<EditProfileController>(() => EditProfileController());
  Get.put(GoogleService());
  Get.put(FirebaseService());
  Get.put(TwitterAuthService());

  // Get.lazyPut<GoogleService>(() => GoogleService());
  //
  //     Get.lazyPut<FirebaseService>(() => FirebaseService());







}