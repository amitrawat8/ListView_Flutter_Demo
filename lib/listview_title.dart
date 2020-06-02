import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:listviewdemo/email_data.dart';

class EmailListTile extends ListTile {
  EmailListTile(EmailData data)
      : super(
            title: Text(data.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(data.email),
                new Text(data.phonenumber)
              ],
            ),
            leading: CircleAvatar(child: Text(data.name[0])),
            dense: false,
            trailing: Icon(
              Icons.arrow_forward,
              size: 24.0,
              color: Colors.deepPurple,
            ),
            onTap: () {
              Fluttertoast.showToast(
                  msg: data.email,
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.grey,
                  textColor: Colors.white,
                  fontSize: 14.0);
            });
}
