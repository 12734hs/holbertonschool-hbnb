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
