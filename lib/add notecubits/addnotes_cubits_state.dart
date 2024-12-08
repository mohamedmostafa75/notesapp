part of 'addnotes_cubits_cubit.dart';

@immutable
sealed class NotesCubitsState {}

final class AddnotesCubitsState extends NotesCubitsState {}

final class AddnotesInitial extends NotesCubitsState {}

final class AddnotesLoading extends NotesCubitsState {}

final class Addnotessuccess extends NotesCubitsState {}

final class Addnotesfaliure extends NotesCubitsState {
  final String errmessage;

  Addnotesfaliure({required this.errmessage});
}
