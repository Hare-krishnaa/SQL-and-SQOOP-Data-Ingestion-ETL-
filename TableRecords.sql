



START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Users` (`UserID`, `UserFName`, `UserLName`, `User_Type`, `Password`, `DateCreated`) VALUES ('US2874', 'Jack', 'Smith', 'B', 'LKEHDJK', '2011/08/02');
INSERT INTO `E_commerce_db`.`Users` (`UserID`, `UserFName`, `UserLName`, `User_Type`, `Password`, `DateCreated`) VALUES ('US2348', 'Nancy', 'Book', 'B', 'LHSBDJ', '2000/12/12');
INSERT INTO `E_commerce_db`.`Users` (`UserID`, `UserFName`, `UserLName`, `User_Type`, `Password`, `DateCreated`) VALUES ('US2123', 'Georges', 'Bienvenu', 'B', 'LKGCKF', '2016/03/21');
INSERT INTO `E_commerce_db`.`Users` (`UserID`, `UserFName`, `UserLName`, `User_Type`, `Password`, `DateCreated`) VALUES ('US2213', 'Ginette', 'Beauregard', 'B', 'KGHCY', '2012/03/02');
INSERT INTO `E_commerce_db`.`Users` (`UserID`, `UserFName`, `UserLName`, `User_Type`, `Password`, `DateCreated`) VALUES ('US2456', 'Elise', 'Fort', 'B', 'QOWUDHC', '2004/02/24');
INSERT INTO `E_commerce_db`.`Users` (`UserID`, `UserFName`, `UserLName`, `User_Type`, `Password`, `DateCreated`) VALUES ('US2784', 'Red', 'Forman', 'B', '97VIYGV', '2003/12/30');
INSERT INTO `E_commerce_db`.`Users` (`UserID`, `UserFName`, `UserLName`, `User_Type`, `Password`, `DateCreated`) VALUES ('US2098', 'Sean', 'Romero', 'B', 'OUVO8V', '2003/02/16');
INSERT INTO `E_commerce_db`.`Users` (`UserID`, `UserFName`, `UserLName`, `User_Type`, `Password`, `DateCreated`) VALUES ('US2498', 'Yung', 'Xi', 'B', 'Y8VP8VY', '2010/10/10');
INSERT INTO `E_commerce_db`.`Users` (`UserID`, `UserFName`, `UserLName`, `User_Type`, `Password`, `DateCreated`) VALUES ('US2124', 'Georges', 'Bienvenu', 'B', 'YVUOT7D', '2009/11/28');
INSERT INTO `E_commerce_db`.`Users` (`UserID`, `UserFName`, `UserLName`, `User_Type`, `Password`, `DateCreated`) VALUES ('US2895', 'Sarah', 'Mansour', 'B', 'P8YVUUG', '2017/07/02');
INSERT INTO `E_commerce_db`.`Users` (`UserID`, `UserFName`, `UserLName`, `User_Type`, `Password`, `DateCreated`) VALUES ('US2435', 'Daniel', 'Dam', 'B', '8IVYIGV', '2016/12/13');
INSERT INTO `E_commerce_db`.`Users` (`UserID`, `UserFName`, `UserLName`, `User_Type`, `Password`, `DateCreated`) VALUES ('US2654', 'Taylor', 'Swing', 'B', '8YVIKV', '2017/01/26');
INSERT INTO `E_commerce_db`.`Users` (`UserID`, `UserFName`, `UserLName`, `User_Type`, `Password`, `DateCreated`) VALUES ('US2193', 'Sell', 'Junk', 'S', 'pyg8p7', '2013/02/18');
INSERT INTO `E_commerce_db`.`Users` (`UserID`, `UserFName`, `UserLName`, `User_Type`, `Password`, `DateCreated`) VALUES ('US6381', 'Shop', 'Drop', 'S', 'P8EUBW', '2015/09/15');
INSERT INTO `E_commerce_db`.`Users` (`UserID`, `UserFName`, `UserLName`, `User_Type`, `Password`, `DateCreated`) VALUES ('US6283', 'Fun', 'Shop', 'S', 'LWIEYFG', '2003/03/24');

COMMIT;


START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Membership` (`MembershipID`, `MembershipType`,DateMembership) VALUES ('M1568', 'BUSINESS',now());
INSERT INTO `E_commerce_db`.`Membership` (`MembershipID`, `MembershipType`,DateMembership) VALUES ('M1318', 'STUDENT',now());
INSERT INTO `E_commerce_db`.`Membership` (`MembershipID`, `MembershipType`,DateMembership) VALUES ('M1458', 'STUDENT',now());
INSERT INTO `E_commerce_db`.`Membership` (`MembershipID`, `MembershipType`,DateMembership) VALUES ('M1178', 'PREMIUM',now());
INSERT INTO `E_commerce_db`.`Membership` (`MembershipID`, `MembershipType`,DateMembership) VALUES ('M1968', 'STUDENT',now());
INSERT INTO `E_commerce_db`.`Membership` (`MembershipID`, `MembershipType`,DateMembership) VALUES ('M1957', 'OLD AGE',now());
INSERT INTO `E_commerce_db`.`Membership` (`MembershipID`, `MembershipType`,DateMembership) VALUES ('M1322', 'STUDENT',now());
INSERT INTO `E_commerce_db`.`Membership` (`MembershipID`, `MembershipType`,DateMembership) VALUES ('M1298', 'PREMIUM',now());
INSERT INTO `E_commerce_db`.`Membership` (`MembershipID`, `MembershipType`,DateMembership) VALUES ('M1642', 'PREMIUM',now());
INSERT INTO `E_commerce_db`.`Membership` (`MembershipID`, `MembershipType`,DateMembership) VALUES ('M1884', 'PREMIUM',now());
INSERT INTO `E_commerce_db`.`Membership` (`MembershipID`, `MembershipType`,DateMembership) VALUES ('M1499', 'PREMIUM',now());
INSERT INTO `E_commerce_db`.`Membership` (`MembershipID`, `MembershipType`,DateMembership) VALUES ('M1867', 'STUDENT',now());

