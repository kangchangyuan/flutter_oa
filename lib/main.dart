import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '访客系统',
        theme: ThemeData(primaryColor: Colors.yellow),
        home: Scaffold(
          appBar: AppBar(title: const Text('首页')),
          body: const ScendWidget(),
        ));
  }
}

class ScendWidget extends StatelessWidget {
  const ScendWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 200,
        height: 300,
        color: Colors.blue,
      ),
    );
  }
}

class FirstWidget extends StatelessWidget {
  const FirstWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          // color: Colors.yellow,
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black, width: 1)),
          child: const Text(
            'kangchangyuan',
            style: TextStyle(
              backgroundColor: Colors.blue,
              fontSize: 30.0,
            ),
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Image.network(
          'https://gw.alipayobjects.com/zos/bmw-prod/d60657df-0822-4631-9d7c-e7a869c2f21c/k79dmz3q_w126_h126.png',
          width: 200,
          height: 300,
          color: Colors.blueAccent,
        ),
        ElevatedButton(onPressed: () => {}, child: const Text('是个按钮')),
        DataTable(columns: const [
          DataColumn(
              label: Text(
            '标题',
            style: TextStyle(fontSize: 14.0),
          )),
          DataColumn(
              label: Text(
            '内容',
            style: TextStyle(fontSize: 14.0),
          )),
        ], rows: const [
          DataRow(cells: [
            DataCell(Text('语文')),
            DataCell(Text('180sdfsadfsadfsdfsafsafsafsadfsads')),
          ])
        ])
      ],
    );
  }
}
