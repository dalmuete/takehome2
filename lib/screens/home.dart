import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Dessamine',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            AvatarGlow(
              glowColor: Color.fromARGB(255, 255, 149, 0),
              duration: Duration(milliseconds: 1500),
              repeat: true,
              child: Material(
                elevation: 8.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 255, 136, 0),
                  backgroundImage: AssetImage('assets/images/samine.png'),
                  radius: 100.0,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '09669661280',
              style: TextStyle(
                  color: Color.fromARGB(255, 130, 130, 130), fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AnimatedScreen(),
                    ));
                  },
                  icon: Icon(Icons.phone, size: 24),
                  label: Text(
                    'Answer',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.lightBlue,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    elevation: 4,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AnimatedScreen2(),
                    ));
                  },
                  icon: Icon(Icons.phone_missed, size: 24),
                  label: Text(
                    'Don\'t Answer',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    elevation: 4,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AnimatedScreen2 extends StatefulWidget {
  const AnimatedScreen2({super.key});

  @override
  State<AnimatedScreen2> createState() => _AnimatedScreen2State();
}

class _AnimatedScreen2State extends State<AnimatedScreen2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 200.0, end: 300.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Container(
              width: _animation.value,
              height: _animation.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.lightBlue.withOpacity(0.5),
                    spreadRadius: _animation.value / 20,
                    blurRadius: _animation.value / 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Center(
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/cry-samine.png',
                        fit: BoxFit.cover,
                        width: _animation.value,
                        height: _animation.value,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class AnimatedScreen extends StatefulWidget {
  @override
  _AnimatedScreenState createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 200.0, end: 300.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Container(
              width: _animation.value,
              height: _animation.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 255, 149, 0).withOpacity(0.5),
                    spreadRadius: _animation.value / 20,
                    blurRadius: _animation.value / 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Center(
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/samine.png',
                        fit: BoxFit.cover,
                        width: _animation.value,
                        height: _animation.value,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
