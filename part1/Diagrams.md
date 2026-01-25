# HBnB Project Diagrams

Этот файл содержит все диаграммы для проекта HBnB.

---

## 1️⃣ High-Level Package Diagram

```mermaid
classDiagram
    direction TB
    class PresentationLayer {
        +UserService
        +PlaceService
        +ReviewService
        +AmenityService
        +API Endpoints
    }
    class BusinessLogicLayer {
        +User
        +Place
        +Review
        +Amenity
        +validate_user()
        +calculate_rating()
    }
    class PersistenceLayer {
        +UserRepository
        +PlaceRepository
        +ReviewRepository
        +AmenityRepository
        +DatabaseOperations()
    }
    PresentationLayer --> BusinessLogicLayer : Facade Pattern
    BusinessLogicLayer --> PersistenceLayer : Database Operations

```mermaid
classDiagram
    class User {
        +UUID id
        +string name
        +string email
        +string password
        +datetime created_at
        +datetime updated_at
        +register()
        +login()
    }
    class Place {
        +UUID id
        +string name
        +string description
        +float price
        +User owner
        +datetime created_at
        +datetime updated_at
        +add_review(review)
        +calculate_rating()
    }
    class Review {
        +UUID id
        +User user
        +Place place
        +string text
        +int rating
        +datetime created_at
        +datetime updated_at
    }
    class Amenity {
        +UUID id
        +string name
        +string description
        +datetime created_at
        +datetime updated_at
    }
    User "1" -- "0..*" Place : owns
    Place "1" -- "0..*" Review : has
    User "1" -- "0..*" Review : writes
    Place "0..*" -- "0..*" Amenity : provides

sequenceDiagram
    participant User
    participant API
    participant BusinessLogic
    participant Database
    User->>API: Register(user data)
    API->>BusinessLogic: validate_user_data()
    BusinessLogic->>Database: save_user()
    Database-->>BusinessLogic: confirmation
    BusinessLogic-->>API: return success
    API-->>User: registration success
