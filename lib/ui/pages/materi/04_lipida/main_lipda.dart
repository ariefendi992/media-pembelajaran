import 'package:flutter/material.dart';
import 'package:media_pembelajaran/shared/theme.dart';

class MainLipaPage extends StatefulWidget {
  final int? initialPage;
  const MainLipaPage({
    super.key,
    this.initialPage = 0,
  });

  @override
  State<MainLipaPage> createState() => _MainLipaPageState();
}

class _MainLipaPageState extends State<MainLipaPage> {
  late PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.initialPage!);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgPrimaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          title: Text(
            'ASAM NUKLEAT',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                pageController.previousPage(
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut,
                );
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 16,
              ),
            ),
            IconButton(
              onPressed: () {
                pageController.nextPage(
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut,
                );
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [],
      ),
    );
  }
}