COMMIT;

START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Buyers` (`BuyerID`, `UserID`,`User_Type`, `MembershipID`, `FName`, `LName`, `Phone`, `Email`,DateBuyers) VALUES ('B3568', 'US2874', 'B', 'M1568', 'Jack', 'Smith', '676-876-0094', 'js@email.com',now());
INSERT INTO `E_commerce_db`.`Buyers` (`BuyerID`, `UserID`,`User_Type`, `MembershipID`, `FName`, `LName`, `Phone`, `Email`,DateBuyers) VALUES ('B3326', 'US2348',  'B','M1318', 'Nancy', 'Book', '555-868-8379', 'booknancy@other.com',now());
INSERT INTO `E_commerce_db`.`Buyers` (`BuyerID`, `UserID`, `User_Type`,`MembershipID`, `FName`, `LName`, `Phone`, `Email`,DateBuyers) VALUES ('B3465', 'US2123',  'B','M1458', 'Georges', 'Bienvenu', '555-098-7638', 'gbienvenu@email.com',now());
INSERT INTO `E_commerce_db`.`Buyers` (`BuyerID`, `UserID`, `User_Type`,`MembershipID`, `FName`, `LName`, `Phone`, `Email`,DateBuyers) VALUES ('B3680', 'US2213',  'B','M1178', 'Ginette', 'Beauregard', '514-098-8334', 'beauregard.ginette@other.com',now());
INSERT INTO `E_commerce_db`.`Buyers` (`BuyerID`, `UserID`, `User_Type`,`MembershipID`, `FName`, `LName`, `Phone`, `Email`,DateBuyers) VALUES ('B3432', 'US2456',  'B','M1968', 'Elise', 'Fort', '919-887-0965', 'elise.f@email.com',now());
INSERT INTO `E_commerce_db`.`Buyers` (`BuyerID`, `UserID`, `User_Type`,`MembershipID`, `FName`, `LName`, `Phone`, `Email`,DateBuyers) VALUES ('B3998', 'US2784', 'B', 'M1957', 'Red', 'Forman', '972-670-3345', 'redismad@email.com',now());
INSERT INTO `E_commerce_db`.`Buyers` (`BuyerID`, `UserID`, `User_Type`,`MembershipID`, `FName`, `LName`, `Phone`, `Email`,DateBuyers) VALUES ('B3656', 'US2098', 'B', NULL, 'Sean', 'Romero', '519-556-9422', 'sean.rom@other.com',now());
INSERT INTO `E_commerce_db`.`Buyers` (`BuyerID`, `UserID`, `User_Type`,`MembershipID`, `FName`, `LName`, `Phone`, `Email`,DateBuyers) VALUES ('B3442', 'US2498', 'B', NULL, 'Yung', 'Xi', '250-753-0094', 'xi.yung@email.com',now());
INSERT INTO `E_commerce_db`.`Buyers` (`BuyerID`, `UserID`, `User_Type`,`MembershipID`, `FName`, `LName`, `Phone`, `Email`,DateBuyers) VALUES ('B3235', 'US2895', 'B', 'M1642', 'Sarah', 'Mansour', '037-146-2742', 'sarahsarah@other.com',now());
INSERT INTO `E_commerce_db`.`Buyers` (`BuyerID`, `UserID`, `User_Type`,`MembershipID`, `FName`, `LName`, `Phone`, `Email`,DateBuyers) VALUES ('B3342', 'US2435', 'B', NULL, 'Daniel', 'Dam', '074-515-5458', 'ddam@email.com',now());
INSERT INTO `E_commerce_db`.`Buyers` (`BuyerID`, `UserID`, `User_Type`,`MembershipID`, `FName`, `LName`, `Phone`, `Email`,DateBuyers) VALUES ('B3765', 'US2654',  'B','M1867', 'Taylor', 'Swing', '012-3370697', 'swing@email.com',now());

COMMIT;


START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Department` (`DepartmentID`, `DepName`, `ContactFName`,DateDepartment) VALUES ('D1178', 'Electronics', 'John Doe',now());
INSERT INTO `E_commerce_db`.`Department` (`DepartmentID`, `DepName`, `ContactFName`,DateDepartment) VALUES ('D1183', 'Beauty', 'France Dupuis',now());
INSERT INTO `E_commerce_db`.`Department` (`DepartmentID`, `DepName`, `ContactFName`,DateDepartment) VALUES ('D1145', 'Fashion', 'Corinne Levis',now());
INSERT INTO `E_commerce_db`.`Department` (`DepartmentID`, `DepName`, `ContactFName`,DateDepartment) VALUES ('D1173', 'Home', 'Sarah Lola',now());
INSERT INTO `E_commerce_db`.`Department` (`DepartmentID`, `DepName`, `ContactFName`,DateDepartment) VALUES ('D1567', 'Books', 'Michael Grant',now());

