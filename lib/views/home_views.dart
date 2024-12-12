import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add%20notecubits/notes_cubit.dart';
import 'package:notes_app/widgets/Notesviewbottom.dart';
import 'package:notes_app/widgets/notesviewbody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const Notesviewbottom();
                });
          },
          child: const Icon(Icons.add),
        ),
        body: const Notesviewbody(),
      ),
    );
  }
}
