import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      // params (context, [data_name], child)
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              title: taskData.tasks[index].name,
              checkboxCallback: (bool? checkboxState) {
                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
              },
            );
          },
        );
      },
    );
  }
}
