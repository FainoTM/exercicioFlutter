import 'package:get/get.dart';
import '../view/ListUsers.dart';

import '../form.dart';

class AppRoutes{
  static const HOME = '/home';
  static const LIST_USERS = '/list-users';
}

class AppPages{
  static final routes = [
    GetPage(name: AppRoutes.HOME, page: ()=> MyHomePage(title: 'title')),
    GetPage(name: AppRoutes.LIST_USERS, page: ()=> UserListPage()),
  ];
}