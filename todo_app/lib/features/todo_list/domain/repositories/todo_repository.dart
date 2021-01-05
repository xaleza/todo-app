import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/failures.dart';
import 'package:todo_app/core/usecases/usecase.dart';
import 'package:todo_app/features/todo_list/domain/entities/todo.dart';

abstract class TodoRepository {
  Future<Either<Failure, bool>> createTodo(String text);
}
