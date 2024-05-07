import 'package:flutter/material.dart';
import 'package:openai_dalle_wrapper/openai_dalle_wrapper.dart';
import 'secondpage.dart';


String? imagepath;

final open_ai = OpenaiDalleWrapper(
  apiKey: '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',
);
Future createImage(String inputText) async {
  final imagePath = await open_ai.generateImage(inputText);

  Duration duration = Duration(seconds: 10);
  Future.delayed(duration);
  imagepath = imagePath;
  print(imagepath);
}
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {

    String? textfieldValue;
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  textfieldValue = value;
                },
              ),
              TextButton(
                onPressed: () async {
                  await createImage(textfieldValue!);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CreateImage(loadingString: imagepath),
                    ),
                  );
                },
                child: Text("Click Create"),
              ),
            ],
          )),
    );
  }
}
