import 'package:neuroverse/helpers/imports_and_exports.dart';

class QuizScreen extends GetView<QuizScreenController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder(
        init: QuizScreenController(),
        builder: (controller) {
          return Scaffold(
            body: Center(child: Text("this is quiz screen,its is under development ")),
          );
        });
  }
}
