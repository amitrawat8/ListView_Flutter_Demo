import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listviewdemo/email_data.dart';

import 'listview_title.dart';

class ListViewActivity extends StatelessWidget {
  ListViewActivity({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Container(
        child: _buildList(),
      ),
    );
  }

  Widget _buildList() {
    return ListView.builder(
        itemCount: allEmail.length,
        itemBuilder: (BuildContext context, int index) {
          EmailData data = allEmail[index];
          return Card(
            elevation: 8.0,
            child: Container(
              child: EmailListTile(data),
            ),
          );
        });
  }
}
