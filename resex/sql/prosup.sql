CREATE VIEW FR_prosup AS
SELECT `FR_suppliers`.`sup_name` AS `sup_name`,
       `FR_products`.`pro_id` AS `pro_id`,
       `FR_products`.`pro_name` AS `pro_name`,
       `FR_products`.`pro_label` AS `pro_label`,
       `FR_products`.`pro_desc` AS `pro_desc`,
       `FR_products`.`pro_price` AS `pro_price`,
       `FR_products`.`pro_pic` AS `pro_pic`,
       `FR_products`.`subcat_id` AS `subcat_id`,
       `FR_products`.`sup_id` AS `sup_id`
FROM `FR_suppliers`
JOIN `FR_products`
WHERE (`FR_suppliers`.`sup_id` = `FR_products`.`sup_id`)
