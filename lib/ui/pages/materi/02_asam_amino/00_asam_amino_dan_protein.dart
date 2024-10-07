import 'package:flutter/material.dart';
import 'package:media_pembelajaran/shared/theme.dart';
import 'package:media_pembelajaran/ui/pages/materi/02_asam_amino/main_asam_amino_page.dart';
import 'package:media_pembelajaran/ui/widgets/widget_button_next_back.dart';
import 'package:media_pembelajaran/ui/widgets/widget_icon.dart';
import 'package:media_pembelajaran/ui/widgets/widget_nomor_halaman.dart';
import 'package:media_pembelajaran/ui/widgets/widget_title_subtitle.dart';

class AsamAminoPage extends StatelessWidget {
  const AsamAminoPage({super.key});

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
                        'B. ASAM AMINO & PROTEIN',
                        style: blackTextStyle.copyWith(
                          color: kBlackColor2,
                          fontSize: 28,
                          letterSpacing: 1.2,
                          fontWeight: bold,
                          fontFamily: 'Caveat Brush',
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainAsamAminoPage(
                                      initialPage: 0,
                                    ),
                                  ),
                                );
                              },
                              child: WTitleSubtitle(
                                title: '1. Asam Amino',
                                height: 1.25,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MainAsamAminoPage(
                                            initialPage: 0,
                                          ),
                                        ),
                                      );
                                    },
                                    child: WTitleSubtitle(
                                      title: 'a. Struktur Asam Amino',
                                      height: 1.25,
                                      isTitle: false,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MainAsamAminoPage(
                                            initialPage: 1,
                                          ),
                                        ),
                                      );
                                    },
                                    child: WTitleSubtitle(
                                      title: 'b. Klasifikasi Asam Amino',
                                      height: 1.25,
                                      isTitle: false,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MainAsamAminoPage(
                                            initialPage: 3,
                                          ),
                                        ),
                                      );
                                    },
                                    child: WTitleSubtitle(
                                      title: 'c. Stereoisomer Asam Amino',
                                      height: 1.25,
                                      isTitle: false,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MainAsamAminoPage(
                                            initialPage: 3,
                                          ),
                                        ),
                                      );
                                    },
                                    child: WTitleSubtitle(
                                      title: 'd. Fungsi Asam Amino',
                                      height: 1.25,
                                      isTitle: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainAsamAminoPage(
                                      initialPage: 4,
                                    ),
                                  ),
                                );
                              },
                              child: WTitleSubtitle(
                                title: '2. Protein',
                                height: 1.25,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MainAsamAminoPage(
                                            initialPage: 4,
                                          ),
                                        ),
                                      );
                                    },
                                    child: WTitleSubtitle(
                                      title: 'a. Struktur Protein',
                                      isTitle: false,
                                      height: 1.25,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MainAsamAminoPage(
                                            initialPage: 5,
                                          ),
                                        ),
                                      );
                                    },
                                    child: WTitleSubtitle(
                                      title: 'b. Fungsi Protein',
                                      height: 1.25,
                                      isTitle: false,
                                    ),
                                  ),
                                  WTitleSubtitle(
                                    title: 'c. Denaturasi Protein',
                                    isTitle: false,
                                    height: 1.25,
                                  ),
                                ],
                              ),
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
                                vertical: 8,
                                horizontal: 12,
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
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1.',
                                        style: blackTextStyle.copyWith(
                                            fontFamily: 'Roboto',
                                            fontSize: 16,
                                            fontWeight: semiBold,
                                            height: 1.2),
                                      ),
                                      const SizedBox(width: 6),
                                      Flexible(
                                        child: Text(
                                          'Menjelaskan Struktur asam amino dan polipeptida',
                                          style: blackTextStyle.copyWith(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: semiBold,
                                              height: 1.2),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '2.',
                                        style: blackTextStyle.copyWith(
                                            fontFamily: 'Roboto',
                                            fontSize: 16,
                                            fontWeight: semiBold,
                                            height: 1.2),
                                      ),
                                      const SizedBox(width: 6),
                                      Flexible(
                                        child: Text(
                                          'Menjelaskan Struktur Protein dan Fungsinya',
                                          style: blackTextStyle.copyWith(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: semiBold,
                                              height: 1.2),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ],
                                  )
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
          WNomorHalaman(nomorHalaman: '15')
        ],
      ),
    );
  }
}
