import 'package:zaisystems/consts/imports.dart';

SliverAppBar myAppBar(context) {
  return SliverAppBar(
    elevation: 10.0,
    expandedHeight: 200,
    pinned: true,
    flexibleSpace: FlexibleSpaceBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: appname.text.fontFamily(semibold).make(),
      ),
      background: Image.asset(decoration, fit: BoxFit.cover),
    ).color(mehroonDark),
  );
}
