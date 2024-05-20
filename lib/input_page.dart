import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ocr_scanner/screens/recognization_page.dart';
import 'package:ocr_scanner/utils/image_cropper_page.dart';
import 'package:ocr_scanner/utils/image_picker_class.dart';
import 'package:ocr_scanner/widgets/model_dialogue.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'OCR Scanner',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Scan here',
              style: TextStyle(
                color: Color(0xFF8D8E98),
                fontSize: 17.0,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          imagePickerModal(
            context,
            onCameraTap: () {
              print('object');
              pickImage(source: ImageSource.camera).then((value) {
                if (value != '') {
                  imageCropperView(value, context).then((value) {
                    if (value != '') {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (_) => RecognizePage(
                            path: value,
                          ),
                        ),
                      );
                    }
                  });
                }
              });
            },
            onGalleryTap: () {
              print('');
              pickImage(source: ImageSource.gallery).then((value) {
                if (value != '') {
                  imageCropperView(value, context).then((value) {
                    if (value != '') {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (_) => RecognizePage(
                            path: value,
                          ),
                        ),
                      );
                    }
                  });
                }
              });
            },
          );
        },
        tooltip: 'Increment',
        label: Text(
          'Scan Photo',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
