import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verifyscreen extends StatefulWidget {
  const Verifyscreen({Key? key}) : super(key: key);

  @override
  State<Verifyscreen> createState() => _VerifyscreenState();
}

class _VerifyscreenState extends State<Verifyscreen> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enter OTP",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            SizedBox(height: 20.0),
            _buildOtpInputField(),
            SizedBox(height: 20.0),
            _buildVerifyButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildOtpInputField() {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      onChanged: (value) {
        // Handle OTP changes
      },
      controller: otpController,
      autoDisposeControllers: true,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.underline,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        inactiveColor: Colors.grey,
        activeColor: Color.fromARGB(255, 223, 9, 77),
        activeFillColor: Colors.white,
      ),
    );
  }

  Widget _buildVerifyButton() {
    return ElevatedButton(
      onPressed: () {
        // Add your OTP verification logic here
      },
      child: Text("Verify"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        
        padding: EdgeInsets.symmetric(horizontal: 50.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}