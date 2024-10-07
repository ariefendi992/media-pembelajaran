import 'package:flutter/material.dart';
import 'package:media_pembelajaran/shared/theme.dart';
import 'package:media_pembelajaran/ui/widgets/widget_icon.dart';
import 'package:media_pembelajaran/ui/widgets/widget_judul_gambar.dart';
import 'package:media_pembelajaran/ui/widgets/widget_nomor_halaman.dart';
import 'package:media_pembelajaran/ui/widgets/widget_teks_paragraf.dart';
import 'package:media_pembelajaran/ui/widgets/widget_title_subtitle.dart';

class FungsiProteinPage extends StatelessWidget {
  const FungsiProteinPage({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WTitleSubtitle(
                    title: '4) Struktur Kuartener ',
                    isTitle: false,
                    isSubSubTitle: true,
                    margin: const EdgeInsets.only(top: 6, bottom: 12),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: WParagraf(
                          teks:
                              'Merupakan hasil interaksi dari beberapa molekul '
                              'protein tersier setiap unit molekul tersier disebut '
                              'dikenal dengan subunit dan keseluruhan rantai '
                              'polipeptida. Pembentukan struktur kuartener protein '
                              'menyebabkan bagian nonpolar protein tidak terpapar '
                              'pada lingkungan yang berair sehingga protein yang '
                              'memiliki bagian nonpolar yang panjang dapat larut '
                              'dalam air. Hemoglobin merupakan contoh protein yang '
                              'membentuk struktur kuartener dengan 4 subunit '
                              '(2 sub unit α dan 2 subunit β).',
                          textIndent: false,
                          textHeight: 1,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Column(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.17.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                            Center(
                              child: WGambarTitle(
                                text: 'Gambar 2.16. Struktur  Hemoglobin',
                                margin: const EdgeInsets.only(top: 2),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  WTitleSubtitle(
                    title: 'b. Fungsi Protein',
                    isTitle: false,
                    margin: const EdgeInsets.only(top: 16),
                    height: 1,
                  ),
                  WTitleSubtitle(
                    title: '1) Protein Sebagai Enzim ',
                    isSubSubTitle: true,
                    isTitle: false,
                    height: 1,
                    margin: const EdgeInsets.only(top: 6),
                  ),
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '21')
        ],
      ),
    );
  }
}
