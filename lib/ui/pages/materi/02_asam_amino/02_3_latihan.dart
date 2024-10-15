import 'package:flutter/material.dart';
import 'package:media_pembelajaran/shared/theme.dart';
import 'package:media_pembelajaran/ui/pages/materi/02_asam_amino/games_asam_02.dart';
import 'package:media_pembelajaran/ui/widgets/widget_nomor_halaman.dart';

class LatihanAsamAminoPage extends StatelessWidget {
  const LatihanAsamAminoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return GamesAsamAmino2();
                    },
                  ),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: kBlueColor1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Container(
                width: 100,
                child: Text(
                  'Mulai Kuis',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '23'),
        ],
      ),
    );
  }
}
