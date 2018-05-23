DELETE FROM campus_translation;
DELETE FROM grade_translation;
DELETE FROM grade;
DELETE FROM campus;
DELETE FROM region;
DELETE FROM state;
DELETE FROM district;
DELETE FROM entity;
DELETE FROM county;
DELETE FROM language;
DELETE FROM campus_grades;

INSERT INTO grade VALUES
    (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12), (13);

INSERT INTO language VALUES
    (1, 'English', 'en'),
    (2, 'Spanish', 'es');
    
INSERT INTO grade_translation VALUES
    (1, 1, '1', 'Grade 1'),
    (2, 1, '2', 'Grade 2'),
    (3, 1, '3', 'Grade 3'),
    (4, 1, '4', 'Grade 4'),
    (5, 1, '5', 'Grade 5'),
    (6, 1, '6', 'Grade 6'),
    (7, 1, '7', 'Grade 7'),
    (8, 1, '8', 'Grade 8'),
    (9, 1, '9', 'Grade 9'),
    (10, 1, '10', 'Grade 10'),
    (11, 1, '11', 'Grade 11'),
    (12, 1, '12', 'Grade 12'),
    (13, 1, 'K', 'Kindergarten'),
    (1, 2, '1', 'Grado 1'),
    (2, 2, '2', 'Grado 2'),
    (3, 2, '3', 'Grado 3'),
    (4, 2, '4', 'Grado 4'),
    (5, 2, '5', 'Grado 5'),
    (6, 2, '6', 'Grado 6'),
    (7, 2, '7', 'Grado 7'),
    (8, 2, '8', 'Grado 8'),
    (9, 2, '9', 'Grado 9'),
    (10, 2, '10', 'Grado 10'),
    (11, 2, '11', 'Grado 11'),
    (12, 2, '12', 'Grado 12'),
    (13, 2, 'K', 'Jardín de infancia');
    
INSERT INTO county VALUES
    ('phila', 'Philadelphia');

INSERT INTO entity VALUES
    ('1', 'pa', 'Pennslyvania', 'state'),
    ('2', 'psd', 'Philadelphia School District', 'district'),
    ('3', 'tembo-high-school', 'Tembo High School', 'campus'),
    ('4', 'tembo-elementary-school', 'Tembo Elementary School', 'campus'),
    ('5', 'tembo-middle-school', 'Tembo Middle School', 'campus'),
    ('6', 'tembo-charter-school', 'Tembo Charter School', 'campus'),
    ('7', 'se-pa', 'Southeastern Pennsylvania', 'region'),
    ('8', 'empty-tembo-school-district', 'Empty Tembo School District', 'district'),
    ('9', 'empty-tembo-school', 'Empty Tembo School', 'campus'),;
    
INSERT INTO state VALUES
    ('1', 'PA');
    
INSERT INTO region VALUES
    ('7', '1');

INSERT INTO district VALUES
    ('2',
     'district@philasd.edu',
     '2156667766',
     'Rocky Balboa',
     'https://philasd.edu',
     '440 N Broad St',
     'Philadelphia',
     'PA',
     '19130',
     '2345',
     39.960725,
     -75.162929,
     '440 N Broad St',
     'Philadelphia',
     'PA',
     '19130',
     '2345',
     39.960725,
     -75.162929,
     NULL,
     NULL,
     NULL,
     'phila',
     '7'),
    ('8',
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     'phila',
     '7');

INSERT INTO campus VALUES
    ('3',
     'seymour.skinner@tembohighschool.com',
     '2155551212', 
     'Seymour Skinner', 
     'High School', 
     'https://tembohighschool.com', 
     '1639 N Hancock St',
     'Philadelphia',
     'PA',
     '19122',
     '1234',
     39.975510,
     -75.136981,
     '1639 N Hancock St',
     'Philadelphia',
     'PA',
     '19122',
     '1234',
     39.975510,
     -75.136981,
     NULL,
     'phila',
     '2',
     NULL),
    ('4',
     'jane.schmoe@temboelementary.com',
     '2155552345', 
     'Jane Schmoe', 
     'Elementary School', 
     'https://temboelementary.com', 
     '127 W Oxford St',
     'Philadelphia',
     'PA',
     '19122',
     '1234',
     39.974875,
     -75.136022,
     '127 W Oxford St',
     'Philadelphia',
     'PA',
     '19122',
     '1234',
     39.974875,
     -75.136022,
     NULL,
     'phila',
     '2',
     NULL),
    ('5',
     'robocop@tembomiddleschools.com',
     '2155552222', 
     'Robocop', 
     'Middle School', 
     'https://tembomiddleschool.com',
     '600 E Thompson St',
     'Philadelphia',
     'PA',
     '19125',
     '1234',
     39.972831,
     -75.126991,
     '600 E Thompson St',
     'Philadelphia',
     'PA',
     '19125',
     '1234',
     39.972831,
     -75.126991,
     NULL,
     'phila',
     '2',
     NULL),
    ('6',
     'earl.campbell@tembocharterschool.com',
     '2155553333', 
     'Earl Campbell', 
     'Charter School', 
     'https://tembocharterschool.com', 
     '4700 Wissahickon Ave',
     'Philadelphia',
     'PA',
     '19144',
     '1234',
     40.015953,
     -75.172414,
     '4700 Wissahickon Ave',
     'Philadelphia',
     'PA',
     '19144',
     '1234',
     40.015953,
     -75.172414,
     1,
     'phila',
     '2',
     NULL),
    ('9',
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     NULL,
     'phila',
     '2',
     NULL);
     
INSERT INTO campus_translation VALUES
    ('3', 1),
    ('3', 2),
    ('4', 1),
    ('4', 2),
    ('5', 1),
    ('5', 2),
    ('6', 1),
    ('6', 2),
    ('9', 1),
    ('9', 2);     
    
INSERT INTO campus_grades VALUES
    ('3', 9, 1),
    ('3', 10, 2),
    ('3', 11, 3),
    ('3', 12, 4),
    ('4', 13, 1),
    ('4', 1, 2),
    ('4', 2, 3),
    ('4', 3, 4),
    ('4', 4, 5),
    ('4', 5, 6),
    ('5', 6, 1),
    ('5', 7, 2),
    ('5', 8, 3),
    ('6', 13, 1),
    ('6', 1, 2),
    ('6', 2, 3),
    ('6', 3, 4),
    ('6', 4, 5),
    ('6', 5, 6),
    ('6', 6, 7),
    ('6', 7, 8),
    ('6', 8, 9),
    ('6', 9, 10),
    ('6', 10, 11),
    ('6', 11, 12),
    ('6', 12, 13);
    