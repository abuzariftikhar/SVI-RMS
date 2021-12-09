import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sv_rms_mobile/ui/add_technician/add_technician_screen.dart';
import 'package:sv_rms_mobile/ui/authentication/login_screen.dart';
import 'package:sv_rms_mobile/ui/authentication/signup_screen.dart';
import 'package:sv_rms_mobile/ui/bid_details/bid_details_screen.dart';
import 'package:sv_rms_mobile/ui/bid_now/bid_now_screen.dart';
import 'package:sv_rms_mobile/ui/complaints/complaints_screen.dart';
import 'package:sv_rms_mobile/ui/complaints/file_complaint_screen.dart';
import 'package:sv_rms_mobile/ui/home/home_screen.dart';
import 'package:sv_rms_mobile/ui/home/home_store.dart';
import 'package:sv_rms_mobile/ui/invoices/invoices_screen.dart';
import 'package:sv_rms_mobile/ui/invoices/invoices_store.dart';
import 'package:sv_rms_mobile/ui/project_details/project_details_screen.dart';
import 'package:sv_rms_mobile/ui/splash_screen/splash_screen.dart';
import 'package:sv_rms_mobile/ui/technician_details/technician_details_screen.dart';
import 'package:sv_rms_mobile/ui/technicians/technician_screen.dart';
import 'package:sv_rms_mobile/ui/technicians/technician_store.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.route:
      return MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      );
    case LoginScreen.route:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case SignupScreen.route:
      return MaterialPageRoute(
        builder: (context) => const SignupScreen(),
      );
    case HomeScreen.route:
      return MaterialPageRoute(
        builder: (context) => HomeScreen(
          homeScreenStore: HomeScreenStore(),
        ),
      );
    case ProjectDetailsScreen.route:
      return MaterialPageRoute(
        builder: (context) => const ProjectDetailsScreen(),
      );
    case BidDetailsScreen.route:
      return MaterialPageRoute(
        builder: (context) => const BidDetailsScreen(),
      );
    case InvoicesScreen.route:
      return MaterialPageRoute(
        builder: (context) => InvoicesScreen(
          store: InvoicesScreenStore(),
        ),
      );
    case TechniciansScreen.route:
      return MaterialPageRoute(
        builder: (context) => TechniciansScreen(
          store: TechniciansScreenStore(),
        ),
      );
    case AddTechniciansScreen.route:
      return MaterialPageRoute(
        builder: (context) => const AddTechniciansScreen(),
      );
    case ComplaintsScreen.route:
      return MaterialPageRoute(
        builder: (context) => const ComplaintsScreen(),
      );
    case FileComplaintScreen.route:
      return MaterialPageRoute(
        builder: (context) => const FileComplaintScreen(),
      );
    case TechnicianDetailsScreen.route:
      return MaterialPageRoute(
        builder: (context) => const TechnicianDetailsScreen(),
      );
    case BidNowScreen.route:
      return MaterialPageRoute(
        builder: (context) => const BidNowScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => HomeScreen(
          homeScreenStore: HomeScreenStore(),
        ),
      );
  }
}