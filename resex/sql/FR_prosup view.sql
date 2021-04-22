
CREATE VIEW FR_prosup AS
 SELECT FR_Suppliers.sup_name, FR_Products.* FROM FR_Suppliers, FR_Products
 WHERE FR_Suppliers.sup_id = FR_Products.sup_id;
