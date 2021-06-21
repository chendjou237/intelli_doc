import 'package:bloc/bloc.dart';
import 'package:patient_app/Patient/clientAppointment.dart';

import 'package:patient_app/Patient/ProfilePage.dart';
import 'package:patient_app/Patient/ViewHistory.dart';
import 'package:patient_app/Patient/edit_profile.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  ProfileClickedEvent,
  EditProfileClickedEvent,
  HistoryClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc() : super(MakeAnAppointment());
  NavigationStates get initialState => MakeAnAppointment();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield MakeAnAppointment();
        break;

      case NavigationEvents.ProfileClickedEvent:
        yield ProfilePage();
        break;
      case NavigationEvents.EditProfileClickedEvent:
        yield EditProfile();
        break;
      case NavigationEvents.HistoryClickedEvent:
        yield Patient_View_History();
        break;
    }
  }
}
