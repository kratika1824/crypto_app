// import 'package:flutter/material.dart';
// import '../services/api_service.dart'; // ✅ Don't forget this
//
// class OtpScreen extends StatefulWidget {
//   final String contactInfo;
//
//   const OtpScreen({super.key, required this.contactInfo});
//
//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }
//
// class _OtpScreenState extends State<OtpScreen> {
//   final TextEditingController _otpController = TextEditingController();
//   bool _isLoading = false;
//
//   void _verifyOtp() async {
//     String otp = _otpController.text.trim();
//
//     if (otp.length != 6) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text("Please enter a valid 6-digit OTP"),
//           backgroundColor: Colors.red,
//         ),
//       );
//       return;
//     }
//
//     setState(() {
//       _isLoading = true;
//     });
//
//     bool success = await ApiService.verifyOtp(widget.contactInfo, otp);
//
//     setState(() {
//       _isLoading = false;
//     });
//
//     if (success) {
//       // ✅ OTP Verified Successfully
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text("✅ OTP Verified Successfully!"),
//           backgroundColor: Colors.green,
//         ),
//       );
//
//       // TODO: Navigate to dashboard or home screen
//       // Navigator.pushReplacement(...);
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text("❌ Invalid OTP. Please try again."),
//           backgroundColor: Colors.red,
//         ),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF121212),
//       body: Center(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 24),
//           child: Container(
//             constraints: const BoxConstraints(maxWidth: 400),
//             padding: const EdgeInsets.all(24),
//             decoration: BoxDecoration(
//               color: const Color(0xFF1E1E1E),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const Text(
//                   "Verify OTP",
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.yellow,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 Text(
//                   "OTP sent to ${widget.contactInfo}",
//                   style: const TextStyle(color: Colors.white70, fontSize: 16),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 30),
//                 TextField(
//                   controller: _otpController,
//                   keyboardType: TextInputType.number,
//                   maxLength: 6,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                   ),
//                   decoration: InputDecoration(
//                     counterText: "",
//                     hintText: "Enter 6-digit code",
//                     hintStyle: const TextStyle(color: Colors.grey),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(color: Colors.yellow),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(color: Colors.yellow, width: 2),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: _isLoading ? null : _verifyOtp,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.yellow,
//                     foregroundColor: Colors.black,
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//                     minimumSize: const Size(double.infinity, 50),
//                   ),
//                   child: _isLoading
//                       ? const CircularProgressIndicator(color: Colors.black)
//                       : const Text("Verify", style: TextStyle(fontSize: 16)),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
