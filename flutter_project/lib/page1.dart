import 'package:flutter/material.dart';
import 'package:quiz_part_1/page2.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 2"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Kalkulator"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PageDua();
            }));
          },
        ),
      ),
    );
  }
}
