import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/jap_provider.dart';

class JapScreen extends StatelessWidget {
  const JapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final jap = context.watch<JapProvider>();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background
            Container(color: Colors.white),

            // Top App Bar
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: Container(
                height: 79,
                color: const Color(0xFFFFCB52),
              ),
            ),

            Positioned(
              top: 6,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Naam jap',
                  style: const TextStyle(
                    fontSize: 24,
                    fontFamily: 'Jaini',
                  ),
                ),
              ),
            ),

            Positioned(
              top: 60,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  "Today’s Jap",
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Bellefair',
                  ),
                ),
              ),
            ),

            // Jap Counter Circle (TAP HERE)
            Positioned(
              top: 311,
              left: MediaQuery.of(context).size.width / 2 - 106,
              child: GestureDetector(
                onTap: jap.increment,
                child: Container(
                  width: 213,
                  height: 212,
                  decoration: const ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFE1E1E1),
                        Color(0xFFE9C524),
                        Color(0xFFA7470B),
                      ],
                    ),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x66000000),
                        blurRadius: 100,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Jap Count (Dynamic)
            Positioned(
              top: 189,
              left: MediaQuery.of(context).size.width / 2 - 72,
              child: Container(
                width: 145,
                height: 56,
                color: const Color(0xFFFAC85E),
                alignment: Alignment.center,
                child: Text(
                  jap.count.toString(),
                  style: const TextStyle(
                    fontSize: 40,
                    fontFamily: 'Caveat Brush',
                  ),
                ),
              ),
            ),

            // Mantra Text
            const Positioned(
              top: 390,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'राधा',
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: 'Bellefair',
                  ),
                ),
              ),
            ),

            // Maalaa Completed (Dynamic)
            Positioned(
              top: 561,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Maalaa completed: ${jap.mala}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontFamily: 'Abhaya Libre ExtraBold',
                  ),
                ),
              ),
            ),

            // Progress Text (Dynamic)
            Positioned(
              top: 601,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Progress text : ${jap.count %108}/108',
                  style: const TextStyle(
                    fontSize: 24,
                    fontFamily: 'Abhaya Libre ExtraBold',
                  ),
                ),
              ),
            ),

            // Bottom Bar
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 64,
                color: const Color(0xFFFAC85E),
              ),
            ),

            // Bottom Icons (UI Only for now)
            Positioned(bottom: 8, left: 18, child: _navDot("asset/tulsi.png")),
            Positioned(bottom: 8, left: 157, child: _navDot("asset/tulsi.png")),
            Positioned(bottom: 8, right: 18, child: _navDot("asset/tulsi.png")),
          ],
        ),
      ),
    );
  }

  Widget _navDot(String imagePath) {
  return Container(
    width: 45,
    height: 46,
    decoration: ShapeDecoration(
      shape: const OvalBorder(
        side: BorderSide(width: 1),
      ),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover, // or BoxFit.contain if icon-style
      ),
    ),
  );
}

}
