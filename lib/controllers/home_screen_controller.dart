
import 'package:neuroverse/helpers/imports_and_exports.dart';

class HomeScreenController extends GetxController
{
  PageController pageController = PageController();
  int bottomNavigationIndex = 0;
  bool blogs = true;
  bool quiz = false;
  bool settings = false;

  updateBottomNavigationIndex(int value) {
    switch (value) {
      case 0:
        {
          blogs = true;
          quiz = false;
          settings = false;

        }
        break;

      case 1:
        {
          blogs = false;
          quiz = true;
          settings = false;
        }
        break;

      case 2:
        {
          blogs = false;
          quiz = false;
          settings = true;
        }
        break;

    }
    bottomNavigationIndex = value;
    pageController.jumpToPage(
      value,
    );
    update();
  }



}