import 'package:flutter/material.dart';
import 'package:media_pembelajaran/shared/theme.dart';
import 'package:media_pembelajaran/ui/pages/materi/01_karbohidrat/main_karbohidrat_page.dart';
import 'package:media_pembelajaran/ui/widgets/widget_button_next_back.dart';
import 'package:media_pembelajaran/ui/widgets/widget_icon.dart';
import 'package:media_pembelajaran/ui/widgets/widget_nomor_halaman.dart';
import 'package:media_pembelajaran/ui/widgets/widget_submateri.dart';

class KarbohidratPage extends StatelessWidget {
  const KarbohidratPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgPrimaryColor,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'A. KARBOHIDRAT',
                        style: blackTextStyle.copyWith(
                          color: kBlackColor2,
                          fontSize: 28,
                          letterSpacing: 1.2,
                          fontWeight: bold,
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WSubMateri(
                              title: '1. Pengertian Karbohidrat',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return MainKarbohidratPage(
                                          initialPage: 0);
                                    },
                                  ),
                                );
                              },
                            ),
                            WSubMateri(
                              title: '2. Struktur Karbohidrat',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return MainKarbohidratPage(
                                          initialPage: 1);
                                    },
                                  ),
                                );
                              },
                            ),
                            WSubMateri(
                              title: '3. Golongan Karbohidrat',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return MainKarbohidratPage(
                                          initialPage: 2);
                                    },
                                  ),
                                );
                              },
                            ),
                            WSubMateri(
                              title: '4. Fungsi Karbohidrat',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return MainKarbohidratPage(
                                          initialPage: 8);
                                    },
                                  ),
                                );
                              },
                            ),
                            WSubMateri(
                              title: '5. Identifikasi Karbohidrat',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return MainKarbohidratPage(
                                          initialPage: 9);
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              'Capaian Pembelajaran',
                              style: blackTextStyle.copyWith(
                                  color: kBlackColor2,
                                  fontSize: 26,
                                  fontWeight: bold,
                                  height: 1),
                            ),
                            SizedBox(height: 12),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 24),
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                              decoration: BoxDecoration(
                                  color: kBlueColor1,
                                  borderRadius:
                                      BorderRadius.circular(defaultRadius),
                                  boxShadow: [
                                    BoxShadow(
                                      color: kBlackColor.withOpacity(0.2),
                                      spreadRadius: 4,
                                      blurRadius: 18,
                                      offset: Offset(2.0, 4.0),
                                    )
                                  ]),
                              child: Column(
                                children: [
                                  Text(
                                    'Mampu menjelaskan struktur, golongan  dan fungsi karbohidrat',
                                    textAlign: TextAlign.center,
                                    style: blackTextStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: medium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 44, bottom: 32),
                        child: Stack(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar1.crop.png',
                              width: 250,
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: CImagetAsset(
                                imageName: 'assets/images/gambar2.crop.png',
                                width: 140,
                              ),
                            )
                          ],
                        ),
                      ),
                      WButtonNextOrBack(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icons.arrow_back_ios,
                        postitionCenter: true,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '4')
        ],
      ),
    );
  }
}
