import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'addnotes_cubits_state.dart';

class NotesCubitsCubit extends Cubit<NotesCubitsState> {
  NotesCubitsCubit() : super(NotesCubitsInitial());
}
