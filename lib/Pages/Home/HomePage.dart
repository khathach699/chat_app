import 'package:chat_app/Configs/Strings.dart';
import 'package:chat_app/Pages/Home/Widgets/TabBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Configs/Image.dart';
import 'Widgets/ChatList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.appName),
        leading: Image.asset(AssetImages.logoStone, width: 50, height: 50),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        bottom: MyTabBar(tabController, context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: TabBarView(
          controller: tabController,
          children: [
            ChatList(),
            ListView(children: [ListTile(title: Text("data5")),
              ListTile(title: Text("data1")),
              ListTile(title: Text("data2"))
            ]),
            ListView(children: [ListTile(title: Text("data6")),
              ListTile(title: Text("data1")),
              ListTile(title: Text("data2"))
            ]),
          ],
        ),
      ),
    );
  }
}
