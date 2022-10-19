import 'package:flutter/material.dart';

class FakeData {
  FakeData._();

  static const List<Map<String, dynamic>> drawerlist = [
    {
      "title": "Dashboard",
      "icon": Icon(
        Icons.dashboard,
        color: Colors.white,
      ),
      "dropdonw": false
    },
    {
      "title": "My Profile",
      "icon": Icon(
        Icons.people,
        color: Colors.white,
      ),
      "dropdonw": false
    },
    {
      "title": "Add New Member",
      "icon": Icon(
        Icons.people,
        color: Colors.white,
      ),
      "dropdonw": false
    },
    {
      "title": "Payment Method",
      "icon": Icon(
        Icons.people,
        color: Colors.white,
      ),
      "dropdonw": false
    },
    {
      "title": "Change Password",
      "icon": Icon(
        Icons.people,
        color: Colors.white,
      ),
      "dropdonw": false
    },
    {
      "title": "My Referrals",
      "icon": Icon(
        Icons.people,
        color: Colors.white,
      ),
      "dropdonw": false
    },
    {
      "title": "Fund Raised",
      "icon": Icon(
        Icons.people,
        color: Colors.white,
      ),
      "dropdonw": false
    },
    {
      "title": "Statement",
      "icon": Icon(
        Icons.people,
        color: Colors.white,
      ),
      "dropdonw": true
    },
    {
      "title": "Message",
      "icon": Icon(
        Icons.people,
        color: Colors.white,
      ),
      "dropdonw": false
    },
  ];
  static const List<Map<String, dynamic>> dashboardData = [
    {"title": "Approve Left", "count": "0", "img": ""},
    {"title": "Help Given", "count": "₹144", "img": ""},
    {"title": "Recieved Help", "count": "₹104", "img": ""},
    {"title": "Matching Help Community", "count": "0", "img": ""},
  ];

  static const List<Map<String, dynamic>> helpGiven = [
    {
      "name": "Sender Name",
      "amount": "\$10/₹779",
      "date_time": "22:05:25, 30th March 2022",
      "status": "Approved"
    },
    {
      "name": "Sender Name",
      "amount": "\$10/₹779",
      "date_time": "22:05:25, 30th March 2022",
      "status": "Pending"
    },
  ];
}
