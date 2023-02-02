import 'package:flutter/material.dart';

class AboutBlock extends StatefulWidget {
  Size screenSize;

  AboutBlock({required this.screenSize});

  @override
  State<AboutBlock> createState() => _AboutBlockState();
}

class _AboutBlockState extends State<AboutBlock> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            SizedBox(
                width: widget.screenSize.width / 3,
                child: Text("About me")
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
                width: widget.screenSize.width / 3,
                child: Text("Experienced Junior Software Engineer with a demonstrated history of working in the marketing. Skilled in C#, SQL, PHP, Android, and English. Strong engineering professional with a Software Developer OKJ focused in Computer Software Engineering from Szent György Média és Informatikai Szakgimnázium. ")
            ),
          ],
        ),
      ],
    );
  }
}
