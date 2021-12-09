// ignore_for_file: unused_element, unused_field, camel_case_types, annotate_overrides, prefer_single_quotes, non_constant_identifier_names
// GENERATED FILE, do not edit!
import 'package:i69n/i69n.dart' as i69n;
import 'translations.i69n.dart';

String get _languageCode => 'ar';
String get _localeName => 'ar';

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

class Translations_ar extends Translations {
  const Translations_ar();
  CommonTranslations_ar get Common => CommonTranslations_ar(this);
  HomeTranslations_ar get Home => HomeTranslations_ar(this);
  TaskCategoriesTranslations_ar get TaskCategories =>
      TaskCategoriesTranslations_ar(this);
  TaskTitlesTranslations_ar get TaskTitles => TaskTitlesTranslations_ar(this);
  SettingsTranslations_ar get Settings => SettingsTranslations_ar(this);
  LeaveRequestTranslations_ar get LeaveRequest =>
      LeaveRequestTranslations_ar(this);
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
        return super[key];
    }
  }
}

class CommonTranslations_ar extends CommonTranslations {
  final Translations_ar _parent;
  const CommonTranslations_ar(this._parent) : super(_parent);
  String get OK => "تمام";
  String get Done => "منجز";
  String get Cancel => "يلغي";
  String get Proceed => "نفذ";
  String get OperationSucess => "تمت العملية بنجاح";
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
        return super[key];
    }
  }
}

class HomeTranslations_ar extends HomeTranslations {
  final Translations_ar _parent;
  const HomeTranslations_ar(this._parent) : super(_parent);
  String get Welcome => "مرحبا";
  String get WelcomeMsg => "الوصول إلى جميع الخدمات المشتركة";
  String get HeaderMsg => "إلى مساحة العمل الخاصة بك";
  String get Dashboard => "لوحة القيادة";
  String get Reports => "التقارير";
  String get Profile => "مظهر جانبي";
  String get Settings => "الإعدادات";
  String get ShiftBannerTitle => "تفاصيل التحول";
  String get BannerButton => "عرض التفاصيل";
  String get ShiftBannerMsg =>
      "اعرض أوقات المناوبة المعينة لك أو اطلب تبديل توقيت المناوبة.";
  String get EmployeeServices => "خدمات الموظفين";
  String get MyTravel => "رحلتي";
  String get PendingReq => "الطلبات المعلقة";
  String get MissingSwipes => "الضربات المفقودين";
  String get LeavesBalance => "الأوراق المتبقية";
  String get TeamHierarchy => "التسلسل الهرمي لفريقك";
  String get ReportTo => "تقارير ل";
  String get ManagerTo => "مدير ل";
  String get BasicInfo => "معلومات اساسية";
  String get BasicInfoDesc => "انظر المعلومات الأساسية الخاصة بك هنا";
  String get DependentsInfo => "معلومات المعالين";
  String get DependentsInfoDesc => "انظر التفاصيل";
  String get EducationDetails => "تفاصيل التعليم";
  String get EducationDetailsDesc => "انظر تفاصيل التعليم الخاص بك هنا";
  String get PastExperience => "الخبرة السابقة";
  String get PastExperienceDesc => "انظر التفاصيل الخاصة بك هنا";
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
        return super[key];
    }
  }
}

class TaskCategoriesTranslations_ar extends TaskCategoriesTranslations {
  final Translations_ar _parent;
  const TaskCategoriesTranslations_ar(this._parent) : super(_parent);
  String get General => "عام";
  String get Report => "تقرير";
  String get Finance => "تمويل";
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
        return super[key];
    }
  }
}

class TaskTitlesTranslations_ar extends TaskTitlesTranslations {
  final Translations_ar _parent;
  const TaskTitlesTranslations_ar(this._parent) : super(_parent);
  String get AttendanceReport => "تقرير الحضور";
  String get LeaveReq => "طلب إجازة";
  String get FundsReq => "طلب الأموال";
  String get AdvanceReq => "طلب الدفع";
  String get AccessCardReq => "طلب بطاقة الدخول";
  String get TravelTicketReq => "طلب تذكرة سفر";
  String get TravelHistory => "تاريخ السفر";
  String get PendingReq => "طلب معلق";
  String get MissingSwipe => "الضربات الشديدة الفائتة";
  String get LeaveBalance => "رصيد الاجازات";
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
        return super[key];
    }
  }
}

class SettingsTranslations_ar extends SettingsTranslations {
  final Translations_ar _parent;
  const SettingsTranslations_ar(this._parent) : super(_parent);
  String get AppBarTitle => "إعدادات";
  String get Language => "اختر اللغة";
  String get AboutApp => "حول التطبيق";
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
        return super[key];
    }
  }
}

class LeaveRequestTranslations_ar extends LeaveRequestTranslations {
  final Translations_ar _parent;
  const LeaveRequestTranslations_ar(this._parent) : super(_parent);
  String get RequestOff => "طلب أيام إجازة";
  String get Type => "نوع";
  String get ChooseType => "اختر النوع";
  String get Casual => "مغادرة عادية";
  String get Sick => "أجازة مرضية";
  String get Vacation => "عطلة";
  String get Wedding => "إجازة الزفاف";
  String get Funeral => "مأتم";
  String get Duration => "مدة";
  String get ChooseLength => "اختر المدة";
  String get FullDay => "يوم كامل";
  String get HalfDay => "نصف يوم";
  String get MultiDay => "عدة أيام";
  String get AddNote => "اضف ملاحظة";
  String get StartDate => "تاريخ البدء";
  String get EndDate => "تاريخ الانتهاء";
  String get AttachFile => "التعلق";
  String get AttachDoc => "إرفاق وثيقة";
  String get AttachDocDesc =>
      "أضف بعض المستندات ليتم إرسالها كمرفق مع طلب الإجازة الخاص بك.";
  String get NoAttachment => "لا توجد ملفات مرفقة";
  String get AddAttachment => "إضافة مرفق";
  String get AddAttachment2 => "إضافة مرفق";
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
        return super[key];
    }
  }
}
