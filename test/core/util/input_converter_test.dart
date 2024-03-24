import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fo_fe/core/error/failures.dart';
import 'package:fo_fe/core/util/input_converter.dart';

void main() {
  late InputConverter inputConverter;
  setUp(() {
    inputConverter = InputConverter();
  });

  group("InputConverter", () {
    test("Should get integer from string positive string", () async {
      const string = "123";
      final convertedNumber = inputConverter.stringToUnasingInteger(string);
      expect(convertedNumber, const Right(123));
    });

    test('Should return Left(InvalidInputFailure) for non-numeric input', () {
      const input = 'abc';
      final expectedResult = Left(InvalidInputFailure());

      final result = inputConverter.stringToUnasingInteger(input);

      expect(result, equals(expectedResult));
    });

    test("Should throw a failure if the number is negative", () async {
      const string = "-123";
      var convertedNumber = inputConverter.stringToUnasingInteger(string);

      expect(convertedNumber, Left(InvalidInputFailure()));
    });
  });
}