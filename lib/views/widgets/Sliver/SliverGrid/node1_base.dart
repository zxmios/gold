import 'package:flutter/material.dart';

/// create by GUGU Team on 2020-03-30
/// contact me by email 1981462002@qq.com
/// 说明:
//    {
//      "widgetId": 188,
//      "name": 'SliverList基本使用',
//      "priority": 1,
//      "subtitle":
//        "SliverGrid.count 指定轴向数量构造\n"
//        "SliverGrid.extent 指定轴向长度构造\n"
//        "属性特征同GridView,可详见之",
//    }
class SliverGirdDemo extends StatelessWidget {
  final data = List.generate(128, (i) => Color(0xFF6600FF - 2 * i));

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: CustomScrollView(
        slivers: <Widget>[_buildSliverAppBar(), _buildSliverList()],
      ),
    );
  }

  Widget _buildSliverList() => SliverGrid.extent(
        childAspectRatio: 1 / 0.618,
        maxCrossAxisExtent: 180,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: data
            .map((e) => Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 60,
                  color: e,
                  child: Text(
                    colorString(e),
                    style: TextStyle(color: Colors.white, shadows: [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(.5, .5),
                          blurRadius: 2)
                    ]),
                  ),
                ))
            .toList(),
      );

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 190.0,
      leading: _buildLeading(),
      title: Text('GUGU Team'),
      actions: _buildActions(),
      elevation: 5,
      pinned: true,
      backgroundColor: Colors.orange,
      flexibleSpace: FlexibleSpaceBar(
        //伸展处布局
        titlePadding: EdgeInsets.only(left: 55, bottom: 15), //标题边距
        collapseMode: CollapseMode.parallax, //视差效果
        background: Image.asset(
          "assets/images/caver.webp",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildLeading() => Container(
      margin: EdgeInsets.all(10),
      child: Image.asset('assets/images/icon_head.webp'));

  List<Widget> _buildActions() => <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.star_border,
            color: Colors.white,
          ),
        )
      ];

  String colorString(Color color) =>
      "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";
}
