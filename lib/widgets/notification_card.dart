import 'package:flutter/material.dart';

enum NotificationType { message, system, reminder, profile }

class NotificationCard extends StatelessWidget {
  final String title;
  final String message;
  final String time;
  final NotificationType type;
  final bool isUnread;
  final VoidCallback onTap;

  const NotificationCard({
    super.key,
    required this.title,
    required this.message,
    required this.time,
    required this.type,
    required this.isUnread,
    required this.onTap,
  });

  IconData _getIcon() {
    switch (type) {
      case NotificationType.message:
        return Icons.message;
      case NotificationType.system:
        return Icons.system_update;
      case NotificationType.reminder:
        return Icons.alarm;
      case NotificationType.profile:
        return Icons.person;
    }
  }

  Color _getColor() {
    switch (type) {
      case NotificationType.message:
        return Colors.blue;
      case NotificationType.system:
        return Colors.orange;
      case NotificationType.reminder:
        return Colors.purple;
      case NotificationType.profile:
        return Colors.teal;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: isUnread ? 4 : 1,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: isUnread ? Border.all(color: _getColor(), width: 1) : null,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: _getColor().withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  _getIcon(),
                  color: _getColor(),
                  size: 24,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontWeight:
                                isUnread ? FontWeight.bold : FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                        if (isUnread)
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: _getColor(),
                              shape: BoxShape.circle,
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      message,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
