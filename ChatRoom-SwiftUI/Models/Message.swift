import Foundation

struct Message: Decodable, Identifiable {
    let id: UUID
    let userUid: String
    let text: String
    let photoURL: String
    let createdAt: Date
    
    // Provide default values directly
    init(id: UUID = UUID(), userUid: String = "", text: String = "", photoURL: String = "", createdAt: Date = Date()) {
        self.id = id
        self.userUid = userUid
        self.text = text
        self.photoURL = photoURL
        self.createdAt = createdAt
    }
    
    func isFromCurrentUser() -> Bool {
        return true
    }
}


