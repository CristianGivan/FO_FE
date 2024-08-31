import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fo_fe/features/organizer/items/task/config/task_exports.dart';
import 'package:fo_fe/features/organizer/items/task/presentation/pages/task_card_page.dart';
import 'package:fo_fe/features/organizer/items/task/presentation/pages/task_view_page.dart';
import 'package:fo_fe/features/organizer/items/task/presentation/screens/task_edit_screen.dart';

class TaskListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<TaskBlocTask>().add(TaskGetItemsAllBlocEvent());

    return BlocBuilder<TaskBlocTask, TaskBlocState>(
      builder: (context, state) {
        if (state is TaskLoadingBlocState) {
          return Center(child: CircularProgressIndicator());
        } else if (state is TaskLoadedBlocState) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.tasks.size(),
                  itemBuilder: (context, index) {
                    final task = state.tasks.getAt(index);
                    return TaskCardPage(
                      task: task,
                      onUpdateTask: (updatedTask) {
                        context
                            .read<TaskBlocTask>()
                            .add(TaskUpdateBlocEvent(updatedTask));
                      },
                      onViewTask: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TaskViewPage(task: task)),
                        );
                      },
                      onEditTask: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TaskEditScreen(task: task)),
                        );
                      },
                      onDeleteTask: (task) {
                        context
                            .read<TaskBlocTask>()
                            .add(TaskDeleteBlocEvent(task.id));
                      },
                    );
                  },
                ),
              ),
            ],
          );
        } else if (state is TaskErrorBlocState) {
          return Center(child: Text(state.message));
        } else {
          return Center(child: Text('No Tasks Available'));
        }
      },
    );
  }
}
