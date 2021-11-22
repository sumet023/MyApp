-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2021 at 04:46 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flutterdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE `apartment` (
  `apm_id` int(11) NOT NULL,
  `apm_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_thai_520_w2 NOT NULL,
  `apm_price` int(20) NOT NULL,
  `apm_location` varchar(300) CHARACTER SET utf8 COLLATE utf8_thai_520_w2 NOT NULL,
  `apm_phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_thai_520_w2 NOT NULL,
  `apm_limitedroom` varchar(100) CHARACTER SET utf8 COLLATE utf8_thai_520_w2 NOT NULL,
  `apm_facilities` varchar(50) CHARACTER SET utf8 COLLATE utf8_thai_520_w2 NOT NULL,
  `apm_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_thai_520_w2 NOT NULL,
  `apm_detail` text CHARACTER SET utf8 COLLATE utf8_thai_520_w2 NOT NULL,
  `apm_image` varchar(300) CHARACTER SET utf8 COLLATE utf8_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`apm_id`, `apm_name`, `apm_price`, `apm_location`, `apm_phone`, `apm_limitedroom`, `apm_facilities`, `apm_type`, `apm_detail`, `apm_image`) VALUES
(1, 'Parkland Mansion', 5500, '2F, 1219/17 Soi Bangna-Trad 37, Bangna Subdistrict, Bang Na District, Bangkok 10260', '083-752484', 'Shared room', 'Free WiFi', 'Apartment', 'large mansion On Bangna-Trad Road It is a mansion that is as wide as a large condo project. The area in the accommodation includes a garden with a fountain in the middle.', 'apm1.jpg'),
(2, 'The Residence', 3500, '92 Soi Sukhumvit 24, Sukhumvit Rd., Klongton, Klongtoey, Bangkok 10110', '091-202900', 'Shared room', 'Free WiFi', 'Apartment', 'The Residence offers an executive living experience in the desired address of Sukhumvit 24.', 'apm2.jpg'),
(3, 'Naturecourt ', 4000, 'Soi Ladprao 124 Ladprao Road, Phlapphla, Wang Thonglang, Bangkok', '095-714517', 'Shared room', 'Free WiFi', 'Apartment', 'The atmosphere is shady, quiet, not crowded. Parking under the building The corridors are open and clean. The stairs leading up and down the building are not steep.', 'apm3.jpg'),
(4, 'Sea Residence', 4000, 'Soi Rama 6 Soi 5 (Rong Mueang 3) Rama 6 Road Soi 5, Rong Mueang, Pathum Wan, Bangkok 10330', '082-984332', 'Shared room', 'Free WiFi', 'Apartment', 'It is a fully furnished serviced apartment in a location near the BTS.', 'apm4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `condo`
--

CREATE TABLE `condo` (
  `condo_id` int(11) NOT NULL,
  `condo_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `condo_price` int(11) NOT NULL,
  `condo_location` varchar(100) CHARACTER SET utf8 NOT NULL,
  `condo_phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `condo_limitedroom` varchar(30) CHARACTER SET utf8 NOT NULL,
  `condo_facilities` varchar(30) CHARACTER SET utf8 NOT NULL,
  `condo_type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `condo_detail` text CHARACTER SET utf8 NOT NULL,
  `condo_image` varchar(50) COLLATE utf8_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_thai_520_w2;

--
-- Dumping data for table `condo`
--

INSERT INTO `condo` (`condo_id`, `condo_name`, `condo_price`, `condo_location`, `condo_phone`, `condo_limitedroom`, `condo_facilities`, `condo_type`, `condo_detail`, `condo_image`) VALUES
(1, 'Supalai', 5000, 'Supalai Grand Tower, Rama 3 Road, Chong Nonsi Subdistrict, Yan Nawa District, Bangkok', '084-9965841', ' Shared room', 'free wifi', 'condominium', 'Supalai thinks from real life. because of the residential area It\'s like a space that tells our identity. Supalai is full of space that is wide enough. answer to life release yourself', 'condo1.jpg'),
(2, 'The lndeed Condo', 4000, '\r\n85 Wiboon Pracharak Road Nong Mai Daeng Subdistrict Mueang Chon Buri District Chonburi 20000', '087-256-1112', ' Shared room', 'free wifi', ' condominium', '\r\nIn the heart of Sriracha, fully furnished, you can drag your bags in. Condo less than a million Sriracha city center', 'condo2.jpg'),
(3, 'D Condo forest', 8000, '15200, 1865, Jalan Abdul Kadir Adabi, 15200 Kota Bharu, Kelantan,', '084-584-4589', ' Shared room', 'free wifi', ' condominium', '\r\nHappiness is not limited to holidays at D Condo Pana.Find a new style of relaxation in a resort style.', 'condo3.jpg'),
(4, ' The Move Bang Khae', 7000, '\r\n916 Soi Prasarn, Bang Khae Nuea Sub-district, Bang Khae District, Bangkok 10160', '095-564-5455', ' Shared room', 'free wifi', ' condominium', '\r\nCreate the right equation give life forward new concept condo that gives you money more time left New concept condo, fully furnished, worth more than the price. Register for special privileges', 'condo4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `dm_id` int(11) NOT NULL,
  `dm_name` varchar(100) NOT NULL,
  `dm_price` int(11) NOT NULL,
  `dm_location` varchar(100) NOT NULL,
  `dm_phone` varchar(20) NOT NULL,
  `dm_limitedroom` varchar(50) NOT NULL,
  `dm_facilities` varchar(50) NOT NULL,
  `dm_type` varchar(50) NOT NULL,
  `dm_detail` text NOT NULL,
  `dm_image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dormitory`
--

INSERT INTO `dormitory` (`dm_id`, `dm_name`, `dm_price`, `dm_location`, `dm_phone`, `dm_limitedroom`, `dm_facilities`, `dm_type`, `dm_detail`, `dm_image`) VALUES
(1, '\r\nAsma girls dormitory', 2800, 'Tambon Bang Nak, Amphoe Mueang Narathiwat, Narathiwat 96000', '087-969-449', 'female room', 'Free WiFi', 'dormitory', '\r\nFemale room, safe, comfortable', 'dm1.jpg'),
(2, '\r\nHathaipat Dormitory', 1700, '\r\nSoi Charoen Pradit 12 Charoen Pradit Road, Rusamilae, Pattani City, Pattani', '091-2029009', ' Shared room', 'Free WiFi', ' dormitory', '\r\n- Nearby Places ---\r\nPrince of Songkla University Pattani Campus\r\nPrince of Songkla University Demonstration School\r\nDechapattanayanukun School\r\nBenchamaratchuthit School Pattani Province\r\nSeaas Pattani Hotel\r\nPattani City Municipality\r\nPattani City Hall\r\nland office Pattani Province\r\nSocial Security Office Pattani Province', 'dm2.jpg'),
(3, '\r\nKao Son Court', 2500, 'Soi 5, Lang Mo Rd., Rusamilae, Pattani City, Pattani', '081-0966006', ' Shared room', 'Free WiFi', ' dormitory', 'Dormitory-apartment, cheap price, very good location, near the university, can walk 150 meters It\'s safe, there\'s wifi, there\'s a shop inside. Coin-operated washing machine, lots of parking, key card, CCTV', 'dm3.jpg'),
(4, '\r\nWomen\'s dormitory, F Mart', 500, '\r\nTambon Bang Nak, Amphoe Mueang Narathiwat, Narathiwat 96000', '087-969-4495', ' Shared room', 'Free wifi', ' dormitory', 'A dormitory is a building that provides accommodation and accommodation for a large number of people, such as a boarding school, high school, college or university student.', 'dm4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `game_id` varchar(15) NOT NULL,
  `game_name` varchar(255) NOT NULL,
  `game_price` int(5) NOT NULL,
  `game_detail` text NOT NULL,
  `game_img` varchar(255) NOT NULL,
  `game_stock` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `game_id`, `game_name`, `game_price`, `game_detail`, `game_img`, `game_stock`) VALUES
(27, 'GA3', 'GTA V', 1000, 'Grand Theft Auto V is an open world, action-adventure video game developed by Rockstar North and published by Rockstar Games. It was released on 17 September 2013 for the PlayStation 3 and Xbox 360. It is the fifteenth title in the Grand Theft Auto series, and the first main entry since Grand Theft Auto IV in 2008. Set within the fictional state of San Andreas, based on Southern California, Grand Theft Auto V\'s single-player story follows three criminals and their efforts to execute a number of heists while under pressure from government agencies. The game\'s use of open world design allows the player to freely roam the state\'s countryside and the city of Los Santos, based on Los Angeles.', 'Gta5.jpg', 30),
(26, 'GA2', 'Skyrim', 1500, 'Assassin\'s Creed IV: Black Flag is a 2013 historical action-adventure open world video game developed by Ubisoft Montreal and published by Ubisoft. It was released worldwide for the PlayStation 3 and Xbox 360 on October 29, 2013; for the Wii U on October 29, 2013 in North America, on November 21, 2013 in Australia, on November 22, 2013 in Europe, and on November 28, 2013 in Japan; for the PlayStation 4 on November 15, 2013 in North America, on November 22, 2013 in Europe, and on November 29, 2013 in Australia; for Microsoft Windows on November 19, 2013 in North America, on November 21, 2013 in Australia, and on November 22, 2013 in Europe; and for the Xbox One on November 22, 2013.', 'Ass4.jpg', 10);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `name`, `surname`) VALUES
('u1', 'p1', 'Nalinee', 'Inthamano'),
('u2', 'p2', 'Mintra', 'Deejai');

-- --------------------------------------------------------

--
-- Table structure for table `mansion`
--

CREATE TABLE `mansion` (
  `ms_id` int(11) NOT NULL,
  `ms_name` varchar(100) NOT NULL,
  `ms_price` int(20) NOT NULL,
  `ms_location` varchar(255) NOT NULL,
  `ms_phone` varchar(20) NOT NULL,
  `ms_limitedroom` varchar(100) NOT NULL,
  `ms_facilities` varchar(50) NOT NULL,
  `ms_type` text NOT NULL,
  `ms_detail` varchar(255) NOT NULL,
  `ms_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mansion`
--

INSERT INTO `mansion` (`ms_id`, `ms_name`, `ms_price`, `ms_location`, `ms_phone`, `ms_limitedroom`, `ms_facilities`, `ms_type`, `ms_detail`, `ms_image`) VALUES
(1, '\r\nSuriyan Mansion', 3000, '\r\nSoi Bang Khanun, Sam Road, Bang Khanun, Bang Kruai, Nonthaburi', '087-564-5265', 'Shred room', 'Free wifi', 'Mansion', 'Our mansion will be near Hua Seng Hong Restaurant. Korat Grilled Chicken Restaurant and leading department stores such as The Walk Homework Department Store, HomePro Department Store, The Plus Mall Bangyai Central Wetgate Department Store Denla Kindergart', 'ms1.jpg'),
(2, 'Thong Mansion', 5000, '\r\n171/10 Rattakarn Road, Hat Yai Nuea, Hat Yai, Thailand, 90110', '087-564-5265', 'Shred room', 'Free wifi', 'Mansion', '\r\n24 hour guard There are cabinets, beds, air conditioning. Laundry service in front of the mansion', 'ms2.jpg'),
(3, 'Siam Mansion', 6000, '\r\n233 Prachathipat Road, Rajyindee Road, Hat Yai, Thailand, 90110', '087-564-5265', '\r\nShred room', 'Free wifi', 'Mansion', '\r\nElectricity 6 baht! Free parking, free cable, live for a year, free for 1 month, free wifi, walk 2 minutes to 7-11, win motorcycle', 'ms3.jpg'),
(4, 'TK Mansion', 4000, '\r\n376 Supasarnrangsan Rd., Hat Yai, Songkhla, Rajyindee Road, Hat Yai, Thailand, 90110', '087-564-5265', 'Shred room', 'Free wifi', 'Mansion', 'Student dormitory project, a new concept that understands all the needs and lifestyles of students, so we design common areas. Supports a wide range of functions', 'ms4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`apm_id`);

--
-- Indexes for table `condo`
--
ALTER TABLE `condo`
  ADD PRIMARY KEY (`condo_id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dm_id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `mansion`
--
ALTER TABLE `mansion`
  ADD PRIMARY KEY (`ms_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartment`
--
ALTER TABLE `apartment`
  MODIFY `apm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `condo`
--
ALTER TABLE `condo`
  MODIFY `condo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `mansion`
--
ALTER TABLE `mansion`
  MODIFY `ms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
