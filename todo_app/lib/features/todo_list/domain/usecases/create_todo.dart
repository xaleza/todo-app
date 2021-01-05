import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/error/failures.dart';
import 'package:todo_app/core/usecases/usecase.dart';
import 'package:todo_app/features/todo_list/domain/entities/todo.dart';
import 'package:todo_app/features/todo_list/domain/repositories/todo_repository.dart';

class CreateTodo implements UseCase<bool, Params> {
  final TodoRepository repository;

  CreateTodo(this.repository);

  @override
  Future<Either<Failure, bool>> call(Params params) {
    return repository.createTodo(params.text);
  }
}

class Params extends Equatable {
  final String text;

  Params({@required this.text});

  @override
  List<Object> get props => [text];
}
