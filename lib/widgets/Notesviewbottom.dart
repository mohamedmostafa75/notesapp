import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app/add%20notecubits/addnotes_cubits_cubit.dart';
import 'package:notes_app/widgets/addnotesform.dart';

class Notesviewbottom extends StatelessWidget {
  const Notesviewbottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddnotesCubit(),
      child: BlocConsumer<AddnotesCubit, NotesCubitsState>(
        listener: (context, state) {
          if (state is Addnotesfaliure) {
            print("failed${state.errmessage}");
          }
          if (state is Addnotessuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddnotesLoading ? true : false,
            child:  Padding(
              padding: EdgeInsets.only(right: 16, left: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
              child:const SingleChildScrollView(child: addnotesform()),
            ),
          );
        },
      ),
    );
  }
}
