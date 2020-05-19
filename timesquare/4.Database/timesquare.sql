-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 03:00 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timesquare`
--

-- --------------------------------------------------------

--
-- Table structure for table `location_timetable`
--

CREATE TABLE `location_timetable` (
  `timetable_id` int(11) NOT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location_timetable`
--

INSERT INTO `location_timetable` (`timetable_id`, `location`) VALUES
(1, 'สนามมวยลุมพินี'),
(1, 'ห้องคุณหมวยเล็ก ตึก Z ห้อง 123'),
(11, 'link youtube'),
(12, 'ห้อง 3555'),
(13, 'ห้อง 3555'),
(14, 'ห้อง 3555');

-- --------------------------------------------------------

--
-- Table structure for table `location_user`
--

CREATE TABLE `location_user` (
  `user_id` int(11) NOT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location_user`
--

INSERT INTO `location_user` (`user_id`, `location`) VALUES
(1, '12/1 ม.7 ต.ทวีวัฒนา อ.ไทรน้อย จ.นนทบุรี'),
(1, '103 พรีม่าร์อพาร์ทเมนท์ ห้อง 208 ซ.พระรามหก28 ถ.พระราม6 เขตพญาไท กทม. 10400'),
(1, 'คอนโดศุภาลัยวิสต้า ติวานนท์ 35/413  ถ.กรุงเทพ-นนทบุรี ต.ตลาดขวัญ อ.เมืองจ.นนทบุรี 11000 '),
(2, '114/52 ถนนบ้านปากแรต ต.บ้านโป่ง อ.บ้านโป่ง จ.ราชบุรี 70110'),
(2, 'ถนนนวมินทร์-ตัดใหม่ แขวงรามอินทรา เขตคันนายาว กทม. 10230'),
(2, '49/10 ม.11 ต.หนองไผ่ อ.ชุมแพ จ.ขอนแก่น 40130 '),
(10, '78/260 หมู่บ้านเพชรทวีสุข ซ.เพชรเกษม106 ถนนเพชรเกษม แขวงหนองค้างพลู เขตหนองแขม กทม. 10160 '),
(12, '888/63 ม.6 หมู่บ้านไอซ์แลนด์ 4 ต. วัดไทร อ. เมือง จ.นครสวรรค์ 60000'),
(13, '121/253 soi 5 moo3 sub-area baandoo Amphoe Muang Chiang Rai 57100');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `user_id`, `to_user_id`, `status`, `content`, `date`) VALUES
(1, 2, 1, 'ยังไม่ได้อ่าน', 'วันนี้ผมไม่เข้าเรียนนะครับ', '2020-05-14 07:10:57'),
(2, 2, 1, 'ยังไม่ได้อ่าน', 'ต้องไปผ่าฟันคุด', '2020-05-14 07:11:22'),
(3, 1, 2, 'ยังไม่ได้อ่าน', 'วันนี้ยกคลาสนะครับนักเรียน', '2020-05-19 05:10:31'),
(4, 1, 2, 'ยังไม่ได้อ่าน', 'ครูติดประชุมช่วงบ่ายพอดี', '2020-05-19 05:11:05'),
(5, 2, 1, 'ยังไม่ได้อ่าน', 'โอเครครับ', '2020-05-19 05:13:46'),
(6, 11, 1, 'ยังไม่ได้อ่าน', 'อาจารย์คะ หนูส่งคำร้องขอแล้วตอบกลับด้วยนะคะ', '2020-05-19 07:38:44'),
(7, 12, 1, 'ยังไม่ได้อ่าน', 'ติดปัญหาตรงไหนถามได้ค่ะ', '2020-05-19 07:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `phone_user`
--

CREATE TABLE `phone_user` (
  `user_id` int(11) NOT NULL,
  `phone_number` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone_user`
--

INSERT INTO `phone_user` (`user_id`, `phone_number`) VALUES
(2, '080-285-87'),
(2, '099-564-58'),
(1, '0917181696'),
(1, '084-232239'),
(10, '0877820728'),
(10, '0877820728'),
(12, '0913838309'),
(13, '087-303121');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `giver_user_id` int(11) NOT NULL,
  `receiver_user_id` int(11) NOT NULL,
  `rate` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`giver_user_id`, `receiver_user_id`, `rate`) VALUES
