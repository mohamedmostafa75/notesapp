import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add%20notecubits/cubit/notes_cubit.dart';

import 'package:notes_app/widgets/NotesListview.dart';
import 'package:notes_app/widgets/customppbar.dart';

class Notesviewbody extends StatefulWidget {
  const Notesviewbody({super.key});

  @override
  State<Notesviewbody> createState() => _NotesviewbodyState();
}

class _NotesviewbodyState extends State<Notesviewbody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchallnotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Customappbar(
          titlename: "Notes",
          icon: Icon(Icons.search),
        ),
        Expanded(child: NotesListview())
      ],
    );
  }
}
