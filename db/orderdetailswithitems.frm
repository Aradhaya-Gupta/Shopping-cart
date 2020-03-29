TYPE=VIEW
query=select `db`.`userorderdetails`.`OrderNo` AS `OrderNo`,`db`.`userorderdetails`.`ItemId` AS `ItemId`,`db`.`items`.`ItemName` AS `ItemName`,`db`.`items`.`Price` AS `Price`,`db`.`items`.`Stock` AS `Stock`,`db`.`items`.`Photograph` AS `Photograph` from `db`.`userorderdetails` join `db`.`items` where (`db`.`userorderdetails`.`ItemId` = `db`.`items`.`ItemId`)
md5=2bcf82f107ff8ae7771eacdb6ebf11ca
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2016-12-01 12:23:14
create-version=1
source=Select OrderNo, UserOrderDetails.ItemId, ItemName, Price, Stock, Photograph from UserOrderDetails, Items where UserOrderDetails.ItemId=Items.ItemId
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `db`.`userorderdetails`.`OrderNo` AS `OrderNo`,`db`.`userorderdetails`.`ItemId` AS `ItemId`,`db`.`items`.`ItemName` AS `ItemName`,`db`.`items`.`Price` AS `Price`,`db`.`items`.`Stock` AS `Stock`,`db`.`items`.`Photograph` AS `Photograph` from `db`.`userorderdetails` join `db`.`items` where (`db`.`userorderdetails`.`ItemId` = `db`.`items`.`ItemId`)
