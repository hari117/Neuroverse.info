import 'package:neuroverse/helpers/imports_and_exports.dart';

class BlogsScreenController extends GetxController
{

List<Chapter>? blogs=[];
  @override
  void onInit() {
    blogs=ListOfChapters().getList();
    update();
  }
}