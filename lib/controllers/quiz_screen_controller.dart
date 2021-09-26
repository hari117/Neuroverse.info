import 'package:neuroverse/helpers/imports_and_exports.dart';

class QuizScreenController extends GetxController

{

   bool isQuizStarted=false;

   bool isShowAnswers=false;

    Map<String,dynamic> userSelectedAnswers={

      "q1":"",
      "q2":"",
      "q3":"",
      "q4":"",
      "q5":"",
      "q6":"",
      "q7":"",
      "q8":"",
    };
  @override
  void onInit() {

  }

  updateQuizStatus(bool value)
  {
    isQuizStarted=value;
    update();
  }

  updateShowAnswerStatus(bool value)
  {
    isShowAnswers=value;
    print("the show answer value is ${value}");
    update();
  }

  bool q1_ans1=false;
   bool q1_ans2=false;
   bool q1_ans3=false;
   bool q1_ans4=false;
  updateQ1Quiz(int number,String answer)
  {
    switch(number)
        {
          case 1:
             q1_ans1=true;
             q1_ans2=false;
             q1_ans3=false;
             q1_ans4=false;
             updateUserAnswers("q1",answer);
             break;
      case 2:
        q1_ans1=false;
        q1_ans2=true;
        q1_ans3=false;
        q1_ans4=false;
        updateUserAnswers("q1",answer);
        break;
      case 3:
        q1_ans1=false;
        q1_ans2=false;
        q1_ans3=true;
        q1_ans4=false;
        updateUserAnswers("q1",answer);
        break;
      case 4:
        q1_ans1=false;
        q1_ans2=false;
        q1_ans3=false;
        q1_ans4=true;
        updateUserAnswers("q1",answer);
        break;
        }

      update();
  }




   bool q2_ans1=false;
   bool q2_ans2=false;

   updateQ2Quiz(int number,String answer)
   {
     switch(number)
     {
       case 1:
         q2_ans1=true;
         q2_ans2=false;
         updateUserAnswers("q2",answer);
         break;
       case 2:
         q2_ans1=false;
         q2_ans2=true;
         updateUserAnswers("q2",answer);
         break;
     }
     update();
   }





   bool q3_ans1=false;
   bool q3_ans2=false;
   bool q3_ans3=false;
   bool q3_ans4=false;
   updateQ3Quiz(int number,String answer)
   {
     switch(number)
     {
       case 1:
         q3_ans1=true;
         q3_ans2=false;
         q3_ans3=false;
         q3_ans4=false;
         updateUserAnswers("q3",answer);
         break;
       case 2:
         q3_ans1=false;
         q3_ans2=true;
         q3_ans3=false;
         q3_ans4=false;
         updateUserAnswers("q3",answer);
         break;
       case 3:
         q3_ans1=false;
         q3_ans2=false;
         q3_ans3=true;
         q3_ans4=false;
         updateUserAnswers("q3",answer);
         break;
       case 4:
         q3_ans1=false;
         q3_ans2=false;
         q3_ans3=false;
         q3_ans4=true;
         updateUserAnswers("q3",answer);
         break;
     }
     update();
   }




   bool q4_ans1=false;
   bool q4_ans2=false;
   bool q4_ans3=false;
   bool q4_ans4=false;
   updateQ4Quiz(int number,String answer)
   {
     switch(number)
     {
       case 1:
         q4_ans1=true;
         q4_ans2=false;
         q4_ans3=false;
         q4_ans4=false;
         updateUserAnswers("q4",answer);
         break;
       case 2:
         q4_ans1=false;
         q4_ans2=true;
         q4_ans3=false;
         q4_ans4=false;
         updateUserAnswers("q4",answer);
         break;
       case 3:
         q4_ans1=false;
         q4_ans2=false;
         q4_ans3=true;
         q4_ans4=false;
         updateUserAnswers("q4",answer);
         break;
       case 4:
         q4_ans1=false;
         q4_ans2=false;
         q4_ans3=false;
         q4_ans4=true;
         updateUserAnswers("q4",answer);
         break;
     }
     update();
   }




   bool q5_ans1=false;
   bool q5_ans2=false;

   updateQ5Quiz(int number,String answer)
   {
     switch(number)
     {
       case 1:
         q5_ans1=true;
         q5_ans2=false;
         updateUserAnswers("q5",answer);
         break;
       case 2:
         q5_ans1=false;
         q5_ans2=true;
         updateUserAnswers("q5",answer);
         break;
     }
     update();
   }


   bool q6_ans1=false;
   bool q6_ans2=false;

   updateQ6Quiz(int number,String answer)
   {
     switch(number)
     {
       case 1:
         q6_ans1=true;
         q6_ans2=false;
         updateUserAnswers("q6",answer);
         break;
       case 2:
         q6_ans1=false;
         q6_ans2=true;
         updateUserAnswers("q6",answer);
         break;
     }
     update();
   }





   bool q7_ans1=false;
   bool q7_ans2=false;

   updateQ7Quiz(int number,String answer)
   {
     switch(number)
     {
       case 1:
         q7_ans1=true;
         q7_ans2=false;
         updateUserAnswers("q7",answer);
         break;
       case 2:
         q7_ans1=false;
         q7_ans2=true;
         updateUserAnswers("q7",answer);
         break;
     }
     update();
   }



   bool q8_ans1=false;
   bool q8_ans2=false;

   updateQ8Quiz(int number,String answer)
   {
     switch(number)
     {
       case 1:
         q8_ans1=true;
         q8_ans2=false;
         updateUserAnswers("q8",answer);
         break;
       case 2:
         q8_ans1=false;
         q8_ans2=true;
         updateUserAnswers("q8",answer);
         break;
     }
     update();
   }


  updateUserAnswers(String key,String value)
  {
    userSelectedAnswers[key]=value;
    update();
  }


   resetAllQuizValues()
   {

     q1_ans1=false;
     q1_ans2=false;
     q1_ans3=false;
     q1_ans4=false;


     q2_ans1=false;
     q2_ans2=false;



     q3_ans1=false;
     q3_ans2=false;
     q3_ans3=false;
     q3_ans4=false;



     q4_ans1=false;
     q4_ans2=false;
     q4_ans3=false;
     q4_ans4=false;

     q5_ans1=false;
     q5_ans2=false;

     q6_ans1=false;
     q6_ans2=false;

     q7_ans1=false;
     q7_ans2=false;

     q8_ans1=false;
     q8_ans2=false;


     userSelectedAnswers["q1"]="";
     userSelectedAnswers["q2"]="";
     userSelectedAnswers["q3"]="";
     userSelectedAnswers["q4"]="";
     userSelectedAnswers["q5"]="";
     userSelectedAnswers["q6"]="";
     userSelectedAnswers["q7"]="";
     userSelectedAnswers["q8"]="";
     update();
   }


}