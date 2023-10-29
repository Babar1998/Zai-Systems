import 'package:zaisystems/consts/imports.dart';

SliverAppBar myAppBar(context) {
  return SliverAppBar(
    elevation: 10.0,
    expandedHeight: 200,
    pinned: true,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        // LinearGradient
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // colors for gradient
          colors: [
            Colors.black,
            Color.fromRGBO(90, 15, 0, 1),
          ],
        ),
      ),
      child: FlexibleSpaceBar(
        // title: Padding(
        //   padding: const EdgeInsets.only(left: 20),
        //   child: appname.text.fontFamily(semibold).make(),
        // ),
        background: Image.asset(imgZaiBanner1, fit: BoxFit.cover),
      ),
    ),
  );
}
