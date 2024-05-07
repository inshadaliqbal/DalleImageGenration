import 'package:flutter/material.dart';

class CreateImage extends StatelessWidget {
  String? loadingString;
  CreateImage({@required this.loadingString});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.network(loadingString!),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Go back'),),
          ],
        ),
      ),
    );
  }
}
