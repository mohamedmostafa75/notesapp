import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/notesapp_model.dart';
import 'package:notes_app/widgets/primarykey.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NotesappModel>?notes;
  fetchallnotes() {
    var notebox = Hive.box<NotesappModel>(kBoxname);
    notes = notebox.values.toList();
  }
}
