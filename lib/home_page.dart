import 'package:clone_ui_nubank/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

Color backgroundColor = const Color.fromRGBO(131, 10, 210, 1);
Color secundaryPurple = const Color.fromRGBO(155, 59, 218, 1);
Color greyColor = const Color.fromRGBO(240, 241, 245, 1);

class _HomePageState extends State<HomePage> {
  void initState() {
    FlutterStatusbarcolor.setStatusBarColor(backgroundColor);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(backgroundColor, secundaryPurple),
                account(),
                actions(greyColor),
                myCards(greyColor),
                emprestimos(context, greyColor, backgroundColor),
                divider(),
                credCard(),
                divider(),
                easyInvest(backgroundColor),
                divider(),
                lifeInsurance(),
                divider(),
                discover(context, backgroundColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
