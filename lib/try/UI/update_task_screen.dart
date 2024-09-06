import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fo_fe/features/organizer/items/organizer_item/config/organizer_item_export.dart';
import 'package:fo_fe/features/organizer/items/task/config/task_exports.dart';

class UpdateTaskScreen extends StatefulWidget {
  const UpdateTaskScreen({super.key});

  @override
  _UpdateTaskScreenState createState() => _UpdateTaskScreenState();
}

class _UpdateTaskScreenState extends State<UpdateTaskScreen> {
  final _formKey = GlobalKey<FormState>();
  final _subjectController = TextEditingController();
  final _createdDateController = TextEditingController();
  final _creatorIdController = TextEditingController();
  final _remoteIdController = TextEditingController();
  final _lastUpdateController = TextEditingController();
  final _lastViewDateController = TextEditingController();
  final _remoteViewsController = TextEditingController();
  final _viewsController = TextEditingController();
  final _checksumController = TextEditingController();
  final _startDateController = TextEditingController();
  final _endDateController = TextEditingController();
  final _workingTimeController = TextEditingController();
  final _estimatedTimeController = TextEditingController();
  final _estimatedLeftTimeController = TextEditingController();
  final _workingProgressController = TextEditingController();
  final _taskStatusController = TextEditingController();

  Future<void> _selectDateTime(
      BuildContext context, TextEditingController controller) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        final DateTime pickedDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        setState(() {
          controller.text =
              pickedDateTime.toIso8601String(); // Use a standardized format
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _subjectController,
                decoration: const InputDecoration(labelText: 'Subject'),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter a subject';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _createdDateController,
                decoration: const InputDecoration(labelText: 'Created Date'),
                readOnly: true,
                onTap: () => _selectDateTime(context, _createdDateController),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter a created date';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _creatorIdController,
                decoration: const InputDecoration(labelText: 'Creator ID'),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter a creator ID';
                  }
                  return null;
                },
              ),
              // Optional fields
              TextFormField(
                controller: _remoteIdController,
                decoration: const InputDecoration(labelText: 'Remote ID'),
              ),
              TextFormField(
                controller: _lastUpdateController,
                decoration: const InputDecoration(labelText: 'Last Update'),
                readOnly: true,
                onTap: () => _selectDateTime(context, _lastUpdateController),
              ),
              TextFormField(
                controller: _lastViewDateController,
                decoration: const InputDecoration(labelText: 'Last View Date'),
                readOnly: true,
                onTap: () => _selectDateTime(context, _lastViewDateController),
              ),
              TextFormField(
                controller: _remoteViewsController,
                decoration: const InputDecoration(labelText: 'Remote Views'),
              ),
              TextFormField(
                controller: _viewsController,
                decoration: const InputDecoration(labelText: 'Views'),
              ),
              TextFormField(
                controller: _checksumController,
                decoration: const InputDecoration(labelText: 'Checksum'),
              ),
              TextFormField(
                controller: _startDateController,
                decoration: const InputDecoration(labelText: 'Start Date'),
                readOnly: true,
                onTap: () => _selectDateTime(context, _startDateController),
              ),
              TextFormField(
                controller: _endDateController,
                decoration: const InputDecoration(labelText: 'End Date'),
                readOnly: true,
                onTap: () => _selectDateTime(context, _endDateController),
              ),
              TextFormField(
                controller: _workingTimeController,
                decoration: const InputDecoration(labelText: 'Working Time'),
              ),
              TextFormField(
                controller: _estimatedTimeController,
                decoration: const InputDecoration(labelText: 'Estimated Time'),
              ),
              TextFormField(
                controller: _estimatedLeftTimeController,
                decoration: const InputDecoration(labelText: 'Estimated Left Time'),
              ),
              TextFormField(
                controller: _workingProgressController,
                decoration: const InputDecoration(labelText: 'Working Progress'),
              ),
              TextFormField(
                controller: _taskStatusController,
                decoration: const InputDecoration(labelText: 'Task Status'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    final task = TaskEntity(
                      id: 0,
                      // ID will be auto-generated
                      subject: _subjectController.text,
                      createdDate: DateTime.parse(_createdDateController.text),
                      creatorId: int.parse(_creatorIdController.text),
                      remoteId: _remoteIdController.text.isNotEmpty
                          ? int.parse(_remoteIdController.text)
                          : null,
                      lastUpdate: _lastUpdateController.text.isNotEmpty
                          ? DateTime.parse(_lastUpdateController.text)
                          : null,
                      lastViewDate: _lastViewDateController.text.isNotEmpty
                          ? DateTime.parse(_lastViewDateController.text)
                          : null,
                      remoteViews: _remoteViewsController.text.isNotEmpty
                          ? int.parse(_remoteViewsController.text)
                          : null,
                      views: _viewsController.text.isNotEmpty
                          ? int.parse(_viewsController.text)
                          : null,
                      checksum: _checksumController.text.isNotEmpty
                          ? _checksumController.text
                          : null,
                      startDate: _startDateController.text.isNotEmpty
                          ? DateTime.parse(_startDateController.text)
                          : null,
                      endDate: _endDateController.text.isNotEmpty
                          ? DateTime.parse(_endDateController.text)
                          : null,
                      workingTime: _workingTimeController.text.isNotEmpty
                          ? double.parse(_workingTimeController.text)
                          : null,
                      estimatedTime: _estimatedTimeController.text.isNotEmpty
                          ? double.parse(_estimatedTimeController.text)
                          : null,
                      estimatedLeftTime:
                          _estimatedLeftTimeController.text.isNotEmpty
                              ? double.parse(_estimatedLeftTimeController.text)
                              : null,
                      workingProgress:
                          _workingProgressController.text.isNotEmpty
                              ? double.parse(_workingProgressController.text)
                              : null,
                      taskStatus: _taskStatusController.text.isNotEmpty
                          ? TaskStatus.values.firstWhere((e) =>
                              e.toString() ==
                              'TaskStatus.${_taskStatusController.text}')
                          : null,
                    );
                    BlocProvider.of<TaskBlocTask>(context)
                        .add(TaskAddBlocEvent(task));
                    Navigator.pop(context);
                  }
                },
                child: const Text('Add Task'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _subjectController.dispose();
    _createdDateController.dispose();
    _creatorIdController.dispose();
    _remoteIdController.dispose();
    _lastUpdateController.dispose();
    _lastViewDateController.dispose();
    _remoteViewsController.dispose();
    _viewsController.dispose();
    _checksumController.dispose();
    _startDateController.dispose();
    _endDateController.dispose();
    _workingTimeController.dispose();
    _estimatedTimeController.dispose();
    _estimatedLeftTimeController.dispose();
    _workingProgressController.dispose();
    _taskStatusController.dispose();
    super.dispose();
  }
}
