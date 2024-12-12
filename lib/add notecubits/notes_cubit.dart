import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/notesapp_model.dart';
import 'package:notes_app/widgets/primarykey.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchallnote() {
    try {
      var notebox = Hive.box<NotesappModel>(kBoxname);
      List<NotesappModel> Note = notebox.values.toList();
      emit(notessuccess(Note));
    } catch (e) {
      emit(notesfaliure(e.toString()));
    }
  }
}
