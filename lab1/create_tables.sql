CREATE TABLE People ( 
    person_id SERIAL PRIMARY KEY, 
    person_name varchar(50) NOT NULL 
);

CREATE TABLE Friendship (
    id SERIAL PRIMARY KEY,
    person1_id int REFERENCES People(person_id), 
    person2_id int REFERENCES People(person_id) 
);

CREATE TABLE Observings ( 
    observer_id int REFERENCES People(person_id) ON DELETE CASCADE, 
    subject_id int REFERENCES People(person_id) ON DELETE CASCADE,
    PRIMARY KEY (observer_id, subject_id)
);

CREATE TABLE Feelings (
    feeling_id SERIAL PRIMARY KEY, 
    feeling_name varchar(50) NOT NULL
);

CREATE TABLE FeelingCharacteristics ( 
    characteristic_id SERIAL PRIMARY KEY, 
    feeling_id int REFERENCES Feelings(feeling_id) ON DELETE CASCADE, 
    characteristic_name varchar(50) NOT NULL
);

CREATE TABLE Senses ( 
    person_id int REFERENCES People(person_id) ON DELETE CASCADE, 
    feeling_id int REFERENCES Feelings(feeling_id) ON DELETE CASCADE,
    PRIMARY KEY (person_id, feeling_id)
);

CREATE TABLE Ability (
    ability_id SERIAL PRIMARY KEY,
    ability_name varchar(50) NOT NULL UNIQUE
);

CREATE TABLE Knows (
    ability_id int REFERENCES Ability(ability_id) ON DELETE CASCADE,
    person_id int REFERENCES People(person_id) ON DELETE CASCADE,
    PRIMARY KEY (ability_id, person_id)
);