import 'package:get/get.dart';
import 'package:getx_implementation/Getx/Screens/Controller/detailcontroller.dart';
import 'package:getx_implementation/Services/httpservices.dart';

class GetDataBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HTTPService());
    Get.put(GetDataController());
  }

}