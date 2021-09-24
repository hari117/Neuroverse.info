import 'package:neuroverse/helpers/imports_and_exports.dart';

class SettingsScreen extends GetView<SettingsScreenController>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder(
        init: SettingsScreenController(),
        builder: (controller){
          return Scaffold(

          body: Center(child: Text("this is settings screen,its is under development")),
          );
    });
  }

}