DROP DATABASE IF EXISTS `E_commerce_db` ;

CREATE SCHEMA IF NOT EXISTS `E_commerce_db` DEFAULT CHARACTER SET utf8 ;
USE `E_commerce_db` ;

CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Users` (
  `UserID` VARCHAR(8) NOT NULL,
  `UserFName` VARCHAR(45) NOT NULL,
  `UserLName` VARCHAR(45) NOT NULL,
  `USER_TYPE` VARCHAR(1) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  `DateCreated` DATE NOT NULL,
  PRIMARY KEY (`UserID`))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Membership` (
  `MembershipID` VARCHAR(8) NOT NULL,
  `MembershipType` VARCHAR(45) NOT NULL,
  `DateMembership` TimeStamp,
  PRIMARY KEY (`MembershipID`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Buyers` (
  `BuyerID` VARCHAR(8) NOT NULL,
  `UserID` VARCHAR(8) NOT NULL,
   `USER_TYPE` VARCHAR(1) NOT NULL,
  `MembershipID` VARCHAR(8) NULL,
  `FName` VARCHAR(45) NOT NULL,
  `LName` VARCHAR(100) NULL,
  `Phone` VARCHAR(15) NOT NULL DEFAULT 'xxx-xxx-xxxx',
  `Email` VARCHAR(45) NOT NULL,
  `DateBuyers` TimeStamp,
   PRIMARY KEY (`UserID`, `USER_TYPE`),
  CHECK (USER_TYPE = 'B'))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Department` (
  `DepartmentID` VARCHAR(8) NOT NULL,
  `DepName` VARCHAR(45) NOT NULL,
  `ContactFName` TEXT NOT NULL,
  `DateDepartment` TimeStamp,
  PRIMARY KEY (`DepartmentID`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Product` (
  `ProductID` VARCHAR(8) NOT NULL,
  `DepartmentID` VARCHAR(8) NOT NULL,
  `Category` VARCHAR(45) NOT NULL,
  `IDSKU` VARCHAR(8) NOT NULL,
  `ProductName` VARCHAR(45) NOT NULL,
  `Quantity` INT NOT NULL,
  `UnitPrice` DECIMAL NOT NULL,
  `Ranking` INT NULL,
  `ProductDesc` TEXT NULL,
  `UnitsInStock` INT NULL,
  `UnitsInOrder` INT NULL,
  `Picture` BLOB NULL,
  `DateProduct` TimeStamp,
  PRIMARY KEY (`ProductID`))
ENGINE = InnoDB;




CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Reviews` (
  `ReviewID` VARCHAR(8) NOT NULL,
  `ProductID` VARCHAR(8) NOT NULL,
  `CustomerReview` VARCHAR(45) NULL,
  `Rating` TINYINT(1) NOT NULL,
  `DateReviews` TimeStamp,
  PRIMARY KEY (`ReviewID`))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Discount` (
  `DiscountID` VARCHAR(8) NOT NULL,
  `DiscountPrecent` DECIMAL(5,2) NOT NULL,
  `DateDiscount` TimeStamp,
  PRIMARY KEY (`DiscountID`))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Offer` (
  `OfferID` VARCHAR(8) NOT NULL,
  `ProductID` VARCHAR(8) NULL,
  `DiscountID` VARCHAR(8) NULL,
  `DateOffer` TimeStamp,
  PRIMARY KEY (`OfferID`))
ENGINE = InnoDB;

CREATE INDEX `fk_Product_has_Discount_Discount1_idx` ON `E_commerce_db`.`Offer` (`DiscountID` ASC);

CREATE INDEX `fk_Product_has_Discount_Product1_idx` ON `E_commerce_db`.`Offer` (`ProductID` ASC);



CREATE TABLE IF NOT EXISTS `E_commerce_db`.`ShoppingCart` (
  `ShoppingCartID` VARCHAR(8) NOT NULL,
  `ProductID` VARCHAR(8) NOT NULL,
  `OrderStatus` VARCHAR(45) NULL,
  `DateShoppingCart` TimeStamp,
  PRIMARY KEY (`ShoppingCartID`))
ENGINE = InnoDB;

CREATE INDEX `ProductID_idx` ON `E_commerce_db`.`ShoppingCart` (`ProductID` ASC);



CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Wishlist` (
  `WishlistID` VARCHAR(8) NOT NULL,
  `ProductID` VARCHAR(8) NOT NULL,
  `DateWishlist` TimeStamp,
  PRIMARY KEY (`WishlistID`))
ENGINE = InnoDB;

CREATE INDEX `ProductID_idx` ON `E_commerce_db`.`Wishlist` (`ProductID` ASC);


CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Sellers` (
  `SellerID` VARCHAR(8) NOT NULL,
  `UserID` VARCHAR(8) NOT NULL,
  `USER_TYPE` VARCHAR(1) NOT NULL,
  `CompanyName` VARCHAR(45) NOT NULL,
  `ContactFName` VARCHAR(45) NOT NULL,
  `ContactLName` VARCHAR(45) NOT NULL,
  `ContactPosition` VARCHAR(45) NOT NULL,
  `Phone` VARCHAR(15) NOT NULL DEFAULT 'xxx-xxx-xxxx',
  `Email` VARCHAR(45) NOT NULL,
  `Logo` BLOB NULL,
  `DateSellers` TimeStamp,
  PRIMARY KEY (`UserID`, `USER_TYPE`),
  CHECK (USER_TYPE = 'S'))
ENGINE = InnoDB;

CREATE INDEX `UserID_idx` ON `E_commerce_db`.`Sellers` (`UserID` ASC);



CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Shipper` (
  `ShipperID` VARCHAR(8) NOT NULL,
  `ShipperName` VARCHAR(45) NULL,
  `ContactName` VARCHAR(45) NULL,
  `Phone` VARCHAR(15) NULL,
  `DateShipper` TimeStamp,
  PRIMARY KEY (`ShipperID`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `ShipperID_UNIQUE` ON `E_commerce_db`.`Shipper` (`ShipperID` ASC);


CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Orders` (
  `OrderID` VARCHAR(8) NOT NULL, 
  `UserID` VARCHAR(8) NOT NULL,
  `ShipperID` VARCHAR(8) NOT NULL,
  `OrderDate` DATE NOT NULL,
  `RequiredDate` DATE NOT NULL,
  `Freight` DECIMAL NOT NULL,
  `SalesTax` DECIMAL NOT NULL,
  `TimeStamp` TIMESTAMP NOT NULL,
  `TransactStatus` VARCHAR(25) NOT NULL,
  `InvoiceAmount` INT NOT NULL,
  `PaymentDate` DATE NOT NULL,
  `ItemQuantity` INT NULL,
  `DateOrders` TimeStamp,
  PRIMARY KEY (`OrderID`))
ENGINE = InnoDB;

CREATE INDEX `UserID_idx` ON `E_commerce_db`.`Orders` (`UserID` ASC);

CREATE INDEX `ShipperID_idx` ON `E_commerce_db`.`Orders` (`ShipperID` ASC);



CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Payment` (
  `PaymentID` VARCHAR(8) NOT NULL,
  `OrderID` VARCHAR(8) NOT NULL,
  `Payment_Type` VARCHAR(1) NOT NULL,
  `DatePayment` TimeStamp,
  PRIMARY KEY (`PaymentID`))
ENGINE = InnoDB;

CREATE INDEX `OrderID_idx` ON `E_commerce_db`.`Payment` (`OrderID` ASC);



CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Payment_CreditCard` (
  `CreditCardID` VARCHAR(8) NOT NULL,
  `PaymentID` VARCHAR(8) NOT NULL,
  `CreditCardNum` VARCHAR(20) NOT NULL,
  `CardExpM` INT NOT NULL,
  `CardExpY` INT NOT NULL,
  `CardSecurityNumber` VARCHAR(45) NOT NULL,
  `CardAddress` VARCHAR(45) NOT NULL,
  `CardCity` VARCHAR(45) NOT NULL,
  `CardPostalCode` VARCHAR(45) NOT NULL,
  `DatePaymentCreditCard` TimeStamp,
  PRIMARY KEY (`CreditCardID`))
ENGINE = InnoDB;

CREATE INDEX `PaymentID_idx` ON `E_commerce_db`.`Payment_CreditCard` (`PaymentID` ASC);




CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Address` (
  `AddressID` VARCHAR(8) NOT NULL,
  `UserID` VARCHAR(8) NOT NULL,
  `Address_Type` VARCHAR(20) NOT NULL,
  `AddressLine1` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Province` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `PostalCode` VARCHAR(7) NULL,
  `DateAddress` TimeStamp,
  PRIMARY KEY (`AddressID`))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Orders_has_Product` (
  `OrderProductID` VARCHAR(8) NOT NULL,
  `Orders_OrderID` VARCHAR(8) NOT NULL,
  `Product_ProductID` VARCHAR(8) NOT NULL,
  `DateOrders_has_Product` TimeStamp,
  PRIMARY KEY (`OrderProductID`))
ENGINE = InnoDB;

CREATE INDEX `fk_Orders_has_Product_Product1_idx` ON `E_commerce_db`.`Orders_has_Product` (`Product_ProductID` ASC);

CREATE INDEX `fk_Orders_has_Product_Orders1_idx` ON `E_commerce_db`.`Orders_has_Product` (`Orders_OrderID` ASC);


CREATE TABLE IF NOT EXISTS `E_commerce_db`.`Payment_Giftcard` (
  `GiftcardID` VARCHAR(8) NOT NULL,
  `PaymentID` VARCHAR(8) NOT NULL,
  `GiftCardNumber` CHAR(16) NOT NULL,
  `GiftcardExpMM` CHAR(2) NOT NULL,
  `GiftcardExpYYYY` VARCHAR(4) NOT NULL,
  `DatePayment_Giftcard` TimeStamp,
  PRIMARY KEY (`GiftcardID`))
ENGINE = InnoDB;

CREATE INDEX `PaymentID_idx` ON `E_commerce_db`.`Payment_Giftcard` (`PaymentID` ASC);



