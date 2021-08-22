DROP DATABASE MMA;
CREATE DATABASE MMA;
USE MMA;

DROP TABLE Strikes;
DROP TABLE Takedowns;
DROP TABLE Submissions;
DROP TABLE Combos;

CREATE TABLE Combos(
	Strikes varchar(255),
	Takedowns varchar (255),
	Submissions varchar (255)
	);

CREATE TABLE Strikes(
	StrikeID INT,
	StrikeType varchar(255)
	);

CREATE TABLE Takedowns(
	TakedownID INT,
	TakedownType varchar(255)
	);

CREATE TABLE Submissions(
	SubmissionID INT,
	SubmissionType varchar(255)
	);

INSERT INTO Strikes(StrikeID, StrikeType)
	VALUES
		('1', 'Jab'),
		('2', 'Cross'),
		('3', 'UpperCut'),
		('4', 'LegKick'),
		('5', 'Elbow');

INSERT INTO Takedowns(TakedownID, TakedownType)
	VALUES
		('1', 'SingleLeg'),
		('2', 'DoubleLeg'),
		('3', 'FireManCarry'),
		('4', 'LegTrip'),
		('5', 'AnklePick');

INSERT INTO Submissions(SubmissionID, SubmissionType)
	VALUES
		('1', 'RearNakedChoke'),
		('2', 'ArmBar'),
		('3', 'Kimura'),
		('4', 'Triangle'),
		('5', 'Guillotine');


SELECT 
	StrikeType, SubmissionType, TakedownType
FROM	
	Strikes
FULL OUTER JOIN Submissions ON Strikes.StrikeID = Submissions.SubmissionID
FULL OUTER JOIN Takedowns ON Strikes.StrikeID = Takedowns.TakedownID;
