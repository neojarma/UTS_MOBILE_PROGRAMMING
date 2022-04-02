import 'package:flutter/material.dart';

class HomeMenuModel {
  final IconData icon;
  final String title;
  final String description;
  final String path;
  final Color startColor;
  final Color endColor;

  HomeMenuModel({
    required this.icon,
    required this.title,
    required this.description,
    required this.path,
    required this.startColor,
    required this.endColor,
  });
}

// list of MenuModel
List<HomeMenuModel> listOfHomePageMenu = [
  HomeMenuModel(
    icon: Icons.person,
    title: 'My Profile',
    description: 'Check out my profile',
    path: '/profile',
    startColor: const Color(0xffD76EF5),
    endColor: const Color(0xff8F7AFE),
  ),
  HomeMenuModel(
    icon: Icons.library_music,
    title: 'My Collections',
    description: 'Check out my collections',
    path: '/collection',
    startColor: const Color(0xffFFB157),
    endColor: const Color(0xffFFA057),
  ),
  HomeMenuModel(
    icon: Icons.menu_book,
    title: 'My Diary',
    description: 'Check out my diary',
    path: '/diary',
    startColor: const Color(0xffFF5B95),
    endColor: const Color(0xffF8556D),
  ),
  HomeMenuModel(
    icon: Icons.collections,
    title: 'My Gallery',
    description: 'Check out my gallery',
    path: '/library',
    startColor: const Color(0xff42E695),
    endColor: const Color(0xff3BB2B8),
  ),
];
