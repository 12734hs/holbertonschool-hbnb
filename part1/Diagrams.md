classDiagram
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