COMMIT;


START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Product` (`ProductID`, `DepartmentID`, `Category`, `IDSKU`, `ProductName`, `Quantity`, `UnitPrice`, `Ranking`, `ProductDesc`, `UnitsInStock`, `UnitsInOrder`, `Picture`,DateProduct) VALUES ('PR4769', 'D1178', 'Tablet', 'SKU6789', 'Kindle Paperwhite', 1, 139.99, 767, 'Tablet with 6\" high-resolution display with builtin light', 3987, 200, 0x6B696E646C652E6A7067,now());
INSERT INTO `E_commerce_db`.`Product` (`ProductID`, `DepartmentID`, `Category`, `IDSKU`, `ProductName`, `Quantity`, `UnitPrice`, `Ranking`, `ProductDesc`, `UnitsInStock`, `UnitsInOrder`, `Picture`,DateProduct) VALUES ('PR4789', 'D1178', 'Laptop', 'SKUB00V', 'ASUS Chromebook C201', 1, 269.99, 18, '11.6 inch latop, navy blue', 4534, 445, 0x617375736368726F6D65626F6F6B2E706E67,now());
INSERT INTO `E_commerce_db`.`Product` (`ProductID`, `DepartmentID`, `Category`, `IDSKU`, `ProductName`, `Quantity`, `UnitPrice`, `Ranking`, `ProductDesc`, `UnitsInStock`, `UnitsInOrder`, `Picture`,DateProduct) VALUES ('PR4467', 'D1178', 'Adaptor', 'SKUGNXW', 'Poweradd power converter', 1, 29.99, 701, '2-outlet universal travel adapter', 5000, 20, 0x706F776572616464636F6E7665727465722E706E67,now());
INSERT INTO `E_commerce_db`.`Product` (`ProductID`, `DepartmentID`, `Category`, `IDSKU`, `ProductName`, `Quantity`, `UnitPrice`, `Ranking`, `ProductDesc`, `UnitsInStock`, `UnitsInOrder`, `Picture`,DateProduct) VALUES ('PR4192', 'D1183', 'Makeup', 'SKU9763', 'Maybelline New York Super Stay', 1, 9.96, 88, 'Matte ink lip color', 438, 300, 0x6D617962656C6C696E656E796C69702E6A7067,now());
INSERT INTO `E_commerce_db`.`Product` (`ProductID`, `DepartmentID`, `Category`, `IDSKU`, `ProductName`, `Quantity`, `UnitPrice`, `Ranking`, `ProductDesc`, `UnitsInStock`, `UnitsInOrder`, `Picture`,DateProduct) VALUES ('PR4298', 'D1183', 'Beauty appliances', 'SKU76G2', 'T3 Featherweight', 1, 246.92, 5, 'Hair dryer with 2 speed settings, 3 heat settings and a 2-year warranty', 87, 20, 0x543368616972647279657277686974652E706E67,now());
INSERT INTO `E_commerce_db`.`Product` (`ProductID`, `DepartmentID`, `Category`, `IDSKU`, `ProductName`, `Quantity`, `UnitPrice`, `Ranking`, `ProductDesc`, `UnitsInStock`, `UnitsInOrder`, `Picture`,DateProduct) VALUES ('PR4394', 'D1145', 'Sneakers', 'SKU8723', 'Under Armour Micro G running shoes', 1, 67.49, 12, 'Black running shoes with rubber sole & breathable mesh', 566, 66, 0x756E64657261726D6F7572626C61636B2E6A7067,now());
INSERT INTO `E_commerce_db`.`Product` (`ProductID`, `DepartmentID`, `Category`, `IDSKU`, `ProductName`, `Quantity`, `UnitPrice`, `Ranking`, `ProductDesc`, `UnitsInStock`, `UnitsInOrder`, `Picture`,DateProduct) VALUES ('PR4689', 'D1145', 'Jewelery', 'SKU7263', '10k Rose Gold plated white Gold Diamond ring', 1, 538.42, 83766, '0.75cttw, I-J Color, I2-I3 Clarity', 30, 4, 0x6469616D6F6E6472696E672E706E67,now());

COMMIT;




START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Reviews` (`ReviewID`, `ProductID`, `CustomerReview`, `Rating`,DateReviews) VALUES ('R517', 'PR4769', 'Great product.', 3,now());
INSERT INTO `E_commerce_db`.`Reviews` (`ReviewID`, `ProductID`, `CustomerReview`, `Rating`,DateReviews) VALUES ('R419', 'PR4192', 'Great opacity. Very matte.', 4,now());
INSERT INTO `E_commerce_db`.`Reviews` (`ReviewID`, `ProductID`, `CustomerReview`, `Rating`,DateReviews) VALUES ('R429', 'PR4467', 'hated it. went to get reimursed', 2,now());
INSERT INTO `E_commerce_db`.`Reviews` (`ReviewID`, `ProductID`, `CustomerReview`, `Rating`,DateReviews) VALUES ('R439', 'PR4394', 'Glad this shoe fit as well as it does.', 4,now());
INSERT INTO `E_commerce_db`.`Reviews` (`ReviewID`, `ProductID`, `CustomerReview`, `Rating`,DateReviews) VALUES ('R468', 'PR4689', 'I love the engagement ring!', 5,now());

