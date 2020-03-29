TYPE=VIEW
query=select `db`.`userorders`.`OrderNo` AS `OrderNo`,`db`.`userorders`.`OrderDate` AS `orderDate`,`db`.`userorders`.`UserId` AS `UserID`,`orderdetailswithitems`.`ItemId` AS `ItemId`,`orderdetailswithitems`.`ItemName` AS `ItemName`,`orderdetailswithitems`.`Price` AS `Price`,`orderdetailswithitems`.`Photograph` AS `Photograph` from `db`.`userorders` join `db`.`orderdetailswithitems` where (`db`.`userorders`.`OrderNo` = `orderdetailswithitems`.`OrderNo`)
md5=027de019abc80b432538ddd025574e8a
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2016-12-06 11:06:46
create-version=1
source=Select UserOrders.OrderNo, orderDate, UserID, ItemId, ItemName, Price, Photograph from UserOrders, OrderDetailsWithItems where UserOrders.Orderno=orderdetailswithItems.orderno
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `db`.`userorders`.`OrderNo` AS `OrderNo`,`db`.`userorders`.`OrderDate` AS `orderDate`,`db`.`userorders`.`UserId` AS `UserID`,`orderdetailswithitems`.`ItemId` AS `ItemId`,`orderdetailswithitems`.`ItemName` AS `ItemName`,`orderdetailswithitems`.`Price` AS `Price`,`orderdetailswithitems`.`Photograph` AS `Photograph` from `db`.`userorders` join `db`.`orderdetailswithitems` where (`db`.`userorders`.`OrderNo` = `orderdetailswithitems`.`OrderNo`)
