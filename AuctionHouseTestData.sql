USE AuctionHouse;
GO

INSERT INTO Persons (FirstName, LastName) VALUES
('John', 'Doe'),
('Jane', 'Doe'),
('Alice', 'Smith'),
('Bob', 'Johnson'),
('Charlie', 'Brown'),
('Emily', 'Clark'),
('Frank', 'Lloyd'),
('Grace', 'Hopper');

INSERT INTO Sellers (SellerID, PersonID) VALUES
(1, 1),
(2, 3),
(3, 5),
(4, 7);

INSERT INTO Buyers (BuyerID, PersonID) VALUES
(1, 2),
(2, 4),
(3, 6),
(4, 8);

INSERT INTO Countries (CountryName) VALUES
('United States'),
('Canada'),
('United Kingdom'),
('Australia');

INSERT INTO Cities (CityName, CountryID) VALUES
('New York', 1),
('Toronto', 2),
('London', 3),
('Sydney', 4);

INSERT INTO Auctions (AuctionDate, AddressLine, CityID, SpecialNotes) VALUES
('2024-01-15T19:00:00', '123 Auction Lane', 1, 'Evening Auction'),
('2024-02-20T19:00:00', '789 Auction Blvd', 2, 'Online Only'),
('2024-03-25T19:00:00', '456 Auction St', 3, 'VIP Event'),
('2024-04-30T19:00:00', '321 Auction Road', 4, 'Charity Auction');

INSERT INTO Items (ItemName, ItemDescription) VALUES
('Antique Vase', 'A beautiful old vase.'),
('Painting', 'Landscape painting by a famous artist.'),
('Sculpture', 'Modern art sculpture.'),
('Vintage Car', 'Classic car in mint condition.');

INSERT INTO LotNumbers (LotNumber, AuctionID, ItemID) VALUES
(101, 1, 1),
(102, 1, 2),
(103, 2, 3),
(104, 2, 4),
(105, 3, 1),
(106, 3, 2),
(107, 4, 3),
(108, 4, 4);

INSERT INTO SellerItems (SellerID, ItemID, StartingPrice) VALUES
(1, 1, 500.00),
(2, 2, 1500.00),
(3, 3, 2000.00),
(4, 4, 30000.00),
(1, 3, 2500.00),
(2, 4, 35000.00),
(3, 1, 550.00),
(4, 2, 1600.00);

INSERT INTO Sales (LotNumberID, BuyerID, ActualPrice) VALUES
(1, 1, 550.00),
(2, 2, 1600.00),
(3, 3, 2100.00),
(4, 4, 30500.00),
(5, 1, 600.00),
(6, 2, 1650.00),
(7, 3, 2200.00),
(8, 4, 31000.00);