COMMIT;


START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Discount` (`DiscountID`, `DiscountPrecent`,DateDiscount) VALUES ('DSCT10', 0.1,now());
INSERT INTO `E_commerce_db`.`Discount` (`DiscountID`, `DiscountPrecent`,DateDiscount) VALUES ('DSCT50', 0.5,now());
INSERT INTO `E_commerce_db`.`Discount` (`DiscountID`, `DiscountPrecent`,DateDiscount) VALUES ('DSCT25', 0.25,now());

COMMIT;



START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Offer` (`OfferID`, `ProductID`, `DiscountID`,DateOffer) VALUES ('O101', 'PR8796', 'DSCT10',now());
INSERT INTO `E_commerce_db`.`Offer` (`OfferID`, `ProductID`, `DiscountID`,DateOffer) VALUES ('O102', 'PR8765', 'DSCT25',now());
INSERT INTO `E_commerce_db`.`Offer` (`OfferID`, `ProductID`, `DiscountID`,DateOffer) VALUES ('O103', 'PR8786', 'DSCT50',now());

COMMIT;


START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`ShoppingCart` (`ShoppingCartID`, `ProductID`, `OrderStatus`,DateShoppingCart) VALUES ('SC7680', 'PR4769', 'PENDING',now());
INSERT INTO `E_commerce_db`.`ShoppingCart` (`ShoppingCartID`, `ProductID`, `OrderStatus`,DateShoppingCart) VALUES ('SC7656', 'PR7786', 'PENDING',now());
INSERT INTO `E_commerce_db`.`ShoppingCart` (`ShoppingCartID`, `ProductID`, `OrderStatus`,DateShoppingCart) VALUES ('SC7786', 'PR7680', 'CONFIRMED',now());
INSERT INTO `E_commerce_db`.`ShoppingCart` (`ShoppingCartID`, `ProductID`, `OrderStatus`,DateShoppingCart) VALUES ('SC7100', 'PR4769', 'SAVED',now());
INSERT INTO `E_commerce_db`.`ShoppingCart` (`ShoppingCartID`, `ProductID`, `OrderStatus`,DateShoppingCart) VALUES ('SC7099', 'PR7786', 'CONFIRMED',now());

