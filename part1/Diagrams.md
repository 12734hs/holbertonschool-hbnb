# HBnB Project Diagrams

Этот файл содержит все диаграммы для проекта **HBnB**:  
- Пакетная диаграмма высокого уровня  
- Диаграмма классов бизнес-логики  
- Диаграммы последовательности для API вызовов  

---

## 1️⃣ High-Level Package Diagram

```mermaid
classDiagram
    direction TB
    %% --- Presentation Layer ---
    class PresentationLayer {
        +UserService
        +PlaceService
        +ReviewService
        +AmenityService
        +API Endpoints
    }

    %% --- Business Logic Layer ---
    class BusinessLogicLayer {
        +User
        +Place
        +Review
        +Amenity
        +validate_user()
        +calculate_rating()
    }

    %% --- Persistence Layer ---
    class PersistenceLayer {
        +UserRepository
        +PlaceRepository
        +ReviewRepository
        +AmenityRepository
        +DatabaseOperations()
    }

    %% --- Connections ---
    PresentationLayer --> BusinessLogicLayer : Facade Pattern
    BusinessLogicLayer --> PersistenceLayer : Database Operations
```mermaid
classDiagram
    %% --- User ---
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

    %% --- Place ---
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

    %% --- Review ---
    class Review {
        +UUID id
        +User user
        +Place place
        +string text
        +int rating
        +datetime created_at
        +datetime updated_at
    }

    %% --- Amenity ---
    class Amenity {
        +UUID id
        +string name
        +string description
        +datetime created_at
        +datetime updated_at
    }

    %% --- Relationships ---
    User "1" -- "0..*" Place : owns
    Place "1" -- "0..*" Review : has
    User "1" -- "0..*" Review : writes
    Place "0..*" -- "0..*" Amenity : provides
