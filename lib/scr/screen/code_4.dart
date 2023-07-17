import 'dart:async';

import 'package:flutter/material.dart';
import 'package:imtihon_modul_6/scr/screen/home.dart';
import 'package:imtihon_modul_6/scr/screen/sign_up.dart';

class Code4 extends StatefulWidget {
  const Code4({Key? key}) : super(key: key);

  @override
  State<Code4> createState() => _Code4State();
}

class _Code4State extends State<Code4> {


  static const countdownDuration = Duration(seconds: 30);
  Duration duration = Duration();
  Timer? timer;

  bool isCountdown = true;

  @override
  void initState(){
    super.initState();
    reset();
  }

  void reset(){
    if(isCountdown) {
      setState(() => duration = countdownDuration);
    }else{
      setState(() => duration = Duration());
    }
  }

  void addTime(){
    final addSeconds = isCountdown ? -1 : 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;

      if(seconds < 0){
        timer?.cancel();
      }else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void startTimer(){
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }
  void stopTimer(){
    timer?.cancel();
  }



  final GlobalKey<FormState> formKey3 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    startTimer();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => SignUp(),),);
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black,),

        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Form(
        key: formKey3,
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text: "Enter the",
                        style: TextStyle(fontSize: 25, color: Color(0xFF252B5C))),
                    TextSpan(
                        text: " code",
                        style: TextStyle(color: Color(0xFF1F4C6B), fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 50),
                child: Text("Enter the 4 digit code that we just sent to\nyour email", style: TextStyle(color: Color(0xFF53587A),),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value! == "0000") {
                    } else {
                      return "Invalid Password";
                    }
                  },
                ),
              ),
              SizedBox(height: 250,),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                    ),
                    onPressed: () {
                      if (formKey3.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Home(),
                          ),
                        );
                      } else {
                        print("Error code");
                      };
                    },
                    child: Text("Continue")),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFFF5F4F8),
                    ),
                    child: buildTime(),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text("Didn't receive the? Resend OTB", ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



Widget buildTime(){
  return Center(
    child: Text(
      "${duration.inSeconds}",
      style: TextStyle(fontSize: 20, color: Colors.black),
    ),
  );
}
}







