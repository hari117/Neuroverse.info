
import 'dart:io';

import 'package:neuroverse/helpers/imports_and_exports.dart';
import 'package:path_provider/path_provider.dart' as path;
import 'package:firebase_core/firebase_core.dart';

void main() async{
 await initControllers();
 WidgetsFlutterBinding.ensureInitialized();
  Directory appDocDir = await path.getApplicationDocumentsDirectory();
  String appDocPath = appDocDir.path;
  Hive.init(appDocPath);
 await Hive.openBox(Keywords.app_Name);

 await Firebase.initializeApp();



  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenn(),
    );
  }
}
