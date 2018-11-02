use dogpsychologist;

-- EVENTS
INSERT INTO Events (`title`, `start`, `end`, `description`, `location`, `isPrivate`) 
VALUES ('Halloween Party', '2018-10-31', '2018-10-31', 'Spooky Costume Party', 'Perryville Battlefield', TRUE);
INSERT INTO Events (`title`, `start`, `end`, `description`, `location`, `isPrivate`) 
VALUES ('Open Therapy Workshop', '2018-11-02', '2018-11-02', 'Relaxtion event', '252 E. Market', FALSE);
INSERT INTO Events (`title`, `start`, `end`, `description`, `location`, `isPrivate`) 
VALUES ('Company Thanksgiving', '2018-11-21', '2018-11-21', 'Turksgiving, eat all the foods!', 'RIVUE', TRUE);
INSERT INTO Events (`title`, `start`, `end`, `description`, `location`, `isPrivate`) 
VALUES ('Canine Carols', '2018-12-21', '2018-12-21', 'Doggos borkin carols', 'Waterfront Park', FALSE);
INSERT INTO Events (`title`, `start`, `end`, `description`, `location`, `isPrivate`) 
VALUES ('New Years!', '2018-12-31', '2019-01-01', 'Celebratin the New Year', 'Max\'s House', TRUE);
INSERT INTO Events (`title`, `start`, `end`, `description`, `location`, `isPrivate`) 
VALUES ('Puppy Hangover Cure Clinic', '2019-01-01', '2019-01-01', 'Nurse your hangovers with puppies', '4th Street live', FALSE);

-- ROLES
INSERT INTO Roles (`roleType`) VALUES ('ROLE_ADMIN');
INSERT INTO Roles (`roleType`) VALUES ('ROLE_HR');
INSERT INTO Roles (`roleType`) VALUES ('ROLE_EVENTS');
INSERT INTO Roles (`roleType`) VALUES ('ROLE_USER');

-- CATEGORIES
INSERT INTO Categories (`name`) VALUES ('Meeting');
INSERT INTO Categories (`name`) VALUES ('Team Building');
INSERT INTO Categories (`name`) VALUES ('Dog Party');

-- EMPLOYEES
INSERT INTO Employees 
(`firstName`, `lastName`, `title`, `partner`, `interests`, `hireDate`, `roleID`, `username`, `password`)
VALUES ('Max', 'Meador', 'Owner', 'Morris', 'dogs, psychology, analytics', '2001-01-01', '1', 'mmeador', 'password01');
INSERT INTO Employees 
(`firstName`, `lastName`, `title`, `partner`, `interests`, `hireDate`, `roleID`, `username`, `password`)
VALUES ('Chance', 'Winston', 'Dog Psychologist', 'Steena', 'hockey, beer, doughnuts', '2018-08-14', '4', 'cwinston', 'password02');
INSERT INTO Employees 
(`firstName`, `lastName`, `title`, `partner`, `interests`, `hireDate`, `roleID`, `username`, `password`)
VALUES ('Libby', 'Carson', 'Dog Specialist', 'Ada', 'puppies, cats, skydiving', '2001-05-01', '3', 'lcarson', 'password03');
INSERT INTO Employees 
(`firstName`, `lastName`, `title`, `partner`, `interests`, `hireDate`, `roleID`, `username`, `password`)
VALUES ('Leo', 'Elder', 'Dog Whisperer', 'TigerLily', 'wine, self-help books, jazz', '2017-06-25', '2', 'lelder', 'password04');


-- EVENTS CATEGORIES
INSERT INTO `EventsCategories` (`eventID`, `categoryID`) VALUES ('1', '3');
INSERT INTO `EventsCategories` (`eventID`, `categoryID`) VALUES ('2', '1');
INSERT INTO `EventsCategories` (`eventID`, `categoryID`) VALUES ('3', '2');
INSERT INTO `EventsCategories` (`eventID`, `categoryID`) VALUES ('4', '2');
INSERT INTO `EventsCategories` (`eventID`, `categoryID`) VALUES ('5', '1');
INSERT INTO `EventsCategories` (`eventID`, `categoryID`) VALUES ('6', '3');