COMMIT;



START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Wishlist` (`WishlistID`, `ProductID`,DateWishlist) VALUES ('W602', 'PR4769',now());
INSERT INTO `E_commerce_db`.`Wishlist` (`WishlistID`, `ProductID`,DateWishlist) VALUES ('W652', 'PR4789',now());
INSERT INTO `E_commerce_db`.`Wishlist` (`WishlistID`, `ProductID`,DateWishlist) VALUES ('W832', 'PR4467',now());

COMMIT;


START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Sellers` (`SellerID`, `UserID`, `User_Type`,`CompanyName`, `ContactFName`, `ContactLName`, `ContactPosition`, `Phone`, `Email`, `Logo`,DateSellers) VALUES ('S6283', 'U2837','S', 'The Fun Shop', 'Frank', 'DiMaggio', 'Representative', '555-827-2832', 'f.dimaggio@funshop.com', NULL,now());
INSERT INTO `E_commerce_db`.`Sellers` (`SellerID`, `UserID`, `User_Type`,`CompanyName`, `ContactFName`, `ContactLName`, `ContactPosition`, `Phone`, `Email`, `Logo`,DateSellers) VALUES ('S2193', 'U2738','S', 'Sell Your Junk Inc', 'Suzy', 'Gold', 'Owner of Company', '555-232-2381', 'suzy.gold@selljunk.com', NULL,now());
INSERT INTO `E_commerce_db`.`Sellers` (`SellerID`, `UserID`, `User_Type`,`CompanyName`, `ContactFName`, `ContactLName`, `ContactPosition`, `Phone`, `Email`, `Logo`,DateSellers) VALUES ('S6381', 'U2883','S', 'Shop Til You Drop', 'Charlie', 'Sweet', 'Representative', '555-347-2381', 'sweet.charles@shop.com', NULL,now());

COMMIT;


