import 'package:stacked/stacked.dart';
import 'package:store_app/app/app.router.dart';
import 'package:store_app/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class DetailsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  //navigates to home page
  nToHomePage() {
    _navigationService.navigateTo(Routes.homeView);
  }
}
