import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:fo_fe/features/organizer/items/task/data/datasources/task_sync.dart';
import 'package:fo_fe/features/organizer/items/task/task_lib.dart';
import 'package:mockito/mockito.dart';

import '../../../../../../helpers/fixtures/elements/entities_models.dart';
import '../../../../../../helpers/fixtures/elements/fixture_reader_element.dart';
import '../../../../../../helpers/test_helper.mocks.dart';

void main() {
  late MockTaskLocalDataSource mockTaskLocalDataSource;
  late MockTaskRemoteDataSource mockTaskRemoteDataSource;
  late TaskSyncImpl syncTaskImpl;

  setUp(() {
    mockTaskLocalDataSource = MockTaskLocalDataSource();
    mockTaskRemoteDataSource = MockTaskRemoteDataSource();
    syncTaskImpl = TaskSyncImpl(
      taskLocalDataSource: mockTaskLocalDataSource,
      taskRemoteDataSource: mockTaskRemoteDataSource,
    );
  });

  // todo
  // should return the local task if the checksum and lastUpdate are the same like on local
  // should return the remote task if the checksum or lastUpdate are no the same like on local
  // should throw exception when the response is not Json is not correct less fields
  // should throw exception when we have a server error

  group('TaskSyncImpl', () {
    const tId = 1;
    final tTaskModelOnline = getTaskModelTestOnline();
    final tTaskModelOffline = getTaskModelTestOffline();

    // Mock behavior

    test('should returns local task when checksums are the same', () async {
      // Arrange
      final Map<String, dynamic> tJsonReceived =
          json.decode(fixture('task_no_update.json'));

      when(mockTaskLocalDataSource.getTaskById(any))
          .thenAnswer((_) => Future.value(getTaskModelTestOffline()));

      when(mockTaskRemoteDataSource.getUpdatedTaskIfDifferent(any))
          .thenAnswer((_) => Future.value(tJsonReceived));

      final expected = tTaskModelOffline;

      // Act
      final result = await syncTaskImpl.syncTaskWithId(tId);

      // Assert
      verify(mockTaskLocalDataSource.getTaskById(tId));
      verify(mockTaskRemoteDataSource.getUpdatedTaskIfDifferent(any));
      expect(result, expected);
    });
    test('should returns updated task when checksums are different', () async {
      // Arrange

      final Map<String, dynamic> tJsonReceived =
          json.decode(fixture('task_online.json'));

      when(mockTaskLocalDataSource.getTaskById(any))
          .thenAnswer((_) => Future.value(getTaskModelTestOffline()));

      when(mockTaskRemoteDataSource.getUpdatedTaskIfDifferent(any))
          .thenAnswer((_) => Future.value(tJsonReceived));

      final tSendJson = getTaskModelTestOffline().sendJsonToCheckIfIsUpdated();
      final tReceivedTask = TaskModel.fromJson(tJsonReceived);

      final expected = tTaskModelOnline;

      // Act
      final result = await syncTaskImpl.syncTaskWithId(tId);

      // Assert
      verify(mockTaskLocalDataSource.getTaskById(tId));
      verify(mockTaskRemoteDataSource.getUpdatedTaskIfDifferent(tSendJson));
      verify(mockTaskLocalDataSource.postTask(tReceivedTask));
      expect(result, expected);
    });

    test('should update the local task when checksums are different', () async {
      // Arrange

      final Map<String, dynamic> tJsonReceived =
          json.decode(fixture('task_online.json'));

      when(mockTaskLocalDataSource.getTaskById(any))
          .thenAnswer((_) => Future.value(getTaskModelTestOffline()));

      when(mockTaskRemoteDataSource.getUpdatedTaskIfDifferent(any))
          .thenAnswer((_) => Future.value(tJsonReceived));

      final tSendJson = getTaskModelTestOffline().sendJsonToCheckIfIsUpdated();
      final tReceivedTask = TaskModel.fromJson(tJsonReceived);

      // Act
      await syncTaskImpl.syncTaskWithId(tId);

      // Assert
      verify(mockTaskLocalDataSource.getTaskById(tId));
      verify(mockTaskRemoteDataSource.getUpdatedTaskIfDifferent(tSendJson));
      verify(mockTaskLocalDataSource.postTask(tReceivedTask));
      verifyNever(mockTaskLocalDataSource.postTask(getTaskModelTestOffline()));
    });
  });
}