START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Shipper` (`ShipperID`, `ShipperName`, `ContactName`, `Phone`,DateShipper) VALUES ('SH1764', 'Ship for Cheap', 'Ronald McDime', '555-634-2342',now());
INSERT INTO `E_commerce_db`.`Shipper` (`ShipperID`, `ShipperName`, `ContactName`, `Phone`,DateShipper) VALUES ('SH1752', 'Frank shipments Inc.', 'Rosie Chianti', '332-431-3452',now());
INSERT INTO `E_commerce_db`.`Shipper` (`ShipperID`, `ShipperName`, `ContactName`, `Phone`,DateShipper) VALUES ('SH1762', 'Worldwide Delivery Service', 'Paola Ricardo', '242-241-2423',now());

COMMIT;


START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Orders` (`OrderID`, `UserID`, `ShipperID`, `OrderDate`, `RequiredDate`, `Freight`, `SalesTax`, `TimeStamp`, `TransactStatus`, `InvoiceAmount`, `PaymentDate`, `ItemQuantity`,DateOrders) VALUES ('OR6534', 'US2123', 'SH17648', '2017-02-22', '2017-03-04', 0, 3.87, '2017-02-26 16:30:31', 'complete', 36.31, '2017-02-27', 2,now());
INSERT INTO `E_commerce_db`.`Orders` (`OrderID`, `UserID`, `ShipperID`, `OrderDate`, `RequiredDate`, `Freight`, `SalesTax`, `TimeStamp`, `TransactStatus`, `InvoiceAmount`, `PaymentDate`, `ItemQuantity`,DateOrders) VALUES ('OR6676', 'US2498', 'SH17526', '2017-02-24', '2017-03-05', 25.34, 24.98, '2017-02-26 16:30:32', 'complete', 234.92, '2017-02-27', 1,now());
INSERT INTO `E_commerce_db`.`Orders` (`OrderID`, `UserID`, `ShipperID`, `OrderDate`, `RequiredDate`, `Freight`, `SalesTax`, `TimeStamp`, `TransactStatus`, `InvoiceAmount`, `PaymentDate`, `ItemQuantity`,DateOrders) VALUES ('OR6182', 'US2124', 'SH17648', '2017-02-22', '2017-03-06', 25.34, 24.98, '2017-02-26 16:30:33', 'complete', 325.65, '2017-02-27', 4,now());
INSERT INTO `E_commerce_db`.`Orders` (`OrderID`, `UserID`, `ShipperID`, `OrderDate`, `RequiredDate`, `Freight`, `SalesTax`, `TimeStamp`, `TransactStatus`, `InvoiceAmount`, `PaymentDate`, `ItemQuantity`,DateOrders) VALUES ('OR6986', 'US2895', 'SH17526', '2017-06-25', '2017-07-05', 98.54, 5.89, '2017-02-27 16:30:34', 'complete', 746.33, '2017-06-27', 1,now());
INSERT INTO `E_commerce_db`.`Orders` (`OrderID`, `UserID`, `ShipperID`, `OrderDate`, `RequiredDate`, `Freight`, `SalesTax`, `TimeStamp`, `TransactStatus`, `InvoiceAmount`, `PaymentDate`, `ItemQuantity`,DateOrders) VALUES ('OR6091', 'US2435', 'SH17626', '2017-06-26', '2017-07-05', 3.99, 4.67, '2017-02-27 16:30:35', 'complete', 89.75, '2017-06-26', 3,now());
INSERT INTO `E_commerce_db`.`Orders` (`OrderID`, `UserID`, `ShipperID`, `OrderDate`, `RequiredDate`, `Freight`, `SalesTax`, `TimeStamp`, `TransactStatus`, `InvoiceAmount`, `PaymentDate`, `ItemQuantity`,DateOrders) VALUES ('OR6018', 'US2654', 'SH17648', '2017-06-27', '2017-07-05', 12.99, 6.44, '2017-02-26 16:30:36', 'complete', 59.44, '2017-06-27', 2,now());
INSERT INTO `E_commerce_db`.`Orders` (`OrderID`, `UserID`, `ShipperID`, `OrderDate`, `RequiredDate`, `Freight`, `SalesTax`, `TimeStamp`, `TransactStatus`, `InvoiceAmount`, `PaymentDate`, `ItemQuantity`,DateOrders) VALUES ('OR6906', 'US2098', 'SH17648', '2017-06-28', '2017-07-05', 20.54, 11.26, '2017-02-27 16:30:37', 'complete', 123.87, '2017-06-28', 6,now());

