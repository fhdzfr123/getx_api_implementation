import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_implementation/Getx/Screens/Controller/detailcontroller.dart';

class GetDataScreen extends StatelessWidget {
  const GetDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GetDataController>();
    print(controller.age);
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
        leading: IconButton(
          onPressed: (){
              Get.back();
          },
        icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Obx((){
        return controller.isLoading.isTrue?
            Center(child: CircularProgressIndicator(),)
            :ListView.builder(
            itemCount: controller.posts!.length,
            itemBuilder: (context,ind){
              final data = controller.posts![ind];
              return Container(
                child: ListTile(
                  title: Text(data.title.toString()),
                  subtitle: Text(data.body.toString()),
                ),
              );
            }
        );
      })
      /*Obx((){
        return controller.posts!=null ? ListView.builder(
            itemCount: controller.posts!.length,
            itemBuilder: (context,ind){
              return Container(
                child: Text('data'),
              );
            }
        ):Center(child: Text('No Data Found'),);
      })*/
    );
  }
}
