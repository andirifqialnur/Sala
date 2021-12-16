import 'package:sala_app_project/colors.dart';
import 'package:sala_app_project/module/testAlarm/model/alarm_info.dart';

List<AlarmInfo> alarms = [
  AlarmInfo(DateTime.now().add(Duration(hours: 1)),
      description: 'Office', gradientColors: GradientColors.sunset),
  AlarmInfo(DateTime.now().add(Duration(hours: 2)),
      description: 'Sport', gradientColors: GradientColors.mango),
];
