import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/notesapp_model.dart';
import 'package:notes_app/widgets/primarykey.dart';

part 'addnotes_cubits_state.dart';

class Addnotes extends Cubit<NotesCubitsState> {
  Addnotes() : super(AddnotesInitial());
  addnote(NotesappModel note){
    emit(AddnotesLoading());
    try {
  var notebox = Hive.box<NotesappModel>(kBoxname);
  emit(Addnotessuccess());
  notebox.add(note);
 
}  catch (e) {
   emit(Addnotesfaliure(errmessage: e.toString()));
}

  }
}
