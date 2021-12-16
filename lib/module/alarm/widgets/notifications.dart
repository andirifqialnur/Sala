import 'package:awesome_notifications/awesome_notifications.dart';

import 'utilities.dart';

Future<void> alarmUpdateNotifications() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title:
          '${Emojis.light_diya_lamp + Emojis.paper_books} Sekarang waktunya menghafal',
      body: 'Sembarang',
      bigPicture: 'https://picsum.photos/200/300',
      notificationLayout: NotificationLayout.BigPicture,
    ),
  );
}

Future<void> alarmScheduledNotifications(
    NotificationWeekAndTime notificationSchedule) async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'scheduled_channel',
      title:
          '${Emojis.light_flashlight + Emojis.paper_books} Sekarang Waktunya',
      body: 'Sekarang waktu untuk menghafal',
      notificationLayout: NotificationLayout.Default,
    ),
    actionButtons: [
      NotificationActionButton(
        key: 'TANDAI',
        label: 'Tandai',
      ),
    ],
    schedule: NotificationCalendar(
      repeats: true,
      weekday: notificationSchedule.dayOfTheWeek,
      hour: notificationSchedule.timeOfDay.hour,
      minute: notificationSchedule.timeOfDay.minute,
      second: 0,
      millisecond: 0,
    ),
  );
}
