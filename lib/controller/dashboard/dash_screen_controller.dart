

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project14/views/dashboard/history_screen.dart';
import 'package:project14/views/dashboard/home_screen.dart';
import 'package:project14/views/dashboard/profile_screen.dart';

class DashScreenController extends GetxController{
final key = GlobalKey<ScaffoldState>();
RxList<Widget> pages= RxList(
  [
    HomeScreen(),
    HistoryScreen(),
    ProfileScreen(),
  ]
);

RxInt currentIndex = RxInt(0);

void onItemTapped(int index){
  currentIndex.value = index;
}
} 