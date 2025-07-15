import 'package:go_router/go_router.dart';
import 'package:ifood/core/resources/app_routes.dart';
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
    initialLocation: AppRoutes.login,
    routes: [
      // auth
      GoRoute(
        path: AppRoutes.login,
        name: AppRoutes.login,
        builder: (context, state) => LoginView(),
      ),
      GoRoute(
        path: AppRoutes.signUp,
        name: AppRoutes.signUp,
        builder: (context, state) => SignupView(),
      ),
      GoRoute(
        path: AppRoutes.forgotPassword,
        name: AppRoutes.forgotPassword,
        builder: (context, state) => ForgotPassord(),
      ),

      //  bottom nav bar
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: AppRoutes.homeDetails,
        name: AppRoutes.homeDetails,
        builder: (context, state) => HomeDetails(),
      ),
      GoRoute(
        path: AppRoutes.carts,
        name: AppRoutes.carts,
        builder: (context, state) => CartsViews(),
      ),

      GoRoute(
        path: AppRoutes.favorite,
        name: AppRoutes.favorite,
        builder: (context, state) => FavoriteView(),
      ),
      GoRoute(
        path: AppRoutes.profile,
        name: AppRoutes.profile,
        builder: (context, state) => ProfileView(),
      ),
    ],
  );
}
