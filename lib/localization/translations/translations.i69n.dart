// ignore_for_file: unused_element, unused_field, camel_case_types, annotate_overrides, prefer_single_quotes, non_constant_identifier_names
// GENERATED FILE, do not edit!
import 'package:i69n/i69n.dart' as i69n;

String get _languageCode => 'en';
String get _localeName => 'en';

String _plural(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.plural(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _ordinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.ordinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _cardinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.cardinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);

class Translations implements i69n.I69nMessageBundle {
  const Translations();
  CommonTranslations get Common => CommonTranslations(this);
  HomeTranslations get Home => HomeTranslations(this);
  TaskCategoriesTranslations get TaskCategories =>
      TaskCategoriesTranslations(this);
  TaskTitlesTranslations get TaskTitles => TaskTitlesTranslations(this);
  SettingsTranslations get Settings => SettingsTranslations(this);
  LeaveRequestTranslations get LeaveRequest => LeaveRequestTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'Common':
        return Common;
      case 'Home':
        return Home;
      case 'TaskCategories':
        return TaskCategories;
      case 'TaskTitles':
        return TaskTitles;
      case 'Settings':
        return Settings;
      case 'LeaveRequest':
        return LeaveRequest;
      default:
        return key;
    }
  }
}

class CommonTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const CommonTranslations(this._parent);
  String get OK => "OK";
  String get Done => "Done";
  String get Cancel => "Cancel";
  String get Proceed => "Proceed";
  String get OperationSucess => "Operation Successful";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'OK':
        return OK;
      case 'Done':
        return Done;
      case 'Cancel':
        return Cancel;
      case 'Proceed':
        return Proceed;
      case 'OperationSucess':
        return OperationSucess;
      default:
        return key;
    }
  }
}

class HomeTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const HomeTranslations(this._parent);
  String get Welcome => "Welcome";
  String get WelcomeMsg => "Access all common services";
  String get HeaderMsg => "To your Workspace";
  String get Dashboard => "Dashboard";
  String get Reports => "Reports";
  String get Profile => "Profile";
  String get Settings => "Settings";
  String get ShiftBannerTitle => "Shift Details";
  String get BannerButton => "View Details";
  String get ShiftBannerMsg =>
      "View your assigned shift timings or request to switch shift timings.";
  String get EmployeeServices => "Employee Services";
  String get MyTravel => "My Travel";
  String get PendingReq => "Pending Requests";
  String get MissingSwipes => "Missing Swipes";
  String get LeavesBalance => "Leaves Balance";
  String get TeamHierarchy => "Your team's hierarchy";
  String get ReportTo => "Reports To";
  String get ManagerTo => "Manager To";
  String get BasicInfo => "Basic Information";
  String get BasicInfoDesc => "See your basic information here";
  String get DependentsInfo => "Dependents Information";
  String get DependentsInfoDesc => "See details";
  String get EducationDetails => "Education Details";
  String get EducationDetailsDesc => "See your education details here";
  String get PastExperience => "Past Experience";
  String get PastExperienceDesc => "See your details here";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'Welcome':
        return Welcome;
      case 'WelcomeMsg':
        return WelcomeMsg;
      case 'HeaderMsg':
        return HeaderMsg;
      case 'Dashboard':
        return Dashboard;
      case 'Reports':
        return Reports;
      case 'Profile':
        return Profile;
      case 'Settings':
        return Settings;
      case 'ShiftBannerTitle':
        return ShiftBannerTitle;
      case 'BannerButton':
        return BannerButton;
      case 'ShiftBannerMsg':
        return ShiftBannerMsg;
      case 'EmployeeServices':
        return EmployeeServices;
      case 'MyTravel':
        return MyTravel;
      case 'PendingReq':
        return PendingReq;
      case 'MissingSwipes':
        return MissingSwipes;
      case 'LeavesBalance':
        return LeavesBalance;
      case 'TeamHierarchy':
        return TeamHierarchy;
      case 'ReportTo':
        return ReportTo;
      case 'ManagerTo':
        return ManagerTo;
      case 'BasicInfo':
        return BasicInfo;
      case 'BasicInfoDesc':
        return BasicInfoDesc;
      case 'DependentsInfo':
        return DependentsInfo;
      case 'DependentsInfoDesc':
        return DependentsInfoDesc;
      case 'EducationDetails':
        return EducationDetails;
      case 'EducationDetailsDesc':
        return EducationDetailsDesc;
      case 'PastExperience':
        return PastExperience;
      case 'PastExperienceDesc':
        return PastExperienceDesc;
      default:
        return key;
    }
  }
}

class TaskCategoriesTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const TaskCategoriesTranslations(this._parent);
  String get General => "General";
  String get Report => "Report";
  String get Finance => "Finance";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'General':
        return General;
      case 'Report':
        return Report;
      case 'Finance':
        return Finance;
      default:
        return key;
    }
  }
}

class TaskTitlesTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const TaskTitlesTranslations(this._parent);
  String get AttendanceReport => "Attendance Report";
  String get LeaveReq => "Leave Request";
  String get FundsReq => "Funds Request";
  String get AdvanceReq => "Payment Request";
  String get AccessCardReq => "Access Card Request";
  String get TravelTicketReq => "Travel Ticket Request";
  String get TravelHistory => "Travel History";
  String get PendingReq => "Pending Request";
  String get MissingSwipe => "Missing Swipes";
  String get LeaveBalance => "Leave Balance";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'AttendanceReport':
        return AttendanceReport;
      case 'LeaveReq':
        return LeaveReq;
      case 'FundsReq':
        return FundsReq;
      case 'AdvanceReq':
        return AdvanceReq;
      case 'AccessCardReq':
        return AccessCardReq;
      case 'TravelTicketReq':
        return TravelTicketReq;
      case 'TravelHistory':
        return TravelHistory;
      case 'PendingReq':
        return PendingReq;
      case 'MissingSwipe':
        return MissingSwipe;
      case 'LeaveBalance':
        return LeaveBalance;
      default:
        return key;
    }
  }
}

class SettingsTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const SettingsTranslations(this._parent);
  String get AppBarTitle => "Settings";
  String get Language => "Choose Language";
  String get AboutApp => "About App";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'AppBarTitle':
        return AppBarTitle;
      case 'Language':
        return Language;
      case 'AboutApp':
        return AboutApp;
      default:
        return key;
    }
  }
}

class LeaveRequestTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const LeaveRequestTranslations(this._parent);
  String get RequestOff => "Request Days Off";
  String get Type => "Type";
  String get ChooseType => "Choose Type";
  String get Casual => "Casual Leave";
  String get Sick => "SickLeave";
  String get Vacation => "Vacation";
  String get Wedding => "Wedding Leave";
  String get Funeral => "Funeral";
  String get Duration => "Duration";
  String get ChooseLength => "Choose Duration";
  String get FullDay => "Full Day";
  String get HalfDay => "Half Day";
  String get MultiDay => "Multiple Days";
  String get AddNote => "Add Note";
  String get StartDate => "Start Date";
  String get EndDate => "End Date";
  String get AttachFile => "Attachment";
  String get AttachDoc => "Attach a Document";
  String get AttachDocDesc =>
      "Add some document to be sent as attachment with your leave request.";
  String get NoAttachment => "No files Attached";
  String get AddAttachment => "Add Attachment";
  String get AddAttachment2 => "Add Attachment asdfsadf";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'RequestOff':
        return RequestOff;
      case 'Type':
        return Type;
      case 'ChooseType':
        return ChooseType;
      case 'Casual':
        return Casual;
      case 'Sick':
        return Sick;
      case 'Vacation':
        return Vacation;
      case 'Wedding':
        return Wedding;
      case 'Funeral':
        return Funeral;
      case 'Duration':
        return Duration;
      case 'ChooseLength':
        return ChooseLength;
      case 'FullDay':
        return FullDay;
      case 'HalfDay':
        return HalfDay;
      case 'MultiDay':
        return MultiDay;
      case 'AddNote':
        return AddNote;
      case 'StartDate':
        return StartDate;
      case 'EndDate':
        return EndDate;
      case 'AttachFile':
        return AttachFile;
      case 'AttachDoc':
        return AttachDoc;
      case 'AttachDocDesc':
        return AttachDocDesc;
      case 'NoAttachment':
        return NoAttachment;
      case 'AddAttachment':
        return AddAttachment;
      case 'AddAttachment2':
        return AddAttachment2;
      default:
        return key;
    }
  }
}