COMMIT;



START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Payment` (`PaymentID`, `OrderID`, `Payment_Type`,DatePayment) VALUES ('P7836', 'OR6534', 'G',now());
INSERT INTO `E_commerce_db`.`Payment` (`PaymentID`, `OrderID`, `Payment_Type`,DatePayment) VALUES ('P7768', 'OR6676', 'C',now());
INSERT INTO `E_commerce_db`.`Payment` (`PaymentID`, `OrderID`, `Payment_Type`,DatePayment) VALUES ('P7864', 'OR6182', 'A',now());
INSERT INTO `E_commerce_db`.`Payment` (`PaymentID`, `OrderID`, `Payment_Type`,DatePayment) VALUES ('P7565', 'OR6986', 'C',now());
INSERT INTO `E_commerce_db`.`Payment` (`PaymentID`, `OrderID`, `Payment_Type`,DatePayment) VALUES ('P7865', 'OR6091', 'C',now());
INSERT INTO `E_commerce_db`.`Payment` (`PaymentID`, `OrderID`, `Payment_Type`,DatePayment) VALUES ('P7853', 'OR6018', 'C',now());
INSERT INTO `E_commerce_db`.`Payment` (`PaymentID`, `OrderID`, `Payment_Type`,DatePayment) VALUES ('P7332', 'OR6906', 'C',now());

COMMIT;


START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Payment_CreditCard` (`CreditCardID`, `PaymentID`, `CreditCardNum`, `CardExpM`, `CardExpY`, `CardSecurityNumber`, `CardAddress`, `CardCity`, `CardPostalCode`,DatePaymentCreditCard) VALUES ('CC4791', 'P7768', 4510934832848328, 10, 2018, '345', '876 RUE BEAUBIEN', 'MONTREAL', 'H7F 6V2',now());
INSERT INTO `E_commerce_db`.`Payment_CreditCard` (`CreditCardID`, `PaymentID`, `CreditCardNum`, `CardExpM`, `CardExpY`, `CardSecurityNumber`, `CardAddress`, `CardCity`, `CardPostalCode`,DatePaymentCreditCard) VALUES ('CC4586', 'P7565', 4510655885838439, 9, 2019, '238', '123 TREE STREET', 'SPRINGFIELD', 'S7F 2V8',now());
INSERT INTO `E_commerce_db`.`Payment_CreditCard` (`CreditCardID`, `PaymentID`, `CreditCardNum`, `CardExpM`, `CardExpY`, `CardSecurityNumber`, `CardAddress`, `CardCity`, `CardPostalCode`,DatePaymentCreditCard) VALUES ('CC5434', 'P7865', 5590778844927402, 3, 2022, '866', '143 OAKLAND ROAD', 'QUEBEC', 'F7B 3V9',now());
INSERT INTO `E_commerce_db`.`Payment_CreditCard` (`CreditCardID`, `PaymentID`, `CreditCardNum`, `CardExpM`, `CardExpY`, `CardSecurityNumber`, `CardAddress`, `CardCity`, `CardPostalCode`,DatePaymentCreditCard) VALUES ('CC4897', 'P7853', 5590649276962332, 3, 2020, '456', '387 PAPINEAU DRIVE', 'VANCOUVER', 'D8V 0D2',now());
INSERT INTO `E_commerce_db`.`Payment_CreditCard` (`CreditCardID`, `PaymentID`, `CreditCardNum`, `CardExpM`, `CardExpY`, `CardSecurityNumber`, `CardAddress`, `CardCity`, `CardPostalCode`,DatePaymentCreditCard) VALUES ('CC5967', 'P7332', 8930384039459342, 6, 2018, '285', '5119 ARCHER BLVD', 'MEMPHIS', 'G9V 2B7',now());

COMMIT;



