CREATE TABLE Sensor(
  id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name varchar(100) NOT NULL UNIQUE
);

CREATE TABLE Measurement(
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    value double precision not null,
    raining boolean NOT NULL,
    measurement_date_time timestamp NOT NULL,
    sensor varchar(100) REFERENCES Sensor(name)
);