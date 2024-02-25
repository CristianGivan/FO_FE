import 'package:fo_fe/features/organizer/elements/task/data/datasources/task_local_data_source.dart';
import 'package:fo_fe/features/organizer/elements/task/data/datasources/task_remote_data_source.dart';
import 'package:fo_fe/features/organizer/elements/task/task_lib.dart';

abstract class TaskSync {
  Future<TaskModel> syncTaskWithId(int id);
}

class TaskSyncImpl implements TaskSync {
  TaskLocalDataSource taskLocalDataSource;
  TaskRemoteDataSource taskRemoteDataSource;

  TaskSyncImpl(
    this.taskLocalDataSource,
    this.taskRemoteDataSource,
  );

  @override
  Future<TaskModel> syncTaskWithId(int id) async {
    TaskModel taskModel;

    taskModel = await taskLocalDataSource.getTaskById(id);
    Map<String, dynamic> jsonSend = taskModel.sendJsonToCheckIfIsUpdated();
    Map<String, dynamic> jsonResponse =
        await taskRemoteDataSource.getUpdatedTaskAsJsonIfDifferent(jsonSend);

    if (jsonSend["checksum"] != jsonResponse["checksum"]) {
      taskModel = TaskModel.fromJson(jsonResponse);
    }

    return taskModel;
  }
}
