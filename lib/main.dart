import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/AppRoutes.dart';
import '../view/ListUsers.dart';


void main(){
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: UserListPage(),
    initialRoute: AppRoutes.HOME,
    getPages: AppPages.routes,
  ));
}