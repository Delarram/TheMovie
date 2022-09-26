import 'package:flutter/material.dart';

class MovieProduct extends StatefulWidget {
  const MovieProduct({Key? key}) : super(key: key);

  @override
  State<MovieProduct> createState() => _MovieProductState();
}

class _MovieProductState extends State<MovieProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        body: ListView.separated(
          padding: EdgeInsets.all(5),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black54,
                ),
                height: 100,
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 2,
              );
            },
            itemCount: 8),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              leading: Builder(builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                );
              }),
              title: Builder(builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                );
              }),
            )
          ];
        },
      ),
    );
  }
}
