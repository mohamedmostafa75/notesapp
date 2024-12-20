import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/add%20notecubits/addnotes_cubits_cubit.dart';
import 'package:notes_app/models/notesapp_model.dart';
import 'package:notes_app/widgets/custombutton.dart';
import 'package:notes_app/widgets/customtextfield.dart';
import 'package:notes_app/widgets/primarykey.dart';

class addnotesform extends StatefulWidget {
  const addnotesform({
    super.key,
  });

  @override
  State<addnotesform> createState() => _addnotesformState();
}

class _addnotesformState extends State<addnotesform> {
  final GlobalKey<FormState> Formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: Formkey,
      child: Column(
        children: [
          Customtextfield(
            hinttext: "title",
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Customtextfield(
            hinttext: "content",
            maxline: 5,
            onSaved: (value) {
              subtitle = value;
            },
          ),
        const  SizedBox(
            height: 120,
          ),
          BlocBuilder<AddnotesCubit, addNotesState>(
            builder: (context, state) {
              return Custombutton(
                isloading: state is AddnotesLoading ? true : false,
                ontap: () {
                  if (Formkey.currentState!.validate()) {
                    var currentdatetime = DateTime.now();
                    var formattedcurrentdatetime = DateFormat.yMd().format(currentdatetime);

                    
                    Formkey.currentState!.save();
                    var notemodel = NotesappModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: formattedcurrentdatetime,
                        color: kPrimarycolor.value);
                    BlocProvider.of<AddnotesCubit>(context).addnote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}
