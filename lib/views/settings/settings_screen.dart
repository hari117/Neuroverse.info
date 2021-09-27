import 'package:neuroverse/helpers/imports_and_exports.dart';

class SettingsScreen extends GetView<SettingsScreenController>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<SettingsScreenController>(
        init: SettingsScreenController(),
        builder: (controller){
          return Scaffold(
           appBar: AppBar() ,
          body: Column(
            children: [
               SizedBox(height: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    height: 200,
                    width: 200,
                    child: Image(
                      image: NetworkImage(controller.userData["photoUrl"]),
                    ),
                  ),
                  Text(controller.userData["displayName"]),
                  Text(controller.userData["email"]),

                  InkWell(
                    onTap: (){

                      controller.openWebsite();
                    },
                    child: Container(
                      child: Text("Url lancher"),
                    ),
                  ),

                  InkWell(
                    onTap: (){

                      controller.openWebsite();
                    },
                    child: Container(
                      child: Text("logout"),
                    ),
                  ),




                ],
              )
            ],
          )
          );
    });
  }

}