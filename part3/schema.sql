CREATE TABLE User(
    id CHAR(36) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    is_admin BOOLEAN DEFAULT FALSE
);

CREATE TABLE Place(
    id CHAR(36) PRIMARY KEY,
    title VARCHAR(255),
    description TEXT,
    price DECIMAL(10,2),
    latitude FLOAT,
    longitude FLOAT,
    owner_id CHAR(36) REFERENCES User(id)
);

CREATE TABLE Review(
    id CHAR(36) PRIMARY KEY,
    text TEXT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    user_id CHAR(36) REFERENCES User(id),
    place_id CHAR(36) REFERENCES Place(id),
    CONSTRAINT unique_user_place_review UNIQUE (user_id, place_id)
);

CREATE TABLE Amenity(
    id CHAR(36) PRIMARY KEY,
    name VARCHAR(255) UNIQUE
);

CREATE TABLE Place_Amenity(
    place_id CHAR(36) REFERENCES Place(id),
    amenity_id CHAR(36) REFERENCES Amenity(id),
    PRIMARY KEY(place_id, amenity_id)
);

INSERT INTO User VALUES
('36c9050e-ddd3-4c3b-9731-9f487208bbc1', 'Admin', 'HBnB',
'admin@hbnb.io', '$2a$12$gwsY56ZSv7GtxyjHoLgjs.RwEwmwHbjVbMWENLAN72PrgALLiatnG', 1);

INSERT INTO Amenity VALUES
    ('550e8400-e29b-41d4-a716-446655440000', 'WiFi'),
    ('678e8400-e29b-41d4-a716-446655440001', 'Swimming Pool'),
    ('789e8400-e29b-41d4-a716-446655440002', 'Air Conditioning');