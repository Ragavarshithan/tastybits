import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tastybits/screen/home_screen.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
                  Image.asset(
                    "assets/child.png",
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF129575),
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r)
                      )
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                            "Start Cooking",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        SizedBox(width: 8.w,),
                        Icon(
                            Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                      onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
