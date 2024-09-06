import 'package:flutter/material.dart';
import 'package:fo_fe/features/organizer/items/task/presentation/pages/filter_dialog.dart';
import 'package:fo_fe/features/organizer/items/task/presentation/pages/sort_dialog.dart';
import 'package:go_router/go_router.dart';


class TaskManagementActionsPage extends StatelessWidget {
  const TaskManagementActionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => context.push('/task/task_add'),
              child: const Text('Add Task'),
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => showFilterDialog(context),
                  child: const Text('Filter Tasks'),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => showSortDialog(context),
                  child: const Text('Sort Tasks'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Enter task description',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
