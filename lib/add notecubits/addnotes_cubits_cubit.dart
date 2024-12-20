import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/notesapp_model.dart';
import 'package:notes_app/widgets/primarykey.dart';

part 'addnotes_cubits_state.dart';

class AddnotesCubit extends Cubit<addNotesState> {
  AddnotesCubit() : super(AddnotesInitial());
  addnote(NotesappModel note)async{
    emit(AddnotesLoading());
    try {
  var notebox = Hive.box<NotesappModel>(kBoxname);
  
 await notebox.add(note);
 emit(Addnotessuccess());
}  catch (e) {
   emit(Addnotesfaliure(e.toString()));
}

  }
}
