import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_pembelajaran/cubit/boolean_cubit.dart';
import 'package:media_pembelajaran/shared/theme.dart';
import 'package:media_pembelajaran/ui/pages/daftar_materi_page.dart';
import 'package:media_pembelajaran/ui/pages/materi/01_karbohidrat/00_karbohidrat.dart';
import 'package:media_pembelajaran/ui/pages/materi/02_asam_amino/00_asam_amino_dan_protein.dart';
import 'package:media_pembelajaran/ui/pages/materi/03_asam_nukleat/00_asam_nukleat.dart';
import 'package:media_pembelajaran/ui/pages/materi/04_lipida/00_lipida.dart';
import 'package:media_pembelajaran/ui/pages/pendahuluan_page.dart';
import 'package:media_pembelajaran/ui/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BooleanCubit()),
      ],
      child: MaterialApp(
        title: 'App Media Pembelajaran',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kBgPrimaryColor,
          fontFamily: 'Roboto',
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => SplashPage(),
          '/pendahuluan': (context) => PendahuluanPage(),
          '/daftarMateri': (context) => DaftarMateriPage(),
          '/karbohidrat': (context) => KarbohidratPage(),
          '/asamAmino': (context) => AsamAminoPage(),
          '/asamNukleat': (context) => AsamNukleatPage(),
          '/lipida': (context) => LipidaPage(),
        },
      ),
    );
  }
}
