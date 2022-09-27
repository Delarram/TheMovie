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
                    Icons.search,
                    color: Colors.black,
                  ),
                );
              }),
             expandedHeight: MediaQuery.of(context).size.height/2.3,
              floating: false,
              backgroundColor: const Color(0xffFFFFFF),
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                // title: Text(
                //   this.widget.product.name,
                //   style: TextStyle(
                //     color: Colors.black,
                //     fontSize: 16.0,
                //   ),
                // ),
                background: Padding(
                  padding: const EdgeInsets.only(top:90),
                  child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",fit: BoxFit.cover,)
                ),
              ),
            ),
          ];
        },
      ),
    );
  }
}
