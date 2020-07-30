SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
CREATE TABLE `gymapp` (
  `fname` varchar(34) NOT NULL,
  `lname` varchar(34) NOT NULL,
  `email` varchar(34) NOT NULL,
  `contact` varchar(34) NOT NULL,
  `docapp` varchar(50) NOT NULL)
INSERT INTO `gymapp` (`fname`, `lname`, `email`, `contact`, `docapp`)
VALUES('Wajiha', 'Anwer', 'wajiha@gmail.com', '123', '101'),

CREATE TABLE `logintb` (
  `username` varchar(34) NOT NULL,
  `password` varchar(34) NOT NULL)
INSERT INTO `logintb` (`username`, `password`)
VALUES('admin', 'pass');

CREATE TABLE `Package` (
  `Package_id` varchar(34) NOT NULL,
  `Package_name` varchar(34) NOT NULL,
  `Amount` int(21) NOT NULL)
INSERT INTO `Package` (`Package_id`, `Package_name`, `Amount`)
VALUES('121', 'preliminary', 800),
('122', 'Wt.gain', 1500),
('123', 'Wt.loss', 1000);

CREATE TABLE `Payment` (
  `Payment_id` int(11) NOT NULL,
  `Amount` int(21) NOT NULL,
  `customer_id` varchar(21) NOT NULL,
  `payment_type` varchar(21) NOT NULL)
INSERT INTO `Payment` (`Payment_id`, `Amount`, `customer_id`, `payment_type`)
VALUES(301, 1500, '201', 'cash'),
(302, 800, '202', 'card'),
(303, 1000, '203', 'cheque'),
(304, 1500, '204', 'cash');

CREATE TABLE `Trainer` (
  `Trainer_id` int(21) NOT NULL,
  `Name` varchar(41) NOT NULL,
  `phone` int(21) NOT NULL)
INSERT INTO `Trainer` (`Trainer_id`, `Name`, `phone`)
VALUES(101, 'Wajiha', 12345678),

ALTER TABLE `gymapp`
ADD PRIMARY KEY (`contact`);
ALTER TABLE `Package`
ADD PRIMARY KEY (`Package_id`);
ALTER TABLE `Payment`
ADD PRIMARY KEY (`Payment_id`);
ALTER TABLE `Trainer`
ADD PRIMARY KEY (`Trainer_id`);

COMMIT;
