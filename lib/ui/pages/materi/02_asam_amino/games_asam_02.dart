import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_pembelajaran/cubit/jawaban_cubit.dart';
import 'package:media_pembelajaran/cubit/score_cubit.dart';
import 'package:media_pembelajaran/models/item_model.dart';
import 'package:media_pembelajaran/shared/theme.dart';
import 'package:media_pembelajaran/ui/pages/materi/02_asam_amino/result_page_asam_amino.dart';
import 'package:media_pembelajaran/ui/widgets/widget_drag_asam_amino2.dart';
import 'package:media_pembelajaran/ui/widgets/widget_nomor_halaman.dart';
import 'package:media_pembelajaran/ui/widgets/widget_title_subtitle.dart';

class GamesAsamAmino2 extends StatefulWidget {
  const GamesAsamAmino2({super.key});

  @override
  State<GamesAsamAmino2> createState() => _GamesAsamAmino2State();
}

class _GamesAsamAmino2State extends State<GamesAsamAmino2> {
  // List<ItemModel> itemsJawaban = [
  //   ItemModel(id: 1, name: 'Protein Primer', value: 'proteinPrimer1'),
  //   ItemModel(id: 3, name: 'Protein Sekunder', value: 'proteinSekunde1'),
  //   ItemModel(id: 4, name: 'Protein Sekunder', value: 'proteinSekunder2'),
  //   ItemModel(id: 6, name: 'Protein Tersier', value: 'proteinTersier2'),
  //   ItemModel(id: 8, name: 'Protein Kuartener', value: 'proteinKuartener2'),
  // ];

  TextEditingController playerNameController = TextEditingController();

  String jawabanNo1 = 'Protein Primer';
  String jawabanNo2 = 'Protein Sekunder';
  String jawabanNo3 = 'Protein Sekunder';
  String jawabanNo4 = 'Protein Tersier';
  String jawabanNo5 = 'Protein Kuartener';

  String dragTarget1 = '';
  String dragTarget2 = '';
  String dragTarget3 = '';
  String dragTarget4 = '';
  String dragTarget5 = '';

  int score = 0;

  clearTarget() {
    dragTarget1 = '';
    dragTarget2 = '';
    dragTarget3 = '';
    dragTarget4 = '';
    dragTarget5 = '';
  }

  @override
  void initState() {
    super.initState();
    clearTarget();
    context.read<JawabanCubit>().fetchKunciJawabanAsamAmino2();
    context.read<ScoreCubit>().resetScore();
  }

