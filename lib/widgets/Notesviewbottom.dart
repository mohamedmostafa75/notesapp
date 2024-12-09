import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/add%20notecubits/addnotes_cubits_cubit.dart';
import 'package:notes_app/widgets/addnotesform.dart';

class Notesviewbottom extends StatelessWidget {
  const Notesviewbottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddnotesCubit(),
      child: Padding(
        padding: EdgeInsets.all(16),
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
            return ModalProgressHUD(
                inAsyncCall: state is AddnotesLoading ? true : false,
                child: addnotesform());
          },
        ),
      ),
    );
  }
}
