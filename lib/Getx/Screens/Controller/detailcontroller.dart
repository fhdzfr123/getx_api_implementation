import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_implementation/Models/post.dart';
import 'package:getx_implementation/Services/httpservices.dart';

class GetDataController extends GetxController{
  RxList<Post>? posts;
  HTTPService? httpService;
  int age = 22;
  RxBool isLoading = false.obs;

  GetDataController(){
  httpService = Get.find<HTTPService>();
  getPosts();
  }
  showLoading(){
    isLoading.toggle();
  }

  hideLoading(){
    isLoading.toggle();
  }
  getPosts()async{
    showLoading();
    final apiPosts = await httpService!.getPosts();
    hideLoading();
    if(apiPosts!=null){
      posts = apiPosts.obs;
      print('done');
    }
  }

}