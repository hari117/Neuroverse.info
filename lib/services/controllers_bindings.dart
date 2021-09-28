import 'package:neuroverse/helpers/imports_and_exports.dart';

initControllers() {
  Get.lazyPut<SplashScreenController>(() => SplashScreenController());
  Get.lazyPut<HomeScreenController>(() => HomeScreenController());
  Get.lazyPut<BlogsScreenController>(() => BlogsScreenController());
  Get.lazyPut<BlogDetailsController>(() => BlogDetailsController());
  Get.lazyPut<QuizScreenController>(() => QuizScreenController());
  Get.lazyPut<SettingsScreenController>(() => SettingsScreenController());
  Get.lazyPut<SingleBlogController>(() => SingleBlogController());
  Get.lazyPut<EditProfileController>(() => EditProfileController());



 // Get.lazyPut<GoogleService>(() => GoogleService());
  Get.put(GoogleService());
  Get.put(FirebaseService());
 // Get.lazyPut<FirebaseService>(() => FirebaseService());
  Get.lazyPut<FirebaseService>(() => FirebaseService());
  Get.lazyPut<LocalStorage>(() => LocalStorage());
}
