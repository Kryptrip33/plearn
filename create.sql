CREATE TABLE airs (
    id SERIAL PRIMARY KEY,
    origin VARCHAR NOT NULL,
    destination VARCHAR NOT NULL,
    duration INTEGER NOT NULL
);

INSERT INTO airs 
    (origin,destination,duration)
    VALUES('New York','Lutsk',512);

INSERT INTO airs 
    (origin,destination,duration)
    VALUES('China','Lutsk',112);

INSERT INTO airs 
    (origin,destination,duration)
    VALUES('New York','lviv',552);

INSERT INTO airs 
    (origin,destination,duration)
    VALUES('New York','Rivne',522);

UPDATE airs
    SET duration = 430
    WHERE origin = 'New York'
    AND destination = 'Lutsk';

DELETE FROM airs
    WHERE destination = "Rivne";

SELECT origin, COUNT(*) FROM airs GROUP BY origin;

CREATE TABLE passangers (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    flight_id INTEGER REFERENCES airs
);

    INSERT INTO passangers (name,flight_id ) VALUES ('Ivan',1);
    INSERT INTO passangers (name,flight_id ) VALUES ('Stepan',3)
    INSERT INTO passangers (name,flight_id ) VALUES ('Kolya',4);
    INSERT INTO passangers (name,flight_id ) VALUES ('Genya',5);
    INSERT INTO passangers (name,flight_id ) VALUES ('Petro',6);
    INSERT INTO passangers (name,flight_id ) VALUES ('Vasya',7);
    INSERT INTO passangers (name,flight_id ) VALUES ('Jan',2);
