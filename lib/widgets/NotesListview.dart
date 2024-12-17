import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add%20notecubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/notesapp_model.dart';
import 'package:notes_app/widgets/NotesItems.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NotesappModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.all(8),
          child: ListView.builder(
            itemCount: notes.length,
            padding: const EdgeInsets.only(top: 8),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Notesitems(note: notes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
