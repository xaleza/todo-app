import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Todo extends Equatable {
  final String text;

  Todo({@required this.text});

  @override
  List<Object> get props => [text];
}
