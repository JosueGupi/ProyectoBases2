CREATE TABLE Employee (
    idEmployee int,
    idJobType int,
    FirstName varchar(16),
    LastName varchar(16),
    LocalSalary int,
    DollarSalary int
);
CREATE TABLE EmployeeRating (
    idEmployeeRating int,
    idEmployee int,
    Rating int,
    Commentary varchar(512),
    Username varchar(16)
);
CREATE TABLE Delivery (
    idDelivery int,
    idEmployee int,
    idSale int,
    idPreparation int,
    Country varchar(16)
);
CREATE TABLE JobType (
    idJobType int,
    JobName varchar(16)
);
CREATE TABLE Conversation (
    idConversation int,
    idEmployeeRating int,
    Username varchar(32),
    DateC date,
    Commentary varchar(512)
);
CREATE TABLE Preparation (
    idPreparation int,
    DateC date,
    Country varchar(16)
);