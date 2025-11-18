import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tastybits/screen/auth/signUp.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60.h,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Hello,",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Email",
                      style: TextStyle(
                        fontSize: 14
                      ),
                    ),
                    SizedBox(height: 10.h),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "Enter Email",
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 14
                      ),
                    ),
                    SizedBox(height: 10.h),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "Enter Password",
                      ),
                    ),
                    TextButton(
                        onPressed: (){},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFFFF9C00)
                          ),
                        )
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50.h,
                      child: ElevatedButton(
                          onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF129575),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r)
                          )
                        ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Colors.white,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(width: 8.w,),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                        color: Color(0xFFD9D9D9),
                        thickness: 1,
                      )
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    "Or Sign in with",
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                      child: Divider(
                        color: Color(0xFFD9D9D9),
                        thickness: 1,
                      )
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialButton("assets/google.png"),
                  SizedBox(width: 25.w,),
                  _socialButton("assets/fb.png")
                ],
              ),
              SizedBox(height: 30.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account?"
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignupScreen()));
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Color(0xFFFF9C00)
                        ),
                      )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _socialButton(String url) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,

          )
        ]
      ),
      child: Image.asset(url,height: 30.h,),
    );
  }
}
