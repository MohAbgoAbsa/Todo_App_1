import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app_1/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddNewTask extends StatefulWidget {
  const AddNewTask({super.key});

  @override
  State<AddNewTask> createState() => _AddNewTaskState();
}

class _AddNewTaskState extends State<AddNewTask> {
  var selectDate = DateTime.now();
  String title = '';
  String description = '';
  var keyform = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4506896551724138,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.addnewtask,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Form(
            key: keyform,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.tasktitle,
                  ),
                  onChanged: (text) => title = text,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return AppLocalizations.of(context)!.titleerrotmasege;
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.taskdescription,
                  ),
                  maxLines: 4,
                  onChanged: (text) => description = text,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return AppLocalizations.of(context)!
                          .descriptionerrotmasege;
                    }
                    return null;
                  },
                ),
                Text(
                  AppLocalizations.of(context)!.selectdate,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                InkWell(
                    onTap: () {
                      showClander();
                    },
                    child: Text(
                      DateFormat('dd/MM/yyyy').format(selectDate),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                Column(
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.primaryColor,
                        ),
                        child: IconButton(
                            onPressed: () {
                              if (keyform.currentState?.validate() == true) {
                                Navigator.pop(context);
                              } else {}
                            },
                            icon: Icon(
                              Icons.check,
                              size: 50,
                              color: AppColors.whiteColor,
                            ))),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void showClander() async {
    var changedate = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 356)),
    );

    selectDate = changedate ?? selectDate;

    setState(() {});
  }
}
