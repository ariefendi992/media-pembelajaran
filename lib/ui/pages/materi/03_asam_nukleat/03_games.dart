import 'package:flutter/material.dart';
import 'package:media_pembelajaran/shared/theme.dart';
import 'package:media_pembelajaran/ui/widgets/widget_nomor_halaman.dart';
import 'package:media_pembelajaran/ui/widgets/widget_title_subtitle.dart';

class GamesAsamNukleat extends StatelessWidget {
  const GamesAsamNukleat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(bottom: 60),
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  Center(
                    child: WTitleSubtitle(
                      title: 'GAMES',
                      margin: const EdgeInsets.only(top: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '30')
        ],
      ),
    );
  }
}
