import 'package:flutter/material.dart';
import '../widgets/notification_card.dart';
import '../widgets/notification_header.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Handle notification settings
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NotificationHeader(
              unreadCount: 3,
              onClearAll: () {
                // Handle clear all notifications
              },
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  NotificationCard(
                    title: 'New Message',
                    message: 'You have received a new message from John',
                    time: '2 minutes ago',
                    type: NotificationType.message,
                    isUnread: true,
                    onTap: () {
                      // Handle notification tap
                    },
                  ),
                  NotificationCard(
                    title: 'System Update',
                    message: 'A new system update is available',
                    time: '1 hour ago',
                    type: NotificationType.system,
                    isUnread: true,
                    onTap: () {
                      // Handle notification tap
                    },
                  ),
                  NotificationCard(
                    title: 'Reminder',
                    message: 'Meeting with team at 3 PM',
                    time: '2 hours ago',
                    type: NotificationType.reminder,
                    isUnread: true,
                    onTap: () {
                      // Handle notification tap
                    },
                  ),
                  NotificationCard(
                    title: 'Profile Update',
                    message: 'Your profile has been updated successfully',
                    time: 'Yesterday',
                    type: NotificationType.profile,
                    isUnread: false,
                    onTap: () {
                      // Handle notification tap
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
