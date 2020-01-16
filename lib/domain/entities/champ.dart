import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

// Champion Entitie (Final and usable)
class Champion extends Equatable {
  final String name;
  final String title;
  final String description;

  Champion({
    @required this.name,
    @required this.title,
    @required this.description
  });

  @override
  List<Object> get props => [name, title, description];
}