import 'package:fo_fe/features/tasks/model/tag.dart';
import 'package:fo_fe/features/tasks/model/task.dart';
import 'package:fo_fe/features/tasks/model/tasks.dart';

abstract class Database {
  // Future<void>create();
  Future<void> connect();
  Future<void> disconnect();

  // Tasks
  Future<List<Tasks>> getAllTasks();
  int addTasks(Tasks tasks);
  bool deleteTasks(int id);

  //Task
  Future<void> saveTask(Task task);
  Future<List<Task>> getAllTask();
  Future<List<Task>> getTaskListByTasksId(int id);
  Future<Task> getTaskById(int taskId);
  // Future<void> changeTaskStatus(Task task);
  void addTaskWithTagSetToTasks(String taskText, Set<Tag> tagSet, Tasks tasks);
  int updateTask(Task task);
  void updateTaskFields(int i, String text, Set<Tag> currentTags, Tasks tasks);
  bool deleteTask(int id);

  //Tag

  Future<Set<Tag>> getAllTags();
  Set<Tag> getTagSetFromTask(Task task);
  Set<Tag> getTagSetFromTaskId(int id);
  int addTag(Tag tag);
}