import 'package:go_router/go_router.dart';
import 'package:ifood/core/resources/app_routes.dart';
import 'package:ifood/core/resources/slide_wrapper.dart';
import 'package:ifood/features/auth/presentation/views/forgot_passord.dart';
import 'package:ifood/features/auth/presentation/views/login_view.dart';
import 'package:ifood/features/auth/presentation/views/signup_view.dart';
import 'package:ifood/features/cart/presentation/views/carts_views.dart';
import 'package:ifood/features/favorite/presentation/views/favorite_view.dart';
import 'package:ifood/features/home/presentation/views/home_details.dart';
import 'package:ifood/features/home/presentation/views/home_view.dart';
import 'package:ifood/features/profile/presentation/views/profile_view.dart';

class AppRouter {
  static final GoRouter approuter = GoRouter(
    initialLocation: AppRoutes.home,
    routes: [
      // auth
      GoRoute(
        path: AppRoutes.login,
        name: AppRoutes.login,
        pageBuilder: (context, state) =>
            AppTransitions.slideFromRight(state, const LoginView()),
      ),
      GoRoute(
        path: AppRoutes.signUp,
        name: AppRoutes.signUp,
        pageBuilder: (context, state) =>
            AppTransitions.slideFromRight(state, const SignupView()),
      ),
      GoRoute(
        path: AppRoutes.forgotPassword,
        name: AppRoutes.forgotPassword,
        pageBuilder: (context, state) =>
            AppTransitions.fade(state, const ForgotPassord()),
      ),

      // bottom nav bar
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        pageBuilder: (context, state) =>
            AppTransitions.fade(state, const HomeView()),
      ),
      GoRoute(
        path: AppRoutes.homeDetails,
        name: AppRoutes.homeDetails,
        pageBuilder: (context, state) =>
            AppTransitions.slideFromRight(state, const HomeDetailsView()),
      ),
      GoRoute(
        path: AppRoutes.carts,
        name: AppRoutes.carts,
        pageBuilder: (context, state) =>
            AppTransitions.slideFromRight(state, const CartsViews()),
      ),
      GoRoute(
        path: AppRoutes.favorite,
        name: AppRoutes.favorite,
        pageBuilder: (context, state) =>
            AppTransitions.fade(state, const FavoriteView()),
      ),
      GoRoute(
        path: AppRoutes.profile,
        name: AppRoutes.profile,
        pageBuilder: (context, state) =>
            AppTransitions.slideFromRight(state, const ProfileView()),
      ),
    ],
  );
}