START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Address` (`AddressID`, `UserID`, `Address_Type`, `AddressLine1`, `City`, `Province`, `Country`, `PostalCode`,DateAddress) VALUES ('AD7982', 'US2895', 'HOME', '876 apple drive', 'Montreal', 'Quebec', 'Canada', 'H7D 9S3',now());
INSERT INTO `E_commerce_db`.`Address` (`AddressID`, `UserID`, `Address_Type`, `AddressLine1`, `City`, `Province`, `Country`, `PostalCode`,DateAddress) VALUES ('AD123', 'US2348', 'WORK', '987 business avenue', 'Vancouver', 'British Columbia', 'Canada', 'G6H 7S9',now());
INSERT INTO `E_commerce_db`.`Address` (`AddressID`, `UserID`, `Address_Type`, `AddressLine1`, `City`, `Province`, `Country`, `PostalCode`,DateAddress) VALUES ('AD432', 'US2123', 'BILLING', '129 shore street', 'Sherbrooke', 'Quebec', 'Canada', 'H3S B7S',now());
INSERT INTO `E_commerce_db`.`Address` (`AddressID`, `UserID`, `Address_Type`, `AddressLine1`, `City`, `Province`, `Country`, `PostalCode`,DateAddress) VALUES ('AD146', 'US2784', 'BILLING', '972 long road', 'Dawson Creek', 'Calgary', 'Canada', 'D7B S3H',now());
INSERT INTO `E_commerce_db`.`Address` (`AddressID`, `UserID`, `Address_Type`, `AddressLine1`, `City`, `Province`, `Country`, `PostalCode`,DateAddress) VALUES ('AD552', 'US2498', 'SHIPPING', '10873 butterfly street', 'Gotham', 'Saskatchewan', 'Canada', 'D7C 1D6',now());
INSERT INTO `E_commerce_db`.`Address` (`AddressID`, `UserID`, `Address_Type`, `AddressLine1`, `City`, `Province`, `Country`, `PostalCode`,DateAddress) VALUES ('AD873', 'US2435', 'SHIPPING', '397 hustle drive', 'Kahnawake', 'Quebec', 'Canada', 'F7B 2D8',now());
INSERT INTO `E_commerce_db`.`Address` (`AddressID`, `UserID`, `Address_Type`, `AddressLine1`, `City`, `Province`, `Country`, `PostalCode`,DateAddress) VALUES ('AD276', 'US2498', 'HOME', '11 rodeo blvd', 'Saskatoon', 'Saskatchewan', 'Canada', 'J7C 2X7',now());

COMMIT;





START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Orders_has_Product` (`OrderProductID`, `Orders_OrderID`, `Product_ProductID`,DateOrders_has_Product) VALUES ('OP6723', 'OR6534', 'PR4789',now());
INSERT INTO `E_commerce_db`.`Orders_has_Product` (`OrderProductID`, `Orders_OrderID`, `Product_ProductID`,DateOrders_has_Product) VALUES ('OP2589', 'OR6182', 'PR4192',now());
INSERT INTO `E_commerce_db`.`Orders_has_Product` (`OrderProductID`, `Orders_OrderID`, `Product_ProductID`,DateOrders_has_Product) VALUES ('OP2394', 'OR6534', 'PR4394',now());
INSERT INTO `E_commerce_db`.`Orders_has_Product` (`OrderProductID`, `Orders_OrderID`, `Product_ProductID`,DateOrders_has_Product) VALUES ('OP1234', 'OR6091', 'PR4298',now());
INSERT INTO `E_commerce_db`.`Orders_has_Product` (`OrderProductID`, `Orders_OrderID`, `Product_ProductID`,DateOrders_has_Product) VALUES ('OP9999', 'OR6018', 'PR4689',now());

COMMIT;



START TRANSACTION;
USE `E_commerce_db`;
INSERT INTO `E_commerce_db`.`Payment_Giftcard` (`GiftcardID`, `PaymentID`, `GiftCardNumber`, `GiftcardExpMM`, `GiftcardExpYYYY`,DatePayment_Giftcard) VALUES ('G764', 'P7836', '4556 8598 9698', '12', '2020',now());

COMMIT;

