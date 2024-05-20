import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void imagePickerModal(BuildContext context,
    {VoidCallback? onCameraTap, VoidCallback? onGalleryTap}) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        bool isHovered = false;
        return Container(
          color: Color(0xDA0F1533),
          padding: EdgeInsets.all(20.0),
          height: 220,
          child: Column(
            children: [
              GestureDetector(
                onTap: onCameraTap,
                child: Card(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color(0xFFEB1555),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      'Camera',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              GestureDetector(
                onTap: onGalleryTap,
                child: Card(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color(0xFFEB1555),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      'Gallery',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      });
}
