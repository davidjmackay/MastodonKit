import Foundation

public struct Notifications {
    /// Fetches a user's notifications.
    ///
    /// - Returns: Resource for fetching a user's notifications.
    public static func all() -> NotificationsResource {
        return NotificationsResource(path: "/api/v1/notifications", parameters: nil, parse: NotificationsResource.parser)
    }

    /// Gets a single notification.
    ///
    /// - Parameter id: The notification id.
    /// - Returns: Resource for getting a single notification.
    public static func notification(id: Int) -> NotificationResource {
        return NotificationResource(path: "/api/v1/notifications/\(id)", parameters: nil, parse: NotificationResource.parser)
    }
}
