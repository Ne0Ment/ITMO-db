CREATE TABLE People ( 
    person_id SERIAL PRIMARY KEY, 
    person_name varchar(50) NOT NULL 
);

CREATE TABLE Friendship (
    person1_id int PRIMARY KEY REFERENCES People(person_id), 
    person2_id int PRIMARY KEY REFERENCES People(person_id) 
);

CREATE TABLE Observings ( 
    observer_id int PRIMARY KEY REFERENCES People(person_id), 
    subject_id int PRIMARY KEY REFERENCES People(person_id) 
);

CREATE TABLE Feelings (
    feeling_id SERIAL PRIMARY KEY, 
    feeling_name varchar(50) NOT NULL
);

CREATE TABLE FeelingCharacteristics ( 
    characteristic_id SERIAL PRIMARY KEY, 
    feeling_id int REFERENCES Feelings(feeling_id), 
    characteristic_name varchar(50) NOT NULL
);

CREATE TABLE Senses ( 
    person_id int PRIMARY KEY REFERENCES People(person_id), 
    feeling_id int PRIMARY KEY REFERENCES Feelings(feeling_id) 
);

CREATE TABLE Ability (
    ability_id SERIAL PRIMARY KEY,
    ability_name varchar(50) NOT NULL UNIQUE
);

CREATE TABLE Knows (
    ability_id int PRIMARY KEY REFERENCES Ability(ability_id),
    person_id int PRIMARY KEY REFERENCES People(person_id)
);