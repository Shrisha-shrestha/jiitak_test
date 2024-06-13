import 'package:go_router/go_router.dart';
import 'package:jiitak_test/src/features/bottom_navigation/views/bottom_navigation_view.dart';
import 'package:jiitak_test/src/features/details_page/details_view.dart';
import 'package:jiitak_test/src/features/edit_profile/views/edit_profile_view.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) => const BottomNavigationView(),
        routes: <GoRoute>[
          GoRoute(
            path: 'details',
            builder: (context, state) => const DetailsView(),
          ),
          GoRoute(
            path: 'editProfile',
            builder: (context, state) => const EditProfileView(),
          ),
        ],
      ),
    ],
  );
}
