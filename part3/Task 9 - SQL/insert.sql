-- password: 123
INSERT INTO User VALUES
    ('36c9050e-ddd3-4c3b-9731-9f487208bbc1', 'Admin', 'HBnB',
    'admin@hbnb.io', '$2a$12$viHOZupV8UKRPevXiddv3e6XQNLS0qeAc4cztUAbKu3Pesc4k7j9S', 1),
    ('748f8ad8-40c6-4a5f-9870-e2d450f11639', 'Sabir', 'Safarov',
    'ss12734@hbnb.io', '$2a$12$34665fFaRMMu.eVQWnBq6eNsSO1F/2AYaPAsID7s5myAo98xqTblu', 0),
    ('7119be22-fcd8-49d8-8c63-d9486fd5656d', 'Ramal', 'Pizduk',
    'rp23157@hbnb.io', '$2a$12$M21Xdyl1GO9ytYDzu3qPp.PRG6XLXihF7UkA1YMvrlTx8ibJXmsgK', 0),
    ('7e577817-9506-4dd8-8bae-39db23ad9af0', 'Celal', 'Petrska',
    'cp95326@hbnb.io', '$2a$12$VcuL6.Ig/kdDEne0oAxzf.DZoB1j4eNcN6Rbno1dISR/wsiK7aWF6', 0);

INSERT INTO Place VALUES
    ('0cfd1d34-e8dd-47fc-ae3a-c3b428bdb24d', 'Hilton-AZ', 'Its cool hotel',
    99.99, 56, -120, '36c9050e-ddd3-4c3b-9731-9f487208bbc1'),
    ('f896da5c-d326-4e41-99e2-fb8dc696be53', 'Celal-AZ', 'Its cool hotel of the Celal',
    399.99, 21, 168, '7e577817-9506-4dd8-8bae-39db23ad9af0');

INSERT INTO Review VALUES
    ('89e2944c-629d-4560-be39-fa2c4af53090', 'Its really cool hotel', 4,
    '7119be22-fcd8-49d8-8c63-d9486fd5656d', '0cfd1d34-e8dd-47fc-ae3a-c3b428bdb24d'),
    ('bfff8dd9-d6ea-48df-afe5-4996b6ce8502', 'Celal Sucks', 1,
    '748f8ad8-40c6-4a5f-9870-e2d450f11639', 'f896da5c-d326-4e41-99e2-fb8dc696be53');

INSERT INTO Amenity VALUES
    ('550e8400-e29b-41d4-a716-446655440000', 'WiFi'),
    ('678e8400-e29b-41d4-a716-446655440001', 'Swimming Pool'),
    ('789e8400-e29b-41d4-a716-446655440002', 'Air Conditioning');

INSERT INTO Place_Amenity VALUES
    ('0cfd1d34-e8dd-47fc-ae3a-c3b428bdb24d', '550e8400-e29b-41d4-a716-446655440000'),
    ('0cfd1d34-e8dd-47fc-ae3a-c3b428bdb24d', '678e8400-e29b-41d4-a716-446655440001'),
    ('0cfd1d34-e8dd-47fc-ae3a-c3b428bdb24d', '789e8400-e29b-41d4-a716-446655440002'),

    ('f896da5c-d326-4e41-99e2-fb8dc696be53', '550e8400-e29b-41d4-a716-446655440000'),
    ('f896da5c-d326-4e41-99e2-fb8dc696be53', '789e8400-e29b-41d4-a716-446655440002');