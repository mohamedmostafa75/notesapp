import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'addnotes_cubits_state.dart';

class Addnotes extends Cubit<NotesCubitsState> {
  Addnotes() : super(AddnotesInitial());
}
