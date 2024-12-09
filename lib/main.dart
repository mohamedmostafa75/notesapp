import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/add%20notecubits/addnotes_cubits_cubit.dart';
import 'package:notes_app/models/notesapp_model.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/widgets/notesviewbody.dart';
import 'package:notes_app/widgets/primarykey.dart';

void main() async {
  await Hive.initFlutter();

Bloc.observer = SimpleBlocObserver();

  await Hive.openBox(kBoxname);
  Hive.registerAdapter(NotesappModelAdapter());

  runApp(const notesapp());
}

class notesapp extends StatelessWidget {
  const notesapp({super.key});

  @override
  Widget build(BuildContext context) {
  
        return MultiBlocProvider(
          providers: [BlocProvider(create: (context)=>AddnotesCubit())],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
            home: const Notesviewbody(),
          ),
        );
      
  }
}


