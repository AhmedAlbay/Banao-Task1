import 'package:banao/widgets/progaram_for_you.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/event_and_experiences.dart';
import '../widgets/intro_section.dart';
import '../widgets/lesson_for_you.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFEEF3FD),
          elevation: 0.0,
          leading: Image.asset('assets/images/Menu.png'),
          actions: [
            Image.asset('assets/images/forum_black_24dp 1.png'),
            Image.asset('assets/images/Notification.png'),
          ],
        ),
        body: const Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IntroSection(),
                    SizedBox(
                      height: 30,
                    ),
                    ProgramForYou(),
                    SizedBox(
                      height: 30,
                    ),
                    EventsAndExperiences(),
                    SizedBox(
                      height: 30,
                    ),
                    LessonForYou(),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
