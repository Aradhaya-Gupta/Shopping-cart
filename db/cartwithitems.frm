TYPE=VIEW
query=select `db`.`usercart`.`UCId` AS `UCId`,`db`.`usercart`.`UserId` AS `UserId`,`db`.`usercart`.`ItemId` AS `ItemId`,`db`.`items`.`ItemName` AS `ItemName`,`db`.`items`.`Price` AS `Price`,`db`.`items`.`Stock` AS `Stock`,`db`.`items`.`Photograph` AS `Photograph` from `db`.`items` join `db`.`usercart` where (`db`.`items`.`ItemId` = `db`.`usercart`.`ItemId`)
md5=94cf2af23ba77d468fd7c1b948f9a9d6
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2016-11-19 12:29:48
create-version=1
source=select UCId, UserId, UserCart.ItemId, ItemName,Price, Stock, Photograph from Items, UserCart where Items.ItemId=UserCart.ItemId
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `db`.`usercart`.`UCId` AS `UCId`,`db`.`usercart`.`UserId` AS `UserId`,`db`.`usercart`.`ItemId` AS `ItemId`,`db`.`items`.`ItemName` AS `ItemName`,`db`.`items`.`Price` AS `Price`,`db`.`items`.`Stock` AS `Stock`,`db`.`items`.`Photograph` AS `Photograph` from `db`.`items` join `db`.`usercart` where (`db`.`items`.`ItemId` = `db`.`usercart`.`ItemId`)
