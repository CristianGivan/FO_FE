import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:fo_fe/features/organizer/elements/task/data/datasources/task_remote_data_source.dart';
import 'package:fo_fe/features/organizer/elements/task/task_lib.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../../../fixtures/elements/fixture_reader_element.dart';
import 'task_remote_data_source_test.mocks.dart';

@GenerateNiceMocks([MockSpec<http.Client>()])
void main() {
  late TaskRemoteDataSourceImpl taskRemoteDataSource;
  late MockClient mockHttpClient;
  final headers = {
    'accept': '*/*',
    'Authorization':
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJVc2VyMSIsImV4cCI6MTcxNzk3MTQ1MH0.pcRDh4-wVfvbN6TWIkU0M8c7BvSW6Lqxws8rOn1g-FuLpUl6E0yCx9jvuGSHODYrv6lbqY105FmJp4bA422DFw',
  };
  const serverUrl = 'https://fo.givanc.eu/';

  setUp(() {
    mockHttpClient = MockClient();
    taskRemoteDataSource = TaskRemoteDataSourceImpl(mockHttpClient);
  });

  group('GetTaskById', () {
    int tId = 1;
    TaskModel tTaskModel =
        TaskModel.fromJson(json.decode(fixture('task_online.json')));

    final url = Uri.parse('${serverUrl}task/getTaskById?taskId=$tId');

    test('should perform a GET request on URL with headers', () async {
      // Arrange

      when(mockHttpClient.get(any, headers: anyNamed('headers'))).thenAnswer(
          (_) async => http.Response(fixture('task_online.json'), 200));

      // Act
      taskRemoteDataSource.getTaskById(tId);

      // Assert
      verify(mockHttpClient.get(url, headers: headers));
    });

    test(
        'should return the correct test model when response code is 200(success)',
        () async {
      // Arrange
      when(mockHttpClient.get(any, headers: anyNamed('headers'))).thenAnswer(
          (_) async => http.Response(fixture('task_online.json'), 200));
      final expected = tTaskModel;

      // Act
      final result = await taskRemoteDataSource.getTaskById(tId);

      // Assert
      expect(result, equals(expected));
    });
  });
}