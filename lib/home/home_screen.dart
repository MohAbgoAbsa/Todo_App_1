import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app_1/add_task/addTask.dart';
import 'package:todo_app_1/app_colors.dart';
import 'package:todo_app_1/app_setting/appsetting.dart';
import 'package:todo_app_1/task_list/tasklist.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.apptitle,
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        toolbarHeight: 100,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        height: MediaQuery.of(context).size.height * 0.098,
        child: BottomNavigationBar(
          onTap: (index) {
            selectindex = index;
            setState(() {});
          },
          currentIndex: selectindex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: AppLocalizations.of(context)!.tasklist),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.setting),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ShowModalBottonSheet();
        },
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
            side: BorderSide(width: 5, color: Colors.white)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: selectindex == 0 ? TaskList() : AppSetting(),
    );
  }

  void ShowModalBottonSheet() {
    showModalBottomSheet(context: context, builder: (context) => AddNewTask());
  }
}
