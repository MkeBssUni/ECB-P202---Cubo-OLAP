CREATE TABLE "VENDEDOR_DESTINO" (
    "BusinessEntityId" int,
    "AccountNumber" nvarchar(15),
    "Name" nvarchar(50),
    "ModifiedDate" datetime,
    CONSTRAINT "PK_VENDEDOR_DESTINO" PRIMARY KEY ("BusinessEntityId")
);


CREATE TABLE "PRODUCTO_DESTINO" (
    "ProductID" int,
    "Name" nvarchar(50),
    "ProductNumber" nvarchar(25),
    "StandardCost" money,
    "ListPrice" money,
    CONSTRAINT "PK_PRODUCTO_DESTINO" PRIMARY KEY ("ProductID")
);

CREATE TABLE "COMPRA_DESTINO" (
    "PurchaseOrderID" int,
    "EmployeeID" int,
    "VendorID" int,
    "ShipMethodID" int,
    "ShipDate" datetime,
    "SubTotal" money,
    "TaxAmt" money,
    CONSTRAINT "PK_COMPRA_DESTINO" PRIMARY KEY ("PurchaseOrderID")
);

CREATE TABLE "HECHOS_DESTINO" (
    "PurchaseOrderID" int,
    "BusinessEntityID" int,
    "ProductID" int,
    CONSTRAINT FK_COMPRA_DESTINO FOREIGN KEY ("PurchaseOrderID") REFERENCES "COMPRA_DESTINO" ("PurchaseOrderID"),
    CONSTRAINT FK_VENDEDOR_DESTINO FOREIGN KEY ("BusinessEntityID") REFERENCES "VENDEDOR_DESTINO" ("BusinessEntityId"),
    CONSTRAINT FK_PRODUCTO_DESTINO FOREIGN KEY ("ProductID") REFERENCES "PRODUCTO_DESTINO" ("ProductID")
);