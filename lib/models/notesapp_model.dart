import 'package:hive/hive.dart';

part 'notesapp_model.g.dart';
@HiveType(typeId: 0)
class NotesappModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NotesappModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});
}
