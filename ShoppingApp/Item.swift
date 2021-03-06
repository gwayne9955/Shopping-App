import Foundation
import UIKit

class Item {
    private var name: String
    private var image: UIImage?
    private var sizes: [String]?
    private var price: Double
    private var rating: Double
    private var description: String
    private var inStock: Bool
    private var id: String
    private var category: String?
    private var buzzCollection: [String : BuzzEntry]?
    private var likedBy: [String : User]
    private var boughtBy: [String : User]

    init(name: String, image: UIImage?, sizes: [String]?, price: Double, rating: Double, description: String, inStock: Bool, id: String, category: String?) {
        self.name = name
        self.image = image
        self.sizes = sizes
        self.price = price
        self.rating = rating
        self.description = description
        self.inStock = inStock
        self.id = id
        self.category = category
        self.buzzCollection = [String : BuzzEntry]()
        self.likedBy = [String : User]()
        self.boughtBy = [String : User]()
    }

    static func ==(lhs: Item, rhs: Item) -> Bool {
        return lhs.id == rhs.id
    }
    
    func getName() -> String {
        return self.name
    }
    
    func setName(name: String) -> String {
        self.name = name
        return self.name
    }
    
    func getImage() -> UIImage? {
        return self.image
    }
    
    func setImage(image: UIImage?) -> UIImage? {
        self.image = image
        return self.image
    }
    
    func getSizes() -> [String]? {
        return self.sizes
    }
    
    func setSizes(sizes: [String]?) -> [String]? {
        self.sizes = sizes
        return self.sizes
    }
    
    func getPrice() -> Double {
        return self.price
    }
    
    func setPrice(price: Double) -> Double {
        self.price = price
        return self.price
    }
    
    func getRating() -> Double {
        return self.rating
    }
    
    func setRating(rating: Double) -> Double {
        self.rating = rating
        return self.rating
    }
    
    func getDescription() -> String {
        return self.description
    }
    
    func setDescription(description: String) -> String {
        self.description = description
        return self.description
    }
    
    func getInStock() -> Bool {
        return self.inStock
    }
    
    func setInStock(inStock: Bool) -> Bool {
        self.inStock = inStock
        return self.inStock
    }
    
    func getId() -> String {
        return self.id
    }
    
    func setId(id: String) -> String {
        self.id = id
        return self.id
    }
    
    func getCategory() -> String? {
        return self.category
    }
    
    func setCategory(category: String?) -> String? {
        self.category = category
        return self.category
    }
    
    func getBuzzCollection() -> [String : BuzzEntry]? {
        return self.buzzCollection
    }
    
    func setBuzzCollection(buzzCollection: [String : BuzzEntry]?) -> [String : BuzzEntry]? {
        self.buzzCollection = buzzCollection
        return self.buzzCollection
    }
    
    func getLikedBy() -> [String : User] {
        return self.likedBy
    }

    func setLikedBy(users: [String : User]) -> [String : User] {
        self.likedBy = users
        return self.likedBy
    }

    func getBoughtBy() -> [String : User] {
        return self.boughtBy
    }

    func setBoughtBy(boughtBy: [String : User]) -> [String : User] {
        self.boughtBy = boughtBy
        return self.boughtBy
    }

    func addUserToLikedBy(user: User) {
        self.likedBy[user.getId()] = user
    }
    
    func removeUserFromLikedBy(user: User) -> [String : User] {
        self.likedBy.removeValue(forKey: user.getId())
        return self.likedBy
    }

    func addUserToBoughtBy(user: User) {
        self.boughtBy[user.getId()] = user
    }
    
    func removeUserFromBoughtBy(user: User) -> [String : User] {
        self.boughtBy.removeValue(forKey: user.getId())
        return self.boughtBy
    }

}
