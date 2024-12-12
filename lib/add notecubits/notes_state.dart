part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class notesloading extends NotesState {}

class notessuccess extends NotesState {
  final List<NotesappModel> notes;

  notessuccess(this.notes);
}

class notesfaliure extends NotesState {
  final String errmessage;

  notesfaliure(this.errmessage);
}
