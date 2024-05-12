-- inserting manufacturers
insert into manufacturer (code, name) values
(1, 'Asus'),
(2, 'Lenovo'),
(3, 'Hewlett-Packard'),
(4, 'Samsung'),
(5, 'Seagate'),
(6, 'Crucial'),
(7, 'Gigabyte'),
(8, 'Huawei'),
(9, 'Xiaomi');

-- inserting products
insert into product (code, name, price, manufacturer_code) values
(1, '1TB SATA3 Hard Drive', 86.99, 5),
(2, '8GB DDR4 RAM', 120, 6),
(3, '1TB SSD', 150.99, 5),
(4, 'GeForce GTX 1050 Ti', 185, 7),
(5, 'GeForce GTX 1080 Xtreme', 755, 7),
(6, '24 inch Full HD LED Monitor', 202, 2),
(7, '27 inch Full HD LED Monitor', 245.99, 2),
(8, 'Yoga 520 Laptop', 560, 2),
(9, 'Ideapad 320 Laptop', 444, 2),
(10, 'HP Deskjet 3720 Printer', 50.99, 3),
(11, 'HP Laserjet Pro M426nw Printer', 148, 3);
