part of 'addnotes_cubits_cubit.dart';

@immutable
abstract class addNotesState {}

final class AddnotesCubitsState extends addNotesState {}

final class AddnotesInitial extends addNotesState {}

final class AddnotesLoading extends addNotesState {}

final class Addnotessuccess extends addNotesState {}

final class Addnotesfaliure extends addNotesState {
  final String errmessage;

  Addnotesfaliure( this.errmessage);
}
