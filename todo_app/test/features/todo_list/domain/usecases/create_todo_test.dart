import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_app/core/usecases/usecase.dart';
import 'package:todo_app/features/todo_list/domain/repositories/todo_repository.dart';
import 'package:todo_app/features/todo_list/domain/usecases/create_todo.dart';

class MockTodoRepository extends Mock implements TodoRepository {}

void main() {
  CreateTodo usecase;
  MockTodoRepository mockTodoRepository;

  setUp(() {
    mockTodoRepository = MockTodoRepository();
    usecase = CreateTodo(mockTodoRepository);
  });

  final tText = "Todo text";
  final tSuccess = true;

  test('should create a todo in the repository', () async {
    // arrange
    when(mockTodoRepository.createTodo(any))
        .thenAnswer((_) async => Right(tSuccess));
    // act
    final result = await usecase(Params(text: tText));
    // assert
    expect(result, Right(tSuccess));
    verify(mockTodoRepository.createTodo(tText));
    verifyNoMoreInteractions(mockTodoRepository);
  });
}