  @override
  Widget build(BuildContext context) {
    Widget kunciJawaban(List<ItemModel> items) {
      return Wrap(
        spacing: 6,
        runSpacing: 10,
        runAlignment: WrapAlignment.center,
        children: items.map((e) {
          return WidgetDragAsamAmino2(e);
        }).toList(),
      );
    }

    return Scaffold(
      backgroundColor: kBgPrimaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBar(
          title: Text(
            'Games',
            style: blackTextStyle.copyWith(
              fontSize: 28,
              letterSpacing: 1.2,
              fontFamily: caveatBrush,
            ),
          ),
          // centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                context.read<JawabanCubit>().recallData();
                context.read<ScoreCubit>().resetScore();
                setState(() {
                  clearTarget();
                });
              },
              icon: Icon(Icons.refresh),
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WTitleSubtitle(
                      title: '2. Identifikasi Struktur di bawah ini ',
                      margin: const EdgeInsets.only(bottom: 12),
                    ),
                    BlocBuilder<JawabanCubit, JawabanState>(
                      builder: (context, state) {
                        return Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 16),
                              alignment: Alignment.center,
                              child: kunciJawaban(state.items),
                            ),
                            Container(
                              height: 344,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                // color: kRedColor1,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/games_images/gambar_asam_amino_1.png',
                                  ),
                                ),
                              ),
                              child: BlocBuilder<ScoreCubit, int>(
                                builder: (context, state) {
                                  return Stack(
                                    children: [
                                      Positioned(
                                        left: 150,
                                        top: 5,
                                        child: DragTarget<ItemModel>(
                                          builder: (context, acceptedItem,
                                              rejectedItem) {
                                            return Container(
                                              height: 28,
                                              width: 120,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                // color: kWhiteColor,
                                                border: Border.all(
                                                  color: kBlackColor2,
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                '${dragTarget1}',
                                                style: blackTextStyle.copyWith(
                                                  fontFamily: caveatBrush,
                                                  fontSize: 16,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            );
                                          },
                                          onAcceptWithDetails: (received) {
                                            if (jawabanNo1 ==
                                                received.data.name) {
                                              context
                                                  .read<ScoreCubit>()
                                                  .incrementeScore();
                                            } else {
                                              context
                                                  .read<ScoreCubit>()
                                                  .decrementScore();
                                            }

                                            context
                                                .read<JawabanCubit>()
                                                .removeitem(received.data.id);
                                            // final skor = context
                                            //     .read<ScoreCubit>()
                                            //     .totalScore();
                                            // print('Total Skor ==> $skor');
                                            setState(() {
                                              dragTarget1 = received.data.name;
                                            });
                                          },
                                          onWillAcceptWithDetails: (received) {
                                            setState(() {
                                              received.data.isAccepted = true;
                                            });
                                            return true;
                                          },
                                          onLeave: (received) {
                                            setState(() {
                                              received?.isAccepted = false;
                                            });
                                          },
                                        ),
                                      ),
                                      Positioned(
                                        // left: 150,
                                        right: 20,
                                        top: 78,
                                        child: DragTarget<ItemModel>(
                                          builder: (context, acceptedItem,
                                              rejectedItem) {
                                            return Container(
                                              height: 28,
                                              width: 120,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                // color: kWhiteColor,
                                                border: Border.all(
                                                  color: kBlackColor2,
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                '${dragTarget2}',
                                                style: blackTextStyle.copyWith(
                                                  fontFamily: caveatBrush,
                                                  fontSize: 16,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            );
                                          },
                                          onAcceptWithDetails: (received) {
                                            if (jawabanNo2 ==
                                                received.data.name) {
                                              context
                                                  .read<ScoreCubit>()
                                                  .incrementeScore();
                                            } else {
                                              context
                                                  .read<ScoreCubit>()
                                                  .decrementScore();
                                            }

                                            context
                                                .read<JawabanCubit>()
                                                .removeitem(received.data.id);
                                            // final skor = context
                                            //     .read<ScoreCubit>()
                                            //     .totalScore();
                                            // print('Total Skor ==> $skor');
                                            setState(() {
                                              dragTarget2 = received.data.name;
                                            });
                                          },
                                        ),
                                      ),
                                      Positioned(
                                        left: 10,
                                        // right: 28,
                                        top: 150,
                                        child: DragTarget<ItemModel>(
                                          builder: (context, acceptedItem,
                                              rejectedItem) {
                                            return Container(
                                              height: 28,
                                              width: 120,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                // color: kWhiteColor,
                                                border: Border.all(
                                                  color: kBlackColor2,
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                '$dragTarget3',
                                                style: blackTextStyle.copyWith(
                                                  fontFamily: caveatBrush,
                                                  fontSize: 16,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            );
                                          },
                                          onAcceptWithDetails: (received) {
                                            if (jawabanNo3 ==
                                                received.data.name) {
                                              context
                                                  .read<ScoreCubit>()
                                                  .incrementeScore();
                                            } else {
                                              context
                                                  .read<ScoreCubit>()
                                                  .decrementScore();
                                            }

                                            context
                                                .read<JawabanCubit>()
                                                .removeitem(received.data.id);
                                            // final skor = context
                                            //     .read<ScoreCubit>()
                                            //     .totalScore();
                                            // print('Total Skor ==> $skor');
                                            setState(() {
                                              dragTarget3 = received.data.name;
                                            });
                                          },
                                        ),
                                      ),
                                      Positioned(
                                        left: 4,
                                        // right: 28,
                                        top: 230,
                                        child: DragTarget<ItemModel>(
                                          builder: (context, acceptedItem,
                                              rejectedItem) {
                                            return Container(
                                              height: 28,
                                              width: 115,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                // color: kWhiteColor,
                                                border: Border.all(
                                                  color: kBlackColor2,
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                '$dragTarget4',
                                                style: blackTextStyle.copyWith(
                                                  fontFamily: caveatBrush,
                                                  fontSize: 16,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            );
                                          },
                                          onAcceptWithDetails: (received) {
                                            if (jawabanNo4 ==
                                                received.data.name) {
                                              context
                                                  .read<ScoreCubit>()
                                                  .incrementeScore();
                                            } else {
                                              context
                                                  .read<ScoreCubit>()
                                                  .decrementScore();
                                            }

                                            context
                                                .read<JawabanCubit>()
                                                .removeitem(received.data.id);
                                            // final skor = context
                                            //     .read<ScoreCubit>()
                                            //     .totalScore();
                                            // print('Total Skor ==> $skor');
                                            setState(() {
                                              dragTarget4 = received.data.name;
                                            });
                                          },
                                        ),
                                      ),
                                      Positioned(
                                        right: 110,
                                        bottom: 18,
                                        child: DragTarget<ItemModel>(
                                          builder: (context, acceptedItem,
                                              rejectedItem) {
                                            return Container(
                                              height: 28,
                                              width: 120,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                // color: kWhiteColor,
                                                border: Border.all(
                                                  color: kBlackColor2,
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                '$dragTarget5',
                                                style: blackTextStyle.copyWith(
                                                  fontFamily: caveatBrush,
                                                  fontSize: 16,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            );
                                          },
                                          onAcceptWithDetails: (received) {
                                            if (jawabanNo5 ==
                                                received.data.name) {
                                              context
                                                  .read<ScoreCubit>()
                                                  .incrementeScore();
                                            } else {
                                              context
                                                  .read<ScoreCubit>()
                                                  .decrementScore();
                                            }

                                            context
                                                .read<JawabanCubit>()
                                                .removeitem(received.data.id);
                                            // final skor = context
                                            //     .read<ScoreCubit>()
                                            //     .totalScore();
                                            // print('Total Skor ==> $skor');
                                            setState(() {
                                              dragTarget5 = received.data.name;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 32),
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(
                                    'Nama Anda!',
                                    style: blackTextStyle.copyWith(
                                        // fontFamily: caveatBrush,
                                        ),
                                  ),
                                  content: TextField(
                                    controller: playerNameController,
                                    decoration: InputDecoration(
                                      hintText: 'Input nama anda!',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return ResultGameAsamAminoPage(
                                                playerName:
                                                    playerNameController.text,
                                                skor1: 80,
                                                skor2: context
                                                    .read<ScoreCubit>()
                                                    .totalScore(),
                                              );
                                            },
                                          ),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                        backgroundColor: kBlueColor1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: Text(
                                        'SUBMIT',
                                        style: blackTextStyle.copyWith(
                                          fontWeight: medium,
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              });
                        },
                        style: TextButton.styleFrom(
                          elevation: 6,
                          backgroundColor: kBlueColor1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Container(
                          width: 80,
                          child: Text(
                            'SELESAI',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              // letterSpacing: 1,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            WNomorHalaman(nomorHalaman: '24'),
          ],
        ),
      ),
    );
  }
}