(1, 2, 7),
(11, 1, 5),
(12, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `request_time`
--

CREATE TABLE `request_time` (
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timetable_id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `request_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_time`
--

INSERT INTO `request_time` (`request_id`, `user_id`, `timetable_id`, `status`, `request_date`) VALUES
(1, 2, 1, 'ยอมรับ', '2020-05-14 07:10:23'),
(2, 2, 2, 'ปฏิเสธ', '2020-05-14 07:10:30'),
(3, 2, 3, 'กรุณารอการตอบกลับคำร้องขอ', '2020-05-14 07:10:36'),
(4, 12, 4, 'กรุณารอการตอบกลับคำร้องขอ', '2020-05-19 07:43:37'),
(5, 13, 7, 'กรุณารอการตอบกลับคำร้องขอ', '2020-05-19 07:51:13');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `timetable_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime NOT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `learn` varchar(20) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`timetable_id`, `user_id`, `status`, `start_datetime`, `end_datetime`, `amount`, `learn`, `subject`) VALUES
(1, 1, 'ไม่ว่าง', '2020-05-19 08:00:00', '2020-05-19 09:30:00', '0.-', 'สอนกลุ่มมากกว่า 2 คน', 'java'),
(2, 1, 'ว่าง', '2020-05-19 09:30:00', '2020-05-19 11:00:00', '0.-', 'สอนกลุ่มมากกว่า 2 คน', 'data structor'),
(3, 1, 'ว่าง', '2020-05-19 11:00:00', '2020-05-19 12:30:00', '0.-', 'สอนคู่สองคน', 'c++'),
(4, 1, 'ว่าง', '2020-05-19 13:30:00', '2020-05-19 15:00:00', '0.-', 'สอนกลุ่มมากกว่า 2 คน', 'cs234'),
(5, 1, 'ว่าง', '2020-05-19 15:00:00', '2020-05-19 16:30:00', '0.-', 'สอนกลุ่มมากกว่า 2 คน', 'Artificial Intelligent'),
(7, 1, 'ว่าง', '2020-05-20 07:00:00', '2020-05-20 09:00:00', '0.-', 'สอนกลุ่มมากกว่า 2 คน', 'testing'),
(8, 1, 'ว่าง', '2020-05-19 06:00:00', '2020-05-19 08:00:00', '999.-', 'สอนตัวต่อตัว', 'คาราเต้'),
(9, 1, 'ว่าง', '2020-05-19 16:30:00', '2020-05-19 18:30:00', '1024.-', 'สอนตัวต่อตัว', 'ฝึกฝนจิตใจ'),
(11, 1, 'ว่าง', '2020-05-20 09:00:00', '2020-05-20 10:30:00', '102.-', 'ออนไลน์(วิดีโอบันทึก', 'c'),
(12, 1, 'ว่าง', '2020-05-19 18:30:00', '2020-05-19 19:30:00', '200.-', 'สอนกลุ่มมากกว่า 2 คน', 'ค้นหาความสำเร็จ'),
(13, 1, 'ว่าง', '2020-05-19 18:30:00', '2020-05-19 19:30:00', '200.-', 'สอนกลุ่มมากกว่า 2 คน', 'ค้นหาความสำเร็จ'),
(14, 1, 'ว่าง', '2020-05-19 18:30:00', '2020-05-19 19:30:00', '200.-', 'สอนกลุ่มมากกว่า 2 คน', 'ค้นหาความสำเร็จ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `token` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `average_rating` decimal(2,1) DEFAULT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `skill` varchar(100) DEFAULT NULL,
  `first_date` datetime NOT NULL,
  `birth_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `verified`, `token`, `password`, `average_rating`, `firstName`, `lastName`, `gender`, `detail`, `email`, `status`, `skill`, `first_date`, `birth_date`) VALUES
(1, 'teacher', 1, 'ee0265e848c9ab91f55d53815de1d57a2b1cd2f438721e7d6c549252d82820d6b1a0d232245b66698eeff4490064d74f0a5d', '$2y$10$pipD0Tsv/MWd9ndvmleTZO1yFWFNzVbnH.5MtEoiI5F48w0/o6.D.', '7.0', 'บารมี', 'ยิ่งยืนนาน', 'ช', 'จบที่ harvard university', 'teacher@gmail.com', 'teacher', 'การ coding ภาษา python', '2020-05-14 07:00:01', '1988-08-08'),
(2, 'student', 1, 'fe6bcc955f16342457b7037057414015b9f605561c5d841ed5c9586783c51c930af21d75ddee9cde588709d6a483e2ceb3e9', '$2y$10$.H4.Dlt/V/yPpwaH00aF3ek.xqXPoh17FbA.o4wRtcEiQeV/o66we', '7.0', 'จรัลชัย', 'ศรีสวัสดิ์', 'ช', 'ชอบการเขียนออกแบบที่สุด', 'student@gmail.com', 'student', 'กำลังศึกษา', '2020-05-14 07:00:55', '2000-04-30'),
(3, 'chayanut', 1, '40261e4d55bd2bd848742ecf1d9e9f3872fa8b49a03f7b48097f919ff0a6e0dab7ab424bbfbe8b6dab589f0a949f7f79237c', '$2y$10$ipdHaLQkj6dQYiSmy7oZy.RfvvsUrQj/RJVv2qH8uFM.geUIE.hoO', NULL, 'ชญานุตม์', 'ชลอเลิศ', NULL, NULL, 'chayanut@gmail.com', 'general', NULL, '2020-05-14 07:02:11', '1995-02-18'),
(4, 'chanunpitchaya', 1, '4c570c28431ed90b213a0e9cc22db1940d38b26499558d345308f64dd5f962caecc1145bf3cfe9ba13f12c12d0a941f4642a', '$2y$10$UynUU4HJfaSzVTFKj.NNNuApnIeqolkQ40O3gpUo.uhWSaax6sw7q', NULL, 'ชนัญพิชญา', 'วงศ์สระคู', NULL, NULL, 'chanunpitchaya@gmail.com', 'teacher', NULL, '2020-05-14 07:02:57', '1981-10-18'),
(5, 'zakulpet', 1, '3bc2564ce07cf09987fd01a64629cbf74d6d8866c074a39d9f1033fb59d936bcad3745ab4657e0a8ee46e070e907075bf441', '$2y$10$egJsqnZYpJ3O.RReE8Gbte0E6mHvMeNbk8SvzWXpKw3ZdiXlXlvxe', NULL, 'สกุลเพชร', 'คงเหมือน', NULL, NULL, 'zakulpet@gmail.com', 'student', NULL, '2020-05-14 07:03:39', '2001-01-22'),
(6, 'sirinpha', 1, '5311931f058c6e0dbc94a6d39ea923b8595c7bbde538d3bebd36b7635060e15e1c098c164edc4e4b84a80246b4d7d412072f', '$2y$10$U8iDFPjnClnLP9OQpITqauud542cYjH4iegPEEz0GSg.mA0yRMr6.', NULL, 'สิรินภา', 'สุนทรศิริเวช', NULL, NULL, 'sirinpha@gmail.com', 'general', NULL, '2020-05-14 07:04:28', '1996-02-19'),
(7, 'skulphet', 1, '388050a1f3eb5c4bd4aaa9a575a81a9c8fc0513e6ae222c4e26f8502e5cf3f92e31f26909072c7ef03f9dbae000b27a7b280', '$2y$10$IWb4BifESIP7670oSwKKNOM.uQQ1TuqOdcdLIlqMWxHLJSIfBRTJC', NULL, 'สกุลเพชร', 'คงเหมือน', NULL, NULL, 'skulphet@gmail.com', 'general', NULL, '2020-05-18 09:52:14', '1992-05-18'),
(8, 'walissara', 1, '84ce9dd72a395f0be49e71e252380337477e6bebaef01ca8d45bb8b7e78f0dd94cf7de9f2cd1589e6cec4309dbd902c7949a', '$2y$10$8kV08AgJG7Avp.vNkkXW1u8Xr5LKAT6.jKBWoruQG2NM3WGM2FH9C', NULL, 'วริศรา', 'มาเปี่ยม', NULL, NULL, 'walissara@gmail.com', 'general', NULL, '2020-05-18 09:52:53', '2003-03-19'),
(9, 'silinpha', 1, 'ff85208f39de4041a63ad2e3bad7196bd635bb2093e6b40e95c180f0506ec493f3db8181a243f86395e5ad5ba58c5e9f8611', '$2y$10$VgwQu4zi4YWE7dFedRYeBubjIB1GiPqG4s1bv4kES.mWCtLGIixem', NULL, 'สิรินภา', 'สุนทรศิริเวช', NULL, NULL, 'silinpha@gmail.com', 'teacher', NULL, '2020-05-18 09:53:57', '1985-03-18'),
(10, 'nuttaya', 1, '9637ab5ad3eb92124902169e3c99e099785379156d2893cd4064973d915c3bfd95ce5b51f752663c22ecf8cec256e6c524c0', '$2y$10$HbHKUAvOkOFkdzSLYmZAbuszq584IoaDlF5JP8owt8ioGolCgvMKS', NULL, 'ณัฐธยาน์', 'บุญประคม', 'ห', 'กำลังต้องการคุณครู', 'nuttaya@hotmail.com', 'general', 'ไม่มี', '2020-05-19 07:27:41', '2004-06-19'),
(11, 'pimchanok', 1, '81d1c3fdcf093ed54bfbcd430a86cc113b963f9b36d81c4ee5da0503b943386ddd710d74d8a729d45f356b04e8801ae2f78e', '$2y$10$4p4a3DtYRKJUgm/.M0tMIOoOntH.4M2gK4rM9y5PVN0Mu5MiR1Zmi', NULL, 'พิมพ์ชนก', 'บุญโพธิ์สิริ', NULL, NULL, 'pimchanok@gmail.com', 'student', NULL, '2020-05-19 07:37:46', '1994-07-18'),
(12, 'kornwipha', 1, 'f779954b76a411e4fc52c38b7f1f84254553122e44cb9ab969de3abab1e5ada18defa4dc98e38a0b978d9e4d7665b3487bfc', '$2y$10$4rd8.oDbbMmm6WuQguyZdeQdaOJTwgET6yd7VwwWPDR3CtdfY/3h.', NULL, 'กรวิกา ', 'ธีวีระพันธ์', 'ห', 'ไม่เลือกงาน', 'kornwipha@gmail.com', 'teacher', 'ใช้งาน photoshop ลงสี', '2020-05-19 07:41:17', '1975-05-17'),
(13, 'Chonnigan', 1, '84f6d990bba811b8bf1b20831d0e329c0f81e644d7f87112acad424d0578db31210da0d58140bde522d903f50817348fa9c5', '$2y$10$MUc12UtNSLl4PlaekOkoGeNH6BcjxnwcONjV10IPluxJevxiJ318i', NULL, 'Chonnigan', 'Nakonthong', 'ห', 'สามารถแต่งหน้าให้เสร็จภายใน 3 ชม.', 'Chonnigan@gmail.com', 'teacher', 'แต่งหน้าขั้นเทพ', '2020-05-19 07:49:39', '1968-11-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location_timetable`
--
ALTER TABLE `location_timetable`
  ADD KEY `timetable_id` (`timetable_id`);

--
-- Indexes for table `location_user`
--
ALTER TABLE `location_user`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `to_user_id` (`to_user_id`);

--
-- Indexes for table `phone_user`
--
ALTER TABLE `phone_user`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`giver_user_id`,`receiver_user_id`),
  ADD KEY `receiver_user_id` (`receiver_user_id`);

--
-- Indexes for table `request_time`
--
ALTER TABLE `request_time`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `timetable_id` (`timetable_id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`timetable_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `request_time`
--
ALTER TABLE `request_time`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `timetable_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `location_timetable`
--
ALTER TABLE `location_timetable`
  ADD CONSTRAINT `location_timetable_ibfk_1` FOREIGN KEY (`timetable_id`) REFERENCES `timetable` (`timetable_id`);

--
-- Constraints for table `location_user`
--
ALTER TABLE `location_user`
  ADD CONSTRAINT `location_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `phone_user`
--
ALTER TABLE `phone_user`
  ADD CONSTRAINT `phone_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`giver_user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`receiver_user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `request_time`
--
ALTER TABLE `request_time`
  ADD CONSTRAINT `request_time_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `request_time_ibfk_2` FOREIGN KEY (`timetable_id`) REFERENCES `timetable` (`timetable_id`);

--
-- Constraints for table `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `timetable_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
