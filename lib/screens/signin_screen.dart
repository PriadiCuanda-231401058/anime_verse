import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:anime_verse/widgets/app_scaffold.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return AppScaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6D83F2), Color(0xFF9D50BB)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isLargeScreen = constraints.maxWidth > 600;
            final maxWidth = isLargeScreen ? 400.0 : constraints.maxWidth;

            return SingleChildScrollView(
              child: Center(
                child: Container(
                  width: maxWidth,
                  padding: EdgeInsets.all(screenWidth * 0.06),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: screenHeight * 0.08),

                      // 🔥 Logo atau Icon App
                      CircleAvatar(
                        radius: screenWidth * 0.12,
                        backgroundColor: Colors.white.withOpacity(0.2),
                        child: Icon(
                          Icons.person_outline,
                          size: screenWidth * 0.12,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.04),

                      // 🔥 Title
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                          fontSize: screenWidth * (isLargeScreen ? 0.06 : 0.085),
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          letterSpacing: 1.2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.015),
                      Text(
                        'Sign in to continue your anime journey',
                        style: TextStyle(
                          fontSize: screenWidth * 0.038,
                          fontWeight: FontWeight.w500,
                          color: Colors.white70,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.05),

                      // 🔥 Email
                      _buildTextField(
                        screenWidth,
                        screenHeight,
                        hint: "Email",
                        icon: Icons.email_outlined,
                        inputType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: screenHeight * 0.02),

                      // 🔥 Password
                      _buildTextField(
                        screenWidth,
                        screenHeight,
                        hint: "Password",
                        icon: Icons.lock_outline,
                        isPassword: true,
                      ),

                      SizedBox(height: screenHeight * 0.01),

                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontSize: screenWidth * 0.036,
                              color: Colors.blue.shade200,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.03),

                      // 🔥 Gradient Sign In Button
                      SizedBox(
                        width: double.infinity,
                        height: screenHeight * 0.07,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                screenWidth * 0.03,
                              ),
                            ),
                          ).copyWith(
                            backgroundColor: WidgetStateProperty.resolveWith(
                              (states) => null,
                            ),
                            elevation: WidgetStateProperty.all(6),
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xFF6D83F2), Color(0xFF9D50BB)],
                              ),
                              borderRadius: BorderRadius.circular(
                                screenWidth * 0.03,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.03),

                      // 🔥 Divider
                      Row(
                        children: [
                          Expanded(
                            child: Divider(color: Colors.white30, thickness: 1),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.03),
                            child: Text(
                              "or",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: screenWidth * 0.035,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(color: Colors.white30, thickness: 1),
                          ),
                        ],
                      ),

                      SizedBox(height: screenHeight * 0.03),

                      // 🔥 Google Button
                      SizedBox(
                        width: double.infinity,
                        height: screenHeight * 0.07,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/images/google_icon.svg',
                            height: screenWidth * 0.06,
                          ),
                          label: Text(
                            "Continue with Google",
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.15),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.03),
                              side: BorderSide(
                                  color: Colors.white.withOpacity(0.3)),
                            ),
                            elevation: 3,
                          ),
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.05),

                      // 🔥 Sign Up link
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: Colors.white70,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade200,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.05),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // 🔥 Custom TextField Builder
  Widget _buildTextField(
    double screenWidth,
    double screenHeight, {
    required String hint,
    required IconData icon,
    bool isPassword = false,
    TextInputType inputType = TextInputType.text,
  }) {
    return TextField(
      obscureText: isPassword,
      keyboardType: inputType,
      style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.04),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white54, fontSize: screenWidth * 0.04),
        filled: true,
        fillColor: Colors.white.withOpacity(0.12),
        prefixIcon: Icon(icon, color: Colors.white70),
        suffixIcon: isPassword
            ? Icon(Icons.visibility_off_outlined, color: Colors.white70)
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(screenWidth * 0.03),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.022,
          horizontal: screenWidth * 0.05,
        ),
      ),
    );
  }
}
