SELECT
    P.FirstName,
    P.LastName,
    S.SellerID,
    SI.StartingPrice,
    I.ItemName,
    I.ItemDescription,
    A.AuctionDate,
    A.AddressLine,
    C.CityName,
    CO.CountryName,
    L.LotNumber,
    B.BuyerID,
    SA.ActualPrice,
    A.SpecialNotes
FROM Persons P
JOIN Sellers S ON P.PersonID = S.PersonID
JOIN SellerItems SI ON S.SellerID = SI.SellerID
JOIN Items I ON SI.ItemID = I.ItemID
JOIN LotNumbers L ON I.ItemID = L.ItemID
JOIN Auctions A ON L.AuctionID = A.AuctionID
JOIN Cities C ON A.CityID = C.CityID
JOIN Countries CO ON C.CountryID = CO.CountryID
JOIN Sales SA ON L.LotNumberID = SA.LotNumberID
JOIN Buyers B ON SA.BuyerID = B.BuyerID
ORDER BY P.PersonID, S.SellerID, B.BuyerID, A.AuctionDate;


SELECT
    I.ItemName,
    I.ItemDescription,
    P.FirstName,
    P.LastName,
    SI.StartingPrice,
    L.LotNumber,
    A.AuctionDate,
    A.AddressLine AS AuctionAddress,
    A.SpecialNotes AS AuctionNotes
FROM Items I
JOIN SellerItems SI ON I.ItemID = SI.ItemID
JOIN Sellers S ON SI.SellerID = S.SellerID
JOIN Persons P ON S.PersonID = P.PersonID
JOIN LotNumbers L ON I.ItemID = L.ItemID
JOIN Auctions A ON L.AuctionID = A.AuctionID
ORDER BY L.LotNumber;


SELECT
    PBuyer.FirstName AS BuyerFirstName,
    PBuyer.LastName AS BuyerLastName,
    I.ItemName,
    I.ItemDescription,
    PSeller.FirstName AS SellerFirstName,
    PSeller.LastName AS SellerLastName,
    A.AuctionDate,
    A.AddressLine AS AuctionAddress,
    A.SpecialNotes AS AuctionNotes,
    C.CityName AS AuctionCity,
    Co.CountryName AS AuctionCountry,
    SI.StartingPrice,
    S.ActualPrice
FROM Sales S
JOIN Buyers B ON S.BuyerID = B.BuyerID
JOIN Persons PBuyer ON B.PersonID = PBuyer.PersonID
JOIN LotNumbers L ON S.LotNumberID = L.LotNumberID
JOIN Items I ON L.ItemID = I.ItemID
JOIN SellerItems SI ON I.ItemID = SI.ItemID
JOIN Sellers Sell ON SI.SellerID = Sell.SellerID
JOIN Persons PSeller ON Sell.PersonID = PSeller.PersonID
JOIN Auctions A ON L.AuctionID = A.AuctionID
JOIN Cities C ON A.CityID = C.CityID
JOIN Countries Co ON C.CountryID = Co.CountryID
ORDER BY S.SaleID;




