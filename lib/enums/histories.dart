import 'package:portfolio/enums/types/history_type.dart';

class HistoryPosition {
  final String subtitle;
  final String period;
  final List<String> items;

  const HistoryPosition({
    required this.subtitle,
    required this.period,
    this.items = const [],
  });
}

enum Histories {
  yondu(
    title: 'Yondu, Inc.',
    type: HistoryType.work,
    positions: [
      HistoryPosition(
        subtitle: 'Software Engineer - Android',
        period: '2024',
        items: [
          'Developed and implemented enhancements for a client\u2019s Android app using Kotlin, optimizing performance and resolving critical bugs, resulting in improved stability and user experience across devices.',
          'Provided technical support by troubleshooting complex issues, resolving critical problems, and improving app stability, resulting in enhanced performance and user satisfaction.',
          'Collaborated with cross-functional teams to develop and deliver new features and enhancements.',
        ],
      ),
    ],
  ),
  cafe24(
    title: 'Cafe24 Philippines, Inc.',
    type: HistoryType.work,
    positions: [
      HistoryPosition(
        subtitle: 'Web Developer',
        period: '2018 \u2014 2020',
        items: [
          'Developed a web app to synchronize products between the company\u2019s Korean and Japan e-commerce platforms, ensuring consistent product availability across regions.',
          'Developed a web app that enables clients to specify shipping locations for individual products, optimizing logistics and inventory management.',
        ],
      ),
      HistoryPosition(
        subtitle: 'App Developer',
        period: '2020 \u2014 2021',
        items: [
          'Developed a Flutter-based identity management app, enabling employees to securely access internal sites and tools via PIN, biometrics, and two-factor authentication.',
          'Developed a Flutter mobile app with a system that connects clients and Korean brand owners to collaborate on promotions and events based on shared business goals, targeting consumers.',
        ],
      ),
      HistoryPosition(
        subtitle: 'Senior App Developer',
        period: '2021 \u2014 2023',
        items: [
          'Developed new features, implemented enhancements, and resolved issues for personalized e-commerce Android apps, leveraging the company\u2019s e-commerce platform to deliver tailored solutions for clients.',
          'Migrated a legacy Java codebase to Kotlin, improving maintainability, speeding up feature development, and reducing bug reports by 50%.',
          'Designed and implemented a scalable server-driven UI framework using Jetpack Compose, enabling instant UI changes to Android apps without requiring app store updates.',
          'Created software architecture plans and project timelines, collaborating with headquarters to ensure project alignment and successful execution.',
          'Collaborated with cross-functional teams to develop and deliver new features and enhancements.',
          'Analyzed software specifications and requirements to design efficient solutions.',
          'Developed detailed technical plans and conducted thorough analysis to ensure optimal solutions.',
          'Reviewed code from team members to ensure high-quality, maintainable code and adherence to best practices.',
        ],
      ),
    ],
  ),
  aptus(
    title: 'Aptus Global Solutions',
    type: HistoryType.work,
    positions: [
      HistoryPosition(
        subtitle: 'Web Developer Intern',
        period: '2017',
        items: [
          'Developed an internal employee portal web app, enabling efficient clock-in/clock-out, time tracking, and access to various work tools.',
        ],
      ),
    ],
  ),
  pup(
    title: 'Polytechnic University of the Philippines',
    type: HistoryType.education,
    positions: [
      HistoryPosition(
        subtitle: 'Bachelor of Science in Computer Science',
        period: '2014 \u2014 2018',
      ),
    ],
  );

  final List<HistoryPosition> positions;
  final String title;
  final HistoryType type;

  const Histories({
    required this.title,
    required this.type,
    required this.positions,
  });
}
