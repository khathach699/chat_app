import 'package:flutter/material.dart';

MyTabBar (TabController tabController, BuildContext context){
  return PreferredSize(preferredSize: Size.fromHeight(60), child: TabBar(
    controller: tabController,
    tabs: [
      Tab(text: "Chats",),
      Tab(text: "Groups",),
      Tab(text: "Calls",),
    ],
  ));
}