INSERT INTO People (person_id, person_name) VALUES (DEFAULT, 'Олвин');
INSERT INTO People (person_id, person_name) VALUES (DEFAULT, 'Хилвар');
INSERT INTO Feelings (feeling_id, feeling_name) VALUES (DEFAULT, 'Усталость');
INSERT INTO Ability (ability_id, ability_name) VALUES (DEFAULT, 'Внушение');

INSERT INTO Knows (ability_id, person_id) VALUES (1, 2);
INSERT INTO Observings (observer_id, subject_id) VALUES (2, 1);
INSERT INTO Friendship (person1_id, person2_id) VALUES (2, 1);
INSERT INTO Senses (person_id, feeling_id) VALUES (1, 1);
INSERT INTO Senses (person_id, feeling_id) VALUES (2, 1);
INSERT INTO FeelingCharacteristics (characteristic_id, feeling_id, characteristic_name) VALUES (DEFAULT, 1, 'приятное');