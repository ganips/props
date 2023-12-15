-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2021 at 10:35 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `props`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `color` varchar(10) NOT NULL,
  `size` varchar(10) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`, `color`, `size`, `from_date`, `to_date`) VALUES
(60, 31, 183, 1, '', 'S', '2021-08-05', '2021-08-06'),
(61, 31, 185, 1, '', 'NA', '2021-08-05', '2021-08-06'),
(62, 31, 200, 1, '', 'M', '2021-08-05', '2021-08-06'),
(63, 31, 149, 1, '', 'NA', '2021-08-05', '2021-08-06'),
(64, 31, 157, 2, '', 'M', '2021-08-05', '2021-08-06'),
(65, 31, 190, 1, '', 'NA', '2021-08-05', '2021-08-06'),
(66, 31, 124, 1, '', 'NA', '2021-08-05', '2021-08-06'),
(67, 25, 168, 1, '', 'XL', '2021-08-04', '2021-08-06'),
(68, 25, 216, 2, '', 'NA', '2021-08-05', '2021-08-07'),
(69, 27, 224, 3, '', 'NA', '2021-08-05', '2021-08-07'),
(72, 26, 163, 4, '', 'L', '2021-08-04', '2021-08-06'),
(73, 23, 139, 1, '', 'M', '2021-08-04', '2021-08-06'),
(74, 23, 180, 1, '', 'M', '2021-08-04', '2021-08-06'),
(75, 23, 204, 1, '', 'M', '2021-08-04', '2021-08-06'),
(76, 26, 164, 1, '', 'L', '2021-08-05', '2021-08-07');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`, `active`) VALUES
(14, 'DRAMA DRESSES', 'Drama KIT', 0),
(15, 'DANCE DRESSES', 'DANCE DRESSES', 0),
(17, 'ORNAMENTS', 'Ornaments', 0),
(18, 'FANCY DRESSES', 'Fancy Dresses', 1),
(20, 'KIDS PHOTOGRAPHY PROPS', 'Kids Photography Props', 0),
(22, 'FOLK DRESSES', 'Folk Dresses', 0),
(25, 'MUSIC INSTRUMENTS', 'Music instruments', 0),
(26, 'GENERICS', 'Generics', 1),
(27, 'TENT HOUSE', 'Tent house', 0);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32710 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(18, 10, 13, 3),
(20, 10, 19, 5),
(34, 34, 34, 3),
(56, 56, 56, 4),
(897, 29544, 183, 1),
(2371, 29181, 185, 1),
(3008, 29181, 200, 1),
(3252, 8646, 164, 1),
(4824, 19018, 216, 2),
(6113, 14949, 122, 1),
(6807, 1585, 204, 1),
(7450, 26172, 209, 10),
(7496, 14949, 208, 4),
(8295, 29544, 200, 1),
(8647, 9990, 139, 1),
(9196, 29181, 124, 1),
(9620, 6054, 164, 1),
(10013, 9990, 204, 1),
(10050, 14733, 168, 1),
(10301, 1428, 163, 4),
(12537, 29181, 149, 1),
(13300, 9990, 180, 1),
(13490, 29544, 190, 1),
(15625, 32272, 163, 4),
(16662, 1585, 225, 1),
(17698, 8941, 224, 3),
(19435, 14949, 190, 4),
(20210, 29181, 183, 1),
(21306, 14949, 142, 2),
(21991, 6054, 163, 4),
(22205, 29544, 157, 2),
(23555, 29544, 124, 1),
(23995, 19018, 168, 1),
(24084, 29544, 149, 1),
(25991, 8646, 163, 4),
(26674, 1428, 164, 1),
(26686, 29181, 157, 2),
(27406, 32272, 164, 1),
(29015, 15062, 206, 1),
(30067, 3554, 163, 4),
(30367, 29181, 190, 1),
(31782, 29544, 185, 1),
(32709, 26172, 131, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`, `active`) VALUES
(79, 26, 'Royal Export Women''s Indowestern Beige Net Embroidery Gown', '<ul>\r\n <li>Style : gown</li>\r\n <li>Fabric : top : Net ; inner santoon,</li>\r\n  <li>There might be slight color variation due to lightings &amp; flash while photo shoot.</li>\r\n</ul>\r\n', 'royal-export-women-s-indowestern-beige-net-embroidery-gown', 800, 'royal-export-women-s-indowestern-beige-net-embroidery-gown-beige.jpg', '2021-07-14', 1, 0),
(80, 26, 'Rangrasiya Corporation Women''s Anarkali Knee Length Gown ', '<ul>\r\n  <li>Fabric - gown/suit : net with silk lining</li>\r\n  <li>Style: flared salwar suits/gown</li>\r\n  <li>There might be little shade variation between actual product and image shown on the screen due to screen resolution and photography effect</li>\r\n</ul>\r\n', 'rangrasiya-corporation-women-s-anarkali-knee-length-gown', 600, 'rangrasiya-corporation-women-s-anarkali-knee-length-gown-free-size.jpg', '2021-08-03', 1, 0),
(84, 26, ' Fashion Women''s Silk Semi stitched Lehenga Choli ', '<ul>\r\n <li>Lehenga : Semi-stitched | Fabric : Haevy Net | Work : Dori and Sequins Embroidered | Inner : Satin | Size : Waist-44 inches, Height-44 inches</li>\r\n  <li>Blouse Details | Type : Unstitched | Fabric : Banglori Silk | Work : Heavily Embroidered With Threads and Zari | Size : up to 42 inches.</li>\r\n <li>Dupatta Details | Type : Ready | Fabric : Net | Work : Dori and Sequins Embroidered with stone | Dupatta Length : Upto 2.50 Mtr.</li>\r\n <li>Note: Accessories shown in the image of anarkali suit are for photography purpose. Colour of Product may slight vary due to digital photography or your monitor / mobile settings.</li>\r\n</ul>\r\n', 'fashion-women-s-silk-semi-stitched-lehenga-choli', 1300, 'hir-fashion-women-s-silk-semi-stitched-lehenga-choli.jpg', '0000-00-00', 0, 0),
(92, 26, 'MANQ Men''s Slim Fit Formal/Party Blazer', '<ul>\r\n  <li>Fabric: Poly Viscose</li>\r\n <li>Wash Care: Dry Clean Only; Style: Single Breasted</li>\r\n  <li>Pattern: Solid; Fit: Slim Fit</li>\r\n  <li>Closure: Button; Occasion: Formal</li>\r\n  <li>Number of outside pockets: 3; Number of inside pockets: 2</li>\r\n</ul>\r\n', 'manq-men-s-slim-fit-formal-party-blazer', 1500, 'manq-men-s-slim-fit-formal-party-blazer.jpg', '0000-00-00', 0, 0),
(95, 26, 'MENJESTIC Regular Fit Men''s Single breasted Blazer', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n  <li>Pic G SIZE GUIDE : Blazer Size should be &quot;6&quot; Inch Over Your Jeans Waist Size (For Eg : If you Wear a &quot;30&quot; size Jeans your blazer size should be &quot;36&quot;) - Note : Blazer Sleeve length and Waist area are alterable</li>\r\n</ul>\r\n', 'menjestic-regular-fit-men-s-single-breasted-blazer', 1000, 'menjestic-regular-fit-men-s-single-breasted-blazer.jpg', '0000-00-00', 0, 0),
(96, 26, 'SG RAJASAHAB Men Sherwani Set', '<ul>\r\n <li>Specially handcrafted clothing for the perfect look and comfort for the festive season</li>\r\n <li>Package Content :-1 Kurta, 1 Pant &amp; 1 Sherwani</li>\r\n <li>Fabric Details :- Dupion Silk || Style - Sherwani Set</li>\r\n  <li>What you see is what you get : We strive to make our colors as accurate as possible. There could be a slight variation in the colour shade due to screen brightness or due to photographic effects</li>\r\n</ul>\r\n', 'sg-rajasahab-men-sherwani-set', 1700, 'sg-rajasahab-men-sherwani-set.jpg', '2021-07-12', 2, 0),
(97, 26, 'Vastramay Men''s Beige Silk Blend Sherwani Set', '<ul>\r\n  <li>Fabric: Silk Blend | Contents: a Indo Westen Style Sherwani Set</li>\r\n  <li>Medium length and Regular Fit. Our Sherwani and Indo-western fitting is usually similar to a Regular Shirt&#39;s fitting. Select your Kurta size based on your chest dimension. Note: if one has a heavier abdomen compared to chest then he should select one size bigger kurta. Our Churidar Pajamas have drawstrings and a separate pocket attached to it. The pyjama bottom mohri is usually kept narror to bring out the best possible churi look.</li>\r\n  <li>All our Sherwanis have four inches loosening over the body measurement. So if your chest round measurement is 38 inches then you should go for a 38 (Medium) size Kurta which will have a garment ready chest measurement of 42 inches. We offer six sizes - Small = 36 (Chest - 40), Medium = 38 (Chest - 42), Large = 40 (Chest - 44), X- Large = 42 (Chest - 46), XX - Large = 44 (Chest - 48) and XXX - Large = 46 (Chest - 50).</li>\r\n <li>Bored of a Modi Coat For Men or a koti for men stylish look with a Kurta Pyjama or a pathani suit for men stylish, jubba for men, panjabi for men or khan dress for men stylish then flaunt these stylish Shervani and be sure to turn heads! Also known as Achkan for men, Bandhgala for men or Jodhpuri for men.</li>\r\n</ul>\r\n', 'vastramay-men-s-beige-silk-blend-sherwani-set', 1400, 'vastramay-men-s-beige-silk-blend-sherwani-set.jpg', '2021-07-14', 24, 0),
(99, 26, 'THANGAMAGAN MENS HALFHAND SET', '<ul>\r\n <li>Fit Type: Regular Fit</li>\r\n  <li>Fabric: Art Silk</li>\r\n <li>Style: Regular</li>\r\n <li>Neck Style: Banded Collar</li>\r\n  <li>Pattern: Printed</li>\r\n <li>Sleeve Type: Full Sleeve</li>\r\n</ul>\r\n', 'thangamagan-mens-halfhand-set', 900, 'thangamagan-mens-halfhand-set.jpg', '0000-00-00', 0, 0),
(113, 3, 'Chandrika Kids Army Costume Dress for Boys', '<ul>\r\n  <li>Sales package include- shirt, pant, cap, gun, gun cover with belt, whistle, and whistle rope.</li>\r\n  <li>The costume is made with cotton blend fabric; a combination of cotton and polyester. It feels incredibly soft to touch and is smooth on the skin, making your child feel absolutely comfortable throughout the day. The material is breathable, adding to the garment&#39;s comfort ability.</li>\r\n</ul>\r\n', 'chandrika-kids-army-costume-dress-boys', 700, 'chandrika-kids-army-costume-dress-boys.jpg', '0000-00-00', 0, 0),
(120, 26, 'Wine Prom Infinity Prewedding Shoot Trail Gown', '<p>Sleeve Length(cm):Sleeveless<br />\r\nNeckline:Scoop<br />\r\nDresses Length:Floor-Length<br />\r\nTrail: Long Trail<br />\r\nDecoration:Appliques,Beading,Embroidery,Lace,Pearls<br />\r\nFabric Type:Satin<br />\r\nItem Type:Prom Dresses, A-Line</p>\r\n', 'wine-prom-infinity-prewedding-shoot-trail-gown', 700, 'wine-prom-infinity-prewedding-shoot-trail-gown.jpg', '0000-00-00', 0, 0),
(121, 26, 'Dark Wine Satin Prewedding Shoot trail Gown', '<p>Occasion: Ball Gown , Formal Evening, Evening Gown<br />\r\nSleeve Length(cm):Full<br />\r\nBuilt-in Bra:Yes<br />\r\nDecoration:Beading,Appliques<br />\r\nFabric Type:Satin<br />\r\nDresses Length:Floor-Length<br />\r\nNeckline:O-Neck<br />\r\nBack: zipper</p>\r\n', 'dark-wine-satin-prewedding-shoot-trail-gown', 800, 'dark-wine-satin-prewedding-shoot-trail-gown.jpg', '2021-07-11', 1, 0),
(122, 26, 'Yellow prewedding Shoot Long Trail Gown', '<p>Occasion: Ball Gown , Formal Evening, Evening Gown<br />\r\nSleeve Length(cm):Full<br />\r\nBuilt-in Bra:Yes<br />\r\nDecoration:Beading,Appliques<br />\r\nFabric Type:Satin<br />\r\nDresses Length:Floor-Length<br />\r\nNeckline:O-Neck<br />\r\nBack: zipper<br />\r\n&nbsp;</p>\r\n', 'yellow-prewedding-shoot-long-trail-gown', 900, 'yellow-prewedding-shoot-long-trail-gown.jpg', '2021-07-28', 1, 0),
(123, 26, ' Royal Blue prewedding top lace work georgette long trail Gown', '<p>Occasion: Ball Gown , Formal Evening, Evening Gown<br />\r\nSleeve Length(cm):Full<br />\r\nBuilt-in Bra:Yes<br />\r\nDecoration:Beading,Appliques<br />\r\nFabric Type:Satin<br />\r\nDresses Length:Floor-Length<br />\r\nNeckline:O-Neck<br />\r\nBack: zipper</p>\r\n', 'royal-blue-prewedding-top-lace-work-georgette-long-trail-gown', 1400, 'royal-blue-prewedding-top-lace-work-georgette-long-trail-gown.jpg', '0000-00-00', 0, 0),
(124, 26, 'White Off-Shoulder Veil Princess Trail Wedding Gown', '<p>Item Type:Wedding Dresses<br />\r\nBuilt-in Bra:Yes<br />\r\nBack Design:Lace Up<br />\r\nNeckline:Boat Neck<br />\r\nDecoration:Embroidery,Lace,Appliques<br />\r\nTrail:Long Trail<br />\r\nSleeve Length(cm):Sleeveless<br />\r\nWedding Dress Fabric:Organza<br />\r\nDresses Length:Floor-Length<br />\r\n&nbsp;</p>\r\n', 'white-shoulder-veil-princess-trail-wedding-gown', 1700, 'white-shoulder-veil-princess-trail-wedding-gown.jpg', '2021-08-04', 1, 0),
(125, 26, 'Light Green Maternity Shoot Baby Shower Trail Gown', '<p>Occasion: Ball Gown , Formal Evening, Evening Gown<br />\r\nSleeve Length(cm):Full<br />\r\nBuilt-in Bra:Yes<br />\r\nDecoration:Beading,Appliques<br />\r\nFabric Type:Satin<br />\r\nDresses Length:Floor-Length<br />\r\nNeckline:O-Neck<br />\r\nBack: zipper<br />\r\n&nbsp;</p>\r\n', 'light-green-maternity-shoot-baby-shower-trail-gown', 1300, 'light-green-maternity-shoot-baby-shower-trail-gown.jpg', '2021-07-14', 1, 0),
(126, 26, 'Light Green Maternity Shoot Trail Baby Shower Gown', '<p>Occasion: Ball Gown , Formal Evening, Evening Gown<br />\r\nSleeve Length(cm):Full<br />\r\nBuilt-in Bra:Yes<br />\r\nDecoration:Beading,Appliques<br />\r\nFabric Type:Satin<br />\r\nDresses Length:Floor-Length<br />\r\nNeckline:O-Neck<br />\r\nBack: zipper<br />\r\n&nbsp;</p>\r\n', 'light-green-maternity-shoot-trail-baby-shower-gown', 1900, 'light-green-maternity-shoot-trail-baby-shower-gown.jpg', '0000-00-00', 0, 0),
(127, 26, 'Purple Maternity Shoot Trail Baby Shower Gown', '<p>Item Type:Wedding Dresses<br />\r\nBuilt-in Bra:Yes<br />\r\nBack Design:Lace Up<br />\r\nNeckline:Boat Neck<br />\r\nDecoration:Embroidery,Lace,Appliques<br />\r\nTrail:Long Trail<br />\r\nSleeve Length(cm):Sleeveless<br />\r\nWedding Dress Fabric:Organza<br />\r\nDresses Length:Floor-Length</p>\r\n', 'purple-maternity-shoot-trail-baby-shower-gown', 2000, 'purple-maternity-shoot-trail-baby-shower-gown.jpg', '0000-00-00', 0, 0),
(128, 26, 'White Top With Botem Layered Malti Colour Maternity Shoot Trail Gown', '<p>leeve Length(cm):Sleeveless<br />\r\nNeckline:Scoop<br />\r\nDresses Length:Floor-Length<br />\r\nTrail: Long Trail<br />\r\nDecoration:Appliques,Beading,Embroidery,Lace,Pearls<br />\r\nFabric Type:Satin<br />\r\nItem Type:Prom Dresses, A-Line</p>\r\n', 'white-top-botem-layered-malti-colour-maternity-shoot-trail-gown', 2100, 'white-top-botem-layered-malti-colour-maternity-shoot-trail-gown.jpg', '2021-08-03', 1, 0),
(130, 15, 'Bharatanatya  Dress', '<p>Bharatanatya KIT contains Neckless, Bangles, dress, chain, flowers as shown in the figure. Color is as shown in the image</p>\r\n\r\n<ul>\r\n  <li>Care Instructions: Home Wash / Dry Clean</li>\r\n <li>MEASUREMENTS : Pyjama Length 28 Inches ,Waist- 28 Inches || Blouse : Bust Around 28 Inches</li>\r\n <li>MATERIAL IN USE : Heavy Raw Silk | Blouse Fabric : Raw Silk | Inner : Pure Cotton</li>\r\n  <li>Suitable for Art events, Dance Festival Activities, Dance Competitions, Theatres, Stage Plays, Movies, Television, and Fashion Shows.</li>\r\n  <li>Furthermore, We Have a Strict Quality Control Team That Thoroughly Inspects The Provided Range Against Defined Quality Criteria To Ensure Flawless Delivery From Our End.</li>\r\n  <li>Stitched by designers who have 30+ years of experience in this industry. Easy and comfortable to wear.Can be used multiple times as the material is of excellent quality.</li>\r\n</ul>\r\n', 'bharatanatya-dress', 1200, 'bharatanatya-kit.jpg', '2021-08-03', 1, 0),
(131, 15, 'Kuchipudi Dance Dress', '<ul>\r\n  <li>Includes: Blouse, Bottom, Anchal, Hipcloth,Jewellaries as shown in the image.</li>\r\n  <li>Perfect For Classical Dance</li>\r\n</ul>\r\n', 'kuchipudi-dance-dress', 800, 'kuchipudi-dance-kit.jpg', '2021-08-04', 1, 0),
(132, 15, 'Yakshagana Dress', '<p>Costumes used in Yakshagana are very unique and elaborate. Large size head gear, coloured faces, elaborate costumes all over the body and musical beads on the legs (Gejje). Performers need great physique to perform with heavy costume for several hours and also strong voice and acting/dancing skills.</p>\r\n', 'yakshagana-dress', 900, 'yakshagana-kit.jpg', '2021-08-04', 1, 0),
(134, 15, 'Odissi Dance Fancy Dress', '<p><strong>Buy Online Beautiful Indian Classical Odissi Dance Fancy Dress&nbsp;</strong><strong>costume</strong><strong>&nbsp;(YELLOW with Red Border)</strong>&nbsp;costume yellow color with a red border. This Traditional Odissi dance costume. Pallu stitched as the front and opens up like a beautiful fan. This costume is specially designed Odissi dance. This costume use Chairman fabric. This costume is designed for a girl to wear in school functions, fancy dress competitions, Dance competitions, Baisakhi festival.&nbsp;<strong>Purchase Odissi Fancy Dress Directly</strong>&nbsp;<strong>from Fancy Dress &amp; Costume Manufacturer/ Exporter&nbsp;based in Delhi NCR India.</strong>&nbsp;The costume is available in different sizes and more beautiful color for all the age group of girls.</p>\r\n\r\n<p><strong>This Rent dress Includes Jewellery.</strong></p>\r\n', 'odissi-dance-fancy-dress', 900, 'odissi-dance-fancy-dress.JPG', '2021-07-18', 2, 0),
(135, 15, 'Manipuri  Dance Dress ', '<p><strong>Buy Online Beautiful&nbsp;</strong><strong>Manipuri Dance Fancy Dress Costume </strong>. This costume is designed for a girl to wear in school functions, fancy dress competitions, Dance competitions, Baisakhi festival along with during weddings and New Year celebrations. Red &amp; Green in color. Comfortable in wearing and pure chairman material is used which is more durable.&nbsp;<strong>Purchase&nbsp;<strong>Manipuri Dance Fancy Dress Costume for Girls</strong></strong>&nbsp;<strong>Direct from Fancy Dress &amp; Costume&nbsp;<strong>Manufacturer/ Exporter</strong>&nbsp;based in Delhi NCR, India.</strong>&nbsp;&nbsp;Washcare &ndash; Drycleaning. The costume is available in different sizes and beautiful color for all the age group of girls.</p>\r\n\r\n<p><strong>This Rent Kit Not Includes Jewellery.</strong></p>\r\n', 'manipuri-dance-dress', 700, 'manipuri-folk-dance-fancy-dress_1626786367.jpg', '2021-07-22', 2, 0),
(136, 18, 'Jhansi Ki Rani Laxmi Bai', '<p><strong>Buy online</strong>&nbsp;<strong>Rani Lakshmi Bai Fancy Dress costume&nbsp;</strong>for girls at a very reasonable price. This costume uses heavy Satin and beautiful Red color and blouse with golden lacework. This costume is a sure way to make your little girl bring the beautiful patriot out in her. A stunning combination of courage, kindness, brains, and honor, Rani Laxmi Bai cemented her place as our favorite warrior in our hearts. Fierce and strong, Jhansi ki Rani Laxmi Bai Saree with Turban, was indisputably one of the best warriors of her time. This costume specially designed role play in Rani Lakshmi Bai Character in a school function,<strong>&nbsp;Indian state theme competitions,&nbsp;</strong>Independence Day<strong>. </strong>&nbsp;The costume is available in different sizes and beautiful colors for all the age groups of Girls.</p>\r\n\r\n<p><strong>This Rent dress include&nbsp;<a href="https://fancydressnoida.com/product/sword-for-drama/">Sword</a>&nbsp;and Shield.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'jhansi-ki-rani-laxmi-bai', 500, 'jhansi-ki-rani-laxmi-bai.JPG', '2021-07-30', 1, 0),
(137, 18, 'Lavani Saree Fancy Dress', '<p><strong>Beautiful Purple Lavani Saree Fancy Dress Costume made</strong>&nbsp;<strong>with heavy satin</strong>. This costume is specially designed according to Maharashtra&rsquo;s famous Lavani Dance. &nbsp;The&nbsp;Lavani Saree Fancy Dress Costume dress is used on Independence Day, Republic Day to dress like Rani Laxmi Bai to do a stage dance. This costume wears this for doing the traditional Maharashtrian&nbsp;<strong>LAVNI</strong>&nbsp;or<strong>&nbsp;KOLI</strong>&nbsp;dance. The saree can also be used to dress your daughter on traditional family functions like Marriage, Engagement, Diwali, Great for fancy dress competitions, stage shows, school function drama, kids theme party, birthday party.&nbsp;The costume is available in different sizes and beautiful color for all the age group of Girls.</p>\r\n\r\n<p><strong>This Rent dress does&nbsp;include Jewellery.</strong></p>\r\n', 'lavani-saree-fancy-dress', 600, 'lavani-saree-fancy-dress.JPG', '2021-08-04', 2, 0),
(138, 15, 'Kalbelia Dance Dress ', '<p><strong>Buy online Designed Rajasthani Kalbelia Dance Fancy Dress&nbsp;</strong><strong>Costume.</strong>&nbsp;This dress includes an Angrakhi worn on the upper body. The sleeves of the Angrakhi can either be half-length or full length. The head of the dancers is covered by an Odhani / Dupatta. The main attraction is the long skirt on their lower body which is called a Lehenga or a Ghagra which has a wide circumference. This Costume whole dress is essentially black in color with red decorative laces. It also works with mirror and colors full thread is sewed in an assortment of patterns. This costume wear for stage shows, school function, and Kalbelia dance competition.&nbsp;<strong>Purchase Rajasthani Kalbelia Dance Dress Costume Direct from Fancy Dress &amp; Costume Manufacturer/ Exporter based in Delhi NCR India.</strong></p>\r\n\r\n<p><strong>This Rent dress&nbsp;does&nbsp;include Jewellery.</strong></p>\r\n', 'kalbelia-dance-dress', 900, 'kalbelia-dance-dress.JPG', '2021-07-18', 1, 0),
(139, 14, 'Onake Obavva', '<p>Onake&nbsp;Obavva dress and onake with all jewellery available.</p>\r\n', 'onake-obavva', 800, 'onake-obavva.jpeg', '2021-08-04', 7, 0),
(141, 17, 'Gold Plated Pearl Studded Necklace Jewellery Set', '<ul>\r\n <li>combine it with matching dress and be the limelight of every Occassion</li>\r\n <li>Plated with High Quality Polish for Long Lasting Finish</li>\r\n  <li>Length of necklace: 51 cm, Length of earrings: 2 cm , Product colour may slightly vary due to photographic lighting sources or your monitor settings</li>\r\n <li>Nickel free and Lead free as per International Standards that makes it very skin friendly. The plating is non-allergic and safe for all environments</li>\r\n <li>Jewelery Care : Never allow your fashion jewellery to come in contact with harsh chemicals, oils, nor spray perfumes directly on them. This will cause the jewellery to fade, discolour, or even ruin them completely. And we wouldn&rsquo;t want that!</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'gold-plated-pearl-studded-necklace-jewellery-set', 300, 'gold-plated-pearl-studded-necklace-jewellery-set.jpg', '2021-07-20', 1, 0),
(142, 17, 'American Diamond Combo of Necklace Set', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n  <li>combine it with matching dress and be the limelight of every Occassion</li>\r\n <li>Plated with High Quality Polish for Long Lasting Finish</li>\r\n  <li>Suitable for all occassions</li>\r\n  <li>Nickel free and Lead free as per International Standards that makes it very skin friendly. The plating is non-allergic and safe for all environments</li>\r\n <li>Jewelery Care : Never allow your fashion jewellery to come in contact with harsh chemicals, oils, nor spray perfumes directly on them. This will cause the jewellery to fade, discolour, or even ruin them completely. And we wouldn&rsquo;t want that!</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'american-diamond-combo-of-necklace-set', 450, 'american-diamond-combo-of-necklace-set.jpg', '2021-08-05', 1, 0),
(143, 17, 'Gold Plated Wedding Jewellery Pearl Long Haram Necklace Set ', '<ul>\r\n <li>Contains : 1 Necklace + 1 Pair of Earring</li>\r\n  <li>Dimension : Necklace Length - 22 cm| Necklace Width - 9 cm| Earring Length - 4 cm| Earring Width - 2 cm</li>\r\n  <li>Superior Quality &amp; Skin Friendly: High Quality as per International Standards that makes it very skin friendly. It has been made from toxic free materials Anti-Allergic and Safe for Skin. It can be worn over long time periods without any complains of ach and swelling. Made from Premium Quality Material this product assures to remain in its Original Glory even after years of usage.</li>\r\n</ul>\r\n', 'gold-plated-wedding-jewellery-pearl-long-haram-necklace-set', 500, 'gold-plated-wedding-jewellery-pearl-long-haram-necklace-set.jpg', '2021-08-04', 2, 0),
(144, 17, 'Gold Plated Wedding Jewellery Kundan Choker Necklace Set', '<ul>\r\n <li>Contains : 1 Necklace + 1 Pair of Earring + 1 Maangtikka</li>\r\n <li>Dimension : Necklace Length - 16 cm| Necklace Width - 12 cm| Earring Length - 4 cm| Earring Width - 2 cm| Maangtikka Length - 12 cm| Maangtikka Width - 2 cm</li>\r\n <li>Superior Quality &amp; Skin Friendly: High Quality as per International Standards that makes it very skin friendly. It has been made from toxic free materials Anti-Allergic and Safe for Skin. It can be worn over long time periods without any complains of ach and swelling.</li>\r\n</ul>\r\n', 'gold-plated-wedding-jewellery-kundan-choker-necklace-set', 800, 'gold-plated-wedding-jewellery-kundan-choker-necklace-set.jpg', '2021-07-20', 1, 0),
(145, 17, 'Floral Gold Plated Wedding Jewellery Kundan Choker Necklace Set', '<ul>\r\n  <li>Contains : 1 Necklace + 1 Pair of Earring</li>\r\n  <li>Dimension : Necklace Length -12 cm| Necklace Width - 13 cm| Earring Length - 4.4 cm| Earring Width - 2.5 cm</li>\r\n  <li>Women Love Jewelry as it not only enhances their beauty, but also gives them the social confidence. Make your moment memorable with this range. This jewel set features a unique one of a kind traditional embellish with antic finish. Earring is very easy to use being lightweight and has a design which makes it very comfortable.</li>\r\n  <li>Superior Quality &amp; Skin Friendly : High Quality as per International Standards that makes it very skin friendly. It has been made from toxic free materials Anti-Allergic and Safe for Skin. It can be worn over long time periods without any complains of ach and swelling. Made from Premium Quality Material this product assures to remain in its Original Glory even after years of usage.</li>\r\n</ul>\r\n', 'floral-gold-plated-wedding-jewellery-kundan-choker-necklace-set', 600, 'floral-gold-plated-wedding-jewellery-kundan-choker-necklace-set.jpg', '0000-00-00', 0, 0),
(146, 17, 'Splendid Gold Plated Wedding Jewellery Austrian Diamond Choker Necklace Set', '<ul>\r\n  <li>Contains : 1 Necklace + 1 Pair of Earring + 1 Maangtikka</li>\r\n <li>Dimension : Necklace Length -11.5 cm| Necklace Width - 14 cm| Earring Length - 7 cm| Earring Width - 3 cm| Maangtikka Length - 10.5 cm| Maangtikka Width - 2.4 cm</li>\r\n  <li>Women Love Jewelry as it not only enhances their beauty, but also gives them the social confidence. Make your moment memorable with this range. This jewel set features a unique one of a kind traditional embellish with antic finish. Earring is very easy to use being lightweight and has a design which makes it very comfortable.</li>\r\n  <li>Superior Quality &amp; Skin Friendly : High Quality as per International Standards that makes it very skin friendly. It has been made from toxic free materials Anti-Allergic and Safe for Skin. It can be worn over long time periods without any complains of ach and swelling. Made from Premium Quality Material this product assures to remain in its Original Glory even after years of usage.</li>\r\n</ul>\r\n', 'splendid-gold-plated-wedding-jewellery-austrian-diamond-choker-necklace-set', 1200, 'splendid-gold-plated-wedding-jewellery-austrian-diamond-choker-necklace-set.jpg', '0000-00-00', 0, 0),
(147, 17, 'Glamorous  Gold Plated Wedding Jewellery Pearl Choker Necklace Set Combo', '<ul>\r\n <li>Contains : 1 Necklace + 1 Pair of Earring + 1 Maangtikka</li>\r\n <li>Dimension : Necklace Length -11.5 cm| Necklace Width - 14 cm| Earring Length - 7 cm| Earring Width - 3 cm| Maangtikka Length - 10.5 cm| Maangtikka Width - 2.4 cm</li>\r\n  <li>Women Love Jewelry as it not only enhances their beauty, but also gives them the social confidence. Make your moment memorable with this range. This jewel set features a unique one of a kind traditional embellish with antic finish. Earring is very easy to use being lightweight and has a design which makes it very comfortable.</li>\r\n  <li>Superior Quality &amp; Skin Friendly : High Quality as per International Standards that makes it very skin friendly. It has been made from toxic free materials Anti-Allergic and Safe for Skin. It can be worn over long time periods without any complains of ach and swelling. Made from Premium Quality Material this product assures to remain in its Original Glory even after years of usage.</li>\r\n</ul>\r\n', 'glamorous-gold-plated-wedding-jewellery-pearl-choker-necklace-set-combo', 1400, 'glamorous-gold-plated-wedding-jewellery-pearl-choker-necklace-set-combo.jpg', '0000-00-00', 0, 0),
(148, 17, 'Traditional Gold Plated Wedding Jewellery Long Haram Necklace Set ', '<ul>\r\n <li>Contains : 1 Necklace + 1 Pair of Earring</li>\r\n  <li>Dimension : Necklace Length - 22 cm| Necklace Width - 9 cm| Earring Length - 4 cm| Earring Width - 2 cm</li>\r\n  <li>Traditional LCT Gold Plated Long Haram Necklace Set for Women will complement any Indian attire. Women Love Jewelry as it not only enhances their beauty, but also gives them the social confidence. Make your moment memorable with this range. This jewel set features a unique one of a kind traditional embellish with antic finish. Earrings are very easy to use being lightweight and has a design which makes it very comfortable.</li>\r\n <li>Superior Quality &amp; Skin Friendly: High Quality as per International Standards that makes it very skin friendly. It has been made from toxic free materials Anti-Allergic and Safe for Skin. It can be worn over long time periods without any complains of ach and swelling.&nbsp;</li>\r\n</ul>\r\n', 'traditional-gold-plated-wedding-jewellery-long-haram-necklace-set', 1000, 'traditional-gold-plated-wedding-jewellery-long-haram-necklace-set.jpg', '2021-08-04', 1, 0),
(149, 17, 'Jewellery American Diamond Gold Plated Bangles for Women and Girls', '<p>These set of bangles is perfect for all occasions. A classic fusion of exquisite craftsmanship and feminine elegance.</p>\r\n\r\n<p>Pair these intricate bangles set with any outfit to craft a precious look in no time at all. It is produced under fine quality production, so wear this masterpiece of latest fashion and designing without worrying about anything.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'jewellery-american-diamond-gold-plated-bangles-women-and-girls', 250, 'jewellery-american-diamond-gold-plated-bangles-women-and-girls.jpg', '2021-08-04', 1, 0),
(150, 17, 'Zaveri Pearls Royal Blue Leaf Stone with Austrian Diamond Floral Necklace Set', '<ul>\r\n  <li>Brand : Zaveri Pearls</li>\r\n  <li>Style:Contemporary Stylish Trendy Look,The Look is Stunning and Preciously Suitable for all Kinds of Occasions. It&#39;s a Choice of Many Bollywood Celebrities and stars</li>\r\n  <li>Color: Glossy Gold &amp; Royal Blue</li>\r\n  <li>Material: Non-Precious Metal, Plating: 22kt gold plating</li>\r\n <li>Zaveri Pearls Collection Can Be Seen In Major Tv Serials of Balaji Telefilms Pvt Ltd, Designer And Boutique Collection of Zaveri Pearls Is Preferred By Many Designers, Stars, Celebrities,Shows.</li>\r\n</ul>\r\n', 'zaveri-pearls-royal-blue-leaf-stone-austrian-diamond-floral-necklace-set', 600, 'zaveri-pearls-royal-blue-leaf-stone-austrian-diamond-floral-necklace-set.jpg', '0000-00-00', 0, 0),
(151, 18, 'Lord Shiva Costume', '<p>Costume Contents:<br />\r\n&ndash; Shiva Soft Dress Tiger Skin Print with White Fur<br />\r\n&ndash; Black Long Hair Wig with Tight Hair Bun<br />\r\n&ndash; Artificial Snake wrap-around in neck<br />\r\n&ndash; Chand (Moon)<br />\r\n&ndash; Earrings (Rudraksha)<br />\r\n&ndash; Rudraksha Mala to tie on the Hair Bun<br />\r\n&ndash; Trident &ndash; can hold in hand or attach a stick<br />\r\n&ndash; Damru<br />\r\n&ndash; Long Rudraksha Mala Necklace<br />\r\n&ndash; Pair of Rudraksha Wrist bands (Bajubandh)<br />\r\nColor: Brown and Yellow (tiger skin)</p>\r\n', 'lord-shiva-costume', 550, 'lord-shiva-costume.jpg', '2021-08-04', 14, 0),
(152, 18, 'RADHA RANI FANCY DRESS', '<p><strong>This costume includes:</strong></p>\r\n\r\n<ul>\r\n <li>Beautiful Red Color Saree with Flower &amp; Gota work on Border &amp; Saree</li>\r\n  <li>1 Pair of Earings</li>\r\n  <li>1 Necklace</li>\r\n <li>1 Radha Rani Rich Look Crown</li>\r\n</ul>\r\n', 'radha-rani-fancy-dress', 350, 'radha-rani-fancy-dress.jpg', '2021-07-26', 1, 0),
(153, 18, 'LORD RAM FANCY DRESS', '<p>This&nbsp;<strong>LORD RAM</strong>&nbsp;costume is made up of Butter crepe material ( Durable Cotton) and is non-itching, Non-Allergic and very Hygienic for kids.</p>\r\n\r\n<p><strong>This costume includes:</strong></p>\r\n\r\n<ul>\r\n <li>Red Color Dhoti</li>\r\n  <li>Waist Belt Made of Cloth</li>\r\n <li>A Long Red Color Scarf</li>\r\n <li>1 Pair of Earings</li>\r\n  <li>1 Necklace&nbsp;</li>\r\n <li>Beautifully Designed Crown</li>\r\n <li>1 Bow</li>\r\n  <li>4 Arrows</li>\r\n</ul>\r\n', 'lord-ram-fancy-dress', 400, 'lord-ram-fancy-dress.jpg', '2021-07-19', 1, 0),
(154, 18, 'GIRRAFF FANCY DRESS ', '<p>This Costume consists of:</p>\r\n\r\n<ul>\r\n <li>Head Gear</li>\r\n  <li>Fully Body Suit</li>\r\n</ul>\r\n', 'girraff-fancy-dress', 250, 'girraff-fancy-dress.jpg', '2021-08-03', 2, 0),
(155, 18, 'PEACOCK FANCY DRESS', '<p>It&rsquo;s a High Quality Imported Beautiful Peacock costume with Head Gear and full body suit. This costume made out by velvet clothes and very hygienic to wear for kids.</p>\r\n\r\n<p>This Costume consists of:</p>\r\n\r\n<ul>\r\n  <li>Head Gear</li>\r\n  <li>Fully Body Suit</li>\r\n  <li>Peacock Feathers</li>\r\n</ul>\r\n', 'peacock-fancy-dress', 280, 'peacock-fancy-dress.jpg', '0000-00-00', 0, 0),
(156, 18, 'LOTUS FANCY DRESS', '<p>This&nbsp;<strong>LOTUS Flower</strong>&nbsp;costume is made up of Butter crepe material ( Durable Cotton) and is non-itching, Non-Allergic and very Hygienic for kids.</p>\r\n\r\n<p><strong>This costume includes:</strong></p>\r\n\r\n<ul>\r\n  <li>Green Color Body Suit</li>\r\n  <li>Lotus Shaped Cutout</li>\r\n  <li>Lotus Leaves</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'lotus-fancy-dress', 200, 'lotus-fancy-dress.jpg', '2021-07-23', 3, 0),
(157, 18, 'POLICE FANCY DRESS', '<p><strong>POLICE&nbsp;</strong>Fancy Dress Costume inculcate your child as our helpers for our nation. &nbsp;This Costume is made of Cotton and Easy to wear for kids.&nbsp;It can be used by both BOYS/ GIRLS. It&rsquo;s free in size.</p>\r\n\r\n<p><strong>This costume includes:</strong></p>\r\n\r\n<ul>\r\n  <li>Top (Shirt)</li>\r\n  <li>Bottom(Pants)</li>\r\n  <li>Belt</li>\r\n <li>Cap</li>\r\n</ul>\r\n', 'police-fancy-dress', 250, 'police-fancy-dress.jpg', '2021-08-04', 1, 0),
(159, 18, 'ARMY FANCY DRESS', '<p><strong>ARMY</strong>&nbsp;Fancy Dress Costume inculcate your child as our helpers for our nation. &nbsp;This Costume is made of Cotton and Easy to wear for kids.&nbsp;It can be used by both BOYS/ GIRLS. It&rsquo;s free in size.</p>\r\n\r\n<p><strong>This costume includes:</strong></p>\r\n\r\n<ul>\r\n  <li>Top (Shirt)</li>\r\n  <li>Bottom(Pants)</li>\r\n  <li>Belt</li>\r\n <li>Cap</li>\r\n</ul>\r\n', 'army-fancy-dress', 350, 'army-fancy-dress.jpg', '0000-00-00', 0, 0),
(160, 18, 'SUBHASH CHANDRA BOSE FANCY DRESS', '<p><strong><strong>SUBHASH CHANDRA BOSE</strong>&nbsp;&nbsp;</strong>Fancy Dress Costume inculcate your child as our helpers for our nation. &nbsp;This Costume is made of Cotton and Easy to wear for kids.&nbsp;It can be used by both BOYS/ GIRLS. It&rsquo;s free in size.</p>\r\n\r\n<p><strong>This costume includes:</strong></p>\r\n\r\n<ul>\r\n <li>Top (Shirt)</li>\r\n  <li>Bottom(Pants)</li>\r\n  <li>Belt</li>\r\n <li>Cap</li>\r\n</ul>\r\n', 'subhash-chandra-bose-fancy-dress', 400, 'subhash-chandra-bose-fancy-dress.jpg', '0000-00-00', 0, 0),
(161, 18, 'NAVY FANCY DRESS', '<p><strong>NAVY &nbsp;</strong>Fancy Dress Costume inculcate your child as our helpers for our nation. &nbsp;This Costume is made of Cotton and Easy to wear for kids.&nbsp;It can be used by both BOYS/ GIRLS.&nbsp;</p>\r\n\r\n<p><strong>This costume includes:</strong></p>\r\n\r\n<ul>\r\n  <li>Top (Shirt)</li>\r\n  <li>Bottom(Pants)</li>\r\n  <li>Belt</li>\r\n <li>Cap</li>\r\n</ul>\r\n', 'navy-fancy-dress', 350, 'navy-fancy-dress.jpg', '0000-00-00', 0, 0),
(162, 18, 'Nurse Fancy Dress', '<p>Pattern - Plain</p>\r\n\r\n<p>Colour - White</p>\r\n\r\n<p>Sleeeve Type - Half</p>\r\n\r\n<p>Neck Shape - Collar Neck</p>\r\n', 'nurse-fancy-dress', 500, 'nurse-fancy-dress.jpg', '0000-00-00', 0, 0),
(163, 14, 'Shivaji Maharaj Dress', '<p><strong>Shivaji Maharaj -&nbsp;</strong>This costume is specially designed for boys who want to play the role of Shiva Ji in school functions, fancy dress competitions, Indian state theme competitions or role model presentations.&nbsp;<strong>It is a combination of a full-length dress with pajama only</strong>. Brocade and dupion are used to make this costume.</p>\r\n\r\n<p>The costume is available in different sizes and a more beautiful color for all the age groups of BOYS.</p>\r\n\r\n<p><strong>This Rent dress does include Talwar, Turban, and Accessories.</strong></p>\r\n', 'shivaji-maharaj-dress', 700, 'shivaji-maharaj-dress.JPG', '2021-08-04', 7, 0),
(164, 14, ' Freedom Fighter Swami Vivekanand Costume -Orange', '<ul>\r\n  <li>Swami Vivekanand costume set includes everything a child needs to look apart. It includes includes orange kurta, dhoti and pagri.</li>\r\n  <li>Your kids will love playing the role of a National Hero with Swami Vivekanand costume set. It&rsquo;s made from high-quality materials to ensure safety and durability.</li>\r\n  <li>Material: Made of very soft &amp; breathable polyester fabric. It is lightweight, flexible and offers a comfortable fit for the kids costume</li>\r\n <li>Costume for Freedom Fighter, National Hero, School Annual Function, Theme party, Fancy Dress Competition, Stage Show Dress, Teachers Day</li>\r\n</ul>\r\n', 'freedom-fighter-swami-vivekanand-costume-orange', 450, 'freedom-fighter-swami-vivekanand-costume-orange.jpg', '2021-08-04', 4, 0),
(165, 18, 'Gandhiji Kit', '<ul>\r\n <li>Color: White</li>\r\n <li>Costumes contains Dhoti, Chadar, Spectacle, Blad Cap</li>\r\n <li>Disclaimer:Product color may slightly vary due to photographic lighting sources or your monitor settings.</li>\r\n</ul>\r\n', 'gandhiji-kit', 700, 'gandhiji-kit.jpg', '2021-08-04', 1, 0),
(167, 18, 'Fairy Dress', '<ul>\r\n  <li>Fly into the world of Fantasy with Fancy Dresses Fairy Costume. It includes White Frock, Fairy/Angel Wings, Stick/wand and its Crown.</li>\r\n  <li>Your kids will love playing the role of a Fairy with this Costume set. It&rsquo;s made from high-quality materials to ensure safety and durability.</li>\r\n  <li>Your Little Princess Will Be The Cutest Kid In The Town This Season With Fancy Dresses Net/Polyester Made Fairy Costume.</li>\r\n <li>Fairy Costume,Fairy fancy dress,Cost Play costume,California Costume,Halloween Costume,Fairy Tales Costume,Story book Costume,Birthday Party Dress,Annual Function Dress,Theme Party Dress,Competition.</li>\r\n</ul>\r\n', 'fairy-dress', 350, 'kaku-fancy-fairy-dress.jpg', '2021-07-23', 2, 0),
(168, 14, 'Bahubali Dress', '<ul>\r\n <li>Color: Multicolor</li>\r\n  <li>Sales Package: Upper Jacket, Dhoti, Wrist Guard, Mukut Crown, Sword</li>\r\n  <li>Washcare: Hand Wash, Machine Wash &amp; Dry Clean</li>\r\n  <li>Disclaimer:Product color may slightly vary due to photographic lighting sources or your monitor settings.</li>\r\n</ul>\r\n', 'bahubali-dress', 800, 'bahubali-dress.jpg', '2021-08-04', 4, 0),
(169, 18, 'Santa Claus Costume Dress', '<ul>\r\n  <li>Includes:Jacket,Pant,Hat,Pouch,Beard,Belt,Gloves</li>\r\n <li>Very Comfortable</li>\r\n <li>Perfect for Fairy Tales&amp;Disney Costume</li>\r\n</ul>\r\n', 'santa-claus-costume-dress', 300, 'santa-claus-costume-dress.jpg', '2021-07-20', 1, 0),
(171, 20, 'Photo prop for kid', '<p>#newyear #babymodel #babygirl #newyearscelebration #newyearparty #babyootd #baby #newyeareve #babyshop #babywearing #babydoll #babyboy #newyearresolution #babylights #newyearseve #babys #newyearnewme #babylove #newyears #newyear2020 #babyshower #babyfashion #newyearsresolutions #babycute #newyearsresolution #babyclothes #prilaga #babysitting #babystyle #babyphotography</p>\r\n', 'photo-prop-kid', 200, 'photo-prop-kid.jpg', '2021-08-03', 1, 0),
(172, 20, 'Kid Photo props with dress', '<p>This kit contains all the accessories as shown in the figure</p>\r\n', 'kid-photo-props-dress', 300, 'kid-photo-props-dress.jpg', '2021-08-04', 1, 0),
(173, 20, 'Monkey dress for kids', '<p>This kit contains all the accessories as shown in the figure</p>\r\n', 'monkey-dress-kids', 200, 'monkey-dress-kids.jpg', '2021-08-03', 3, 0),
(179, 14, 'Cinderella Dress Princess Costume', '<ul>\r\n  <li>Material: Flannel,wedding tulle, 100% COTTON lining, very comfortable. This Cinderella princess dress has 7 layers tulle and 1 layer lining,very puff,no need of petticoat</li>\r\n <li>Packet include : one princess dressï¼Œone pair of sleevelet.Not a Disney product</li>\r\n</ul>\r\n', 'cinderella-dress-princess-costume', 500, 'cinderella-dress-princess-costume.jpg', '0000-00-00', 0, 0),
(180, 14, 'Jansi Rani Lakshmi Bai', '<p>This dress contains saree, sword, shield, jewellary as shown in the image</p>\r\n', 'jansi-rani-lakshmi-bai', 400, 'jansi-rani-lakshmi-bai.jpg', '2021-08-04', 1, 0),
(181, 14, 'Ravana Lankesh Evil', '<p>- Black Dhoti with Golden border</p>\r\n\r\n<p>- Black Stole with golden border</p>\r\n\r\n<p>- Big Crown / Mukut</p>\r\n\r\n<p>- Evil Color Chest Armour</p>\r\n\r\n<p>- Kantha Necklace Adjustable</p>\r\n\r\n<p>- Long Necklace</p>\r\n\r\n<p>- Big Earrings</p>\r\n\r\n<p>- Pair of 2 Armlets (Bajubandh)</p>\r\n\r\n<p>- Moustache</p>\r\n\r\n<p><strong>Material:</strong>&nbsp;High Quality Polyester</p>\r\n\r\n<p><strong>Color:&nbsp;</strong>Black &amp; Golden</p>\r\n', 'ravana-lankesh-evil', 500, 'ravana-lankesh-evil.jpg', '2021-08-04', 2, 0),
(182, 14, 'Tippu Sultan', '<p>Tippu Sultan Costume set includes 6 pieces i. e a coat, a pant , Angarkha , Moti mala , belt and a pagdi The dress is made up of Brocket fabric and is non itching and non allergic. The first wash has to be dry clean. The dress can be used in school plays, stage shows, birthday parties.</p>\r\n', 'tippu-sultan', 300, 'tippu-sultan.jpg', '0000-00-00', 0, 0),
(183, 14, 'Rishi Muni ', '<p>This costume&nbsp; contains orange dothi, rudhrakshi mala, wig as shown in the image</p>\r\n', 'rishi-muni', 200, 'rishi-muni.jpg', '2021-08-04', 1, 0),
(184, 14, 'Hanuman ', '<ul>\r\n <li>Fabric Material : FurFabric. Sales Package : 1 top, 1 Dhoti look shorts, 1 waist belt, 1 mukut, 1 mala, 1 earring, 1 bajuband, 1 hanuman mask &amp; Tail.</li>\r\n</ul>\r\n', 'hanuman', 300, 'hanuman.jpg', '2021-07-21', 2, 0),
(185, 15, 'Mohiniyattam Dance Costume', '<p><strong>Mohiniyattam Dance Costume Colour: Plain white or Off-White such as Ivory or Cream colored Sari with Gold Border</strong></p>\r\n\r\n<p>Available Costumes with Jewelleries | Ornaments&nbsp;</p>\r\n', 'mohiniyattam-dance-costume', 700, 'mohiniyattam-dance-costume.jpg', '2021-08-04', 1, 0),
(186, 15, 'Indian Classical Dance Kathak Dance', '<p>This contains Blue &amp; Red Anarkali,Tights Dupatta</p>\r\n\r\n<p>Material: Georgette &amp; Net</p>\r\n', 'indian-classical-dance-kathak-dance', 200, 'indian-classical-dance-kathak-dance.jpg', '0000-00-00', 0, 0),
(187, 15, 'Kathakali', '<p>Tiny anklets clinking around the ankles, heavily studded gem necklaces, gilt breast plates, bracelets, bangles, etc enhance the entire appearance of the Kathakali dancer. These accessories are mainly stone studded, which showcase a glittering outlook.</p>\r\n', 'kathakali', 800, 'kathakali.jpg', '2021-08-03', 1, 0),
(188, 15, 'Indian Traditional Punjabi Bhangra ', '<p>It includes includes kurta, lungi, jacket, turra and one pair of handkerchief .</p>\r\n\r\n<p>Material: Made of very soft &amp; breathable Polyester fabric. It is lightweight, flexible and offers a comfortable fit for the kids costume</p>\r\n', 'indian-traditional-punjabi-bhangra', 300, 'indian-traditional-punjabi-bhangra.jpg', '0000-00-00', 0, 0),
(189, 22, 'Dollu Kunitha', '<p>It contains a black sheet-rug is tied on the lower body over the `dhooti`&amp; tala, tappad,trumpets, gong and flute,.</p>\r\n', 'dollu-kunitha', 600, 'dollu-kunitha.jpg', '2021-08-03', 1, 0),
(190, 22, 'Goravara Kunitha', '<p>This costume contains&nbsp;yellow <em>Panche</em>/<em>Kache</em>&nbsp;,&nbsp;<em>Nagabetha</em>(wooden stick) ,a&nbsp;<em>rumala&nbsp;Gante</em>&nbsp;(jingle),&nbsp;<em>Jolge</em>&nbsp;(bag),&nbsp;<em>Bandara</em>&nbsp;(holy ash),&nbsp;&nbsp;<em>Dhone</em>&nbsp;(bowl),&nbsp;<em><a href="https://en.wikipedia.org/wiki/Damaru">Damaru</a></em>&nbsp;(small drum), and&nbsp;<em>Pillangovi</em>&nbsp;(flute) ,&nbsp;red shirt and&nbsp;<em>Kavade sara</em>&nbsp;(cowries necklace)</p>\r\n', 'goravara-kunitha', 450, 'goravara-kunitha.jpg', '2021-08-04', 1, 0),
(191, 22, 'Veeragase costume', '<p>This costume contains a traditional headgear ,necklace made of Rudraksha&nbsp;beads, a hip-belt called&nbsp;<em>rudra muke</em>, an ornament resembling a snake and worn around the neck called&nbsp;<em>Nagabharana</em>&nbsp;and anklets.</p>\r\n', 'veeragase-costume', 600, 'veeragase-costume.jpg', '2021-08-04', 1, 0),
(192, 22, 'Kodava dress for Couples', '<p>The &#39;<em>Kodava costume</em>&#39; for men is called &#39;Kupya&#39; which is a collar less half sleeve knee length jacket secured at waist by a&nbsp;<em>chele</em>, a red gold-embroidered silk sash,&nbsp;and a brocaded white turban&nbsp;<em>(pani mande tuni)</em>. Unlike the black one, this is long sleeved.</p>\r\n\r\n<p><em>The brides in Coorg wear</em>&nbsp;a red colored&nbsp;<em>Kodagu</em>&nbsp;style saree made with golden dots and she combines it with a red blouse ( INR1200 for both men and women dress)</p>\r\n', 'kodava-dress-couples', 1200, 'kodava-dress-couples.jpg', '2021-07-24', 1, 0),
(193, 22, 'Buta Kola', '<p>Bhuta Kola, an ancient ritual dance, is the worship of spirits, by the Tulu&nbsp;community of Tulu Nadu, which includes Kasargod&nbsp;taluk in Kerala and Dakshina kannada and Udupi&nbsp;districts in Karnataka. The ritual of Bhuta Kola is almost similar to that of Theyyam which is a custom of worship, mostly practiced by the Malayali in North Malabar.The custom of Bhuta Kola is carried on through out the night in a decorated Pandal that contains images of deities and other substances of reverence. The Pandal is properly adorned with different figures made out of areca flower, mango leaf and palm leaf. The musicians, along with drums and other instruments provide tunes of varying tempo at various phases of the processions. The spirit impersonator, who invokes the Bhuta, is prepared in colourful attires, along with bells, sword and other accessories.&nbsp;</p>\r\n', 'buta-kola', 350, 'buta-kola.jpg', '2021-07-23', 1, 0),
(194, 22, 'Somana kunita', '<p>Somana kunita or the &lsquo;Mask dance&rsquo; is a celebratory form of spirit worship prevalent in south Karnataka region.The props include a cane or stick and peacock feathers. A mini headgear containing colourful flowers, neem leaves and colourful pieces of cloth is also worn. The music is provided by the Doonu(percussion), Mouri(wind pipe) and the Sadde(a windpipe to keep the shruti).&nbsp;</p>\r\n', 'somana-kunita', 350, 'somana-kunita.jpg', '0000-00-00', 0, 0),
(195, 22, 'Pooja Kunitha', '<p>Puja Kunitha is a folk dance form practiced in the regions of Bangalore and Mandya districts and is a ritualistic dance for worshipping goddess Shakti in all her forms of incarnation.<br />\r\nThis dance is a visual treat during all religious festivals, religious processions and fairs related to the celebrations for Goddess Shakti. This form focuses more on the visual representation or exhibition of the dance, than the oral narration during the performance.<br />\r\nThis dance is unique as highly decorated bamboo poles are used in the performance, the dances sway the poles along with the music. The dances also carry an idol of Shakti over their heads in big wooden structures.</p>\r\n', 'pooja-kunitha', 300, 'pooja-kunitha.jpg', '0000-00-00', 0, 0),
(196, 22, 'Pata kunitha', '<p>Pata Kunitha in Karnataka is a popular folk-dance form extremely popular among the inhabitants of the Mysore region. Like other Kunithas or dance-drames with a ritualistic overtone, the original significance of Pata Kunitha is primarily religious. However, there is not much of a narration that is used and the emphasis is on the rhythm and the skill of the dancers. Pata Kunitha of Karnataka is an extremely colorful dance form and provides great visual delight.<br />\r\n<br />\r\nKarnataka&#39;s Pata Kunitha is preformed mainly by men. Each performance usually employs the participation of 10 to 15 men. Pata Kunitha typically employs the use of the pata, which are primarily long bamboo poles decorated with color ribbons. Each of the bamboo poles are about 10 to 15 feet high. A silver or brass umbrella usually crown the poles. The artist manipulate the poles with great dexterity and to the accompaniment of a largely rhythmic music. Pata Kunitha, Karnataka, is widely performed in the rural religious gatherings in the villages of the state. Though some narration is used, it is not of much significance. The skill of the dancers in maneuvering the long bamboo poles attract the greatest attention.</p>\r\n', 'pata-kunitha', 400, 'pata-kunitha_1627037725.jpg', '2021-07-23', 3, 0),
(197, 22, 'Gombe kunitha', '<p>The doll is entirely made of bamboo sticks. Using appropriate sketches and colours, the face of the doll is created by applying a layer of papier-m&Atilde;&cent;ch&Atilde;&copy; on top of the bamboo frame created for it. Making the face can take up to a week. The doll&#39;s costume makes use of bright colours and is at times made similar to the costumes that Yakshagana dancers wear.<br />\r\n<br />\r\nThe dolls are around 12 feet in height and can weigh nearly 40 kg. As the bottom is left open, a person can fit himself into the frame from the underneath and perform the dance. He carries this huge structure on his shoulder.<br />\r\n&nbsp;</p>\r\n', 'gombe-kunitha', 600, 'gombe-kunitha.jpg', '2021-07-23', 1, 0),
(198, 22, 'Kamsale ', '<p>Kamsale Dance is a popular folk dance form in Mysuru Karnataka region.Kamsale, a cymbal-like instrument, is played by dancers as an offering to Lord Mahadeshwara and it has a&nbsp;pair of small circular metal (copper) plates with a slight projection in the centre. Kamsale set will have two such plates which when hit gently to one another produces melodious sound.Kamsale dance is usually done in large groups of 10-12 dancers and is often performed near temples as a part of prayer to the lord .</p>\r\n\r\n<p>The costume contains red-coloured pant and yellow coloured shirt with peta as shown in the image.</p>\r\n', 'kamsale', 250, 'kamsale.jpg', '2021-07-23', 1, 0),
(199, 20, 'KID Dress with Decorative props', '<p>This costume includes</p>\r\n\r\n<p>&gt;&gt; Shirt (Cement colour)</p>\r\n\r\n<p>&gt;&gt; Pant (with Checks type dark cement colour)</p>\r\n\r\n<p>&gt;&gt; Cap - Blue Colour</p>\r\n\r\n<p>&gt;&gt; Tie- Butterfly</p>\r\n\r\n<p>&gt;&gt;Decorative materials - Stars, Dolls (4 number), artificial flowers</p>\r\n\r\n<p>&gt;&gt; Cycle- small size and</p>\r\n\r\n<p>&gt;&gt; Chair</p>\r\n\r\n<p>All contents will be similar to the image not exactly same!</p>\r\n\r\n<p>Limited stock. Hurry soon!!</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'kid-dress-decorative-props', 1200, 'kid-dress-decorative-props.jpg', '2021-07-23', 2, 0),
(200, 20, 'Baby Photo Props', '<p>This Suite contains decorative flowers bed, cushion with cotton made stuff, Blue colored ribbon.</p>\r\n\r\n<p>Flowers are artifical made of plastic materials. Contents will be similar to the image.</p>\r\n', 'baby-photo-props', 400, 'baby-photo-props.jpg', '2021-08-04', 1, 0),
(201, 20, 'Baby kit wrap with Rainbow effect', '<p>Contains Photo props as shown in the image.</p>\r\n\r\n<p>Blue coloured soft peace of cotton cloth&nbsp;to rap the kid and white colored bed with cotton.</p>\r\n\r\n<p>Thin fabric materialed stuff which gives rainbow effect.</p>\r\n\r\n<p>You can arrange the stuff as shown in the figure or make your own theams with better creativitity !</p>\r\n', 'baby-kit-wrap-rainbow-effect', 900, 'baby-kit-wrap-rainbow-effect.jpg', '2021-08-03', 3, 0),
(202, 20, 'Baby photo props- Swing by two rings', '<p>It contains a netted swing made of two rings with a&nbsp;small bed, decorative ribbons and blue coloured bottom wear.</p>\r\n', 'baby-photo-props-swing-two-rings', 900, 'baby-photo-props-swing-two-rings.jpg', '2021-08-03', 5, 0),
(203, 20, 'Baby in Basket', '<p>This costume conatins a attractive white coloured netted basket in which baby can sit, sleep and give poses.</p>\r\n\r\n<p>It also contains white coloured flowers, bed , ribbon and a small doll too !</p>\r\n\r\n<p>Rent now and make baby to smile&nbsp;</p>\r\n', 'baby-basket', 900, 'baby-basket.jpg', '2021-08-03', 1, 0),
(204, 20, ' Skirt And Headband Peacock Design - Blue Green', '<p>Soft fabric and adorable designs are combined to bring together this Pampering present for babies. Carefully tailored with an impeccable finish, these matching skirt and headband will keep your little one comfortable and stylish from head to toe for all occasions.<br />\r\n<br />\r\n<strong>Specifications:</strong><br />\r\nType - Skirt And Headband<br />\r\nFabric - Eco-Friendly &amp; Soft Feathers<br />\r\nFit - Regular Fit<br />\r\nWings (Length) - 32 cm<br />\r\nHeadband circumference - 32 cm</p>\r\n\r\n<p><strong>Items included in pack</strong><br />\r\nOne Skirt (&nbsp;soft elastic waist skirt )<br />\r\nOne Headband</p>\r\n', 'skirt-and-headband-peacock-design-blue-green', 800, 'skirt-and-headband-peacock-design-blue-green_1627041695.jpg', '2021-08-04', 2, 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`, `active`) VALUES
(205, 20, 'Minions Theme Costume - Yellow Blue', '<ul>\r\n  <li>Made of&nbsp;eco-friendly &amp; high quality soft knitted crochet</li>\r\n  <li>Perfect for memorable photography shoots, baby shower gift and presents.</li>\r\n <li>Comfortable and Breathable</li>\r\n</ul>\r\n\r\n<p><strong>Specifications:</strong></p>\r\n\r\n<p>Age - 0 to 18 Months</p>\r\n\r\n<p>Fabric - Eco-friendly &amp; High quality soft knitted crochet</p>\r\n\r\n<p>Length - 155 cm</p>\r\n\r\n<p>Cap Circumference - 32 cm</p>\r\n\r\n<p><strong>Items included in pack:</strong></p>\r\n\r\n<p>1 Cap, 1 Pant</p>\r\n\r\n<p>Made with love this adorable baby costume is specially designed for the babies to wear. Soft fabric and cute designs are combined to bring together this pampering present for babies. Carefully tailored with an impeccable finish, this Batman Designer Costume will be a perfect photography prop for your little one. Let&#39;s make your baby a baby model!</p>\r\n', 'minions-theme-costume-yellow-blue', 700, 'minions-theme-costume-yellow-blue.JPG', '0000-00-00', 0, 0),
(206, 20, 'Minnie Mouse Props Set of 4 - Pink Black', '<p>Made with love this adorable Cap, Skirt, Nappy Cover &amp; pair of booties set is specially designed for the babies. Soft fabric and super cute Minnie Mouse themed design, this stylish costume makes a pampering present for babies. Carefully tailored with an impeccable finish, this Eco-friendly &amp; High quality soft knitted crochet material set will be a perfect photography prop for your little one. Let&#39;s make your baby a baby model!</p>\r\n\r\n<p><strong>Specifications:</strong></p>\r\n\r\n<p>Age - 3 to 18 Months</p>\r\n\r\n<p>Fabric - Eco-friendly &amp; High quality soft knitted crochet</p>\r\n\r\n<p>Cap circumference - 32 cm</p>\r\n\r\n<p>Booties length - 10 cm</p>\r\n\r\n<p>Nappy cover waist - 32 cm</p>\r\n\r\n<p>Skirt waist - 32 cm</p>\r\n\r\n<p><strong>Items included in pack:</strong></p>\r\n\r\n<p>1 Cap, 1 Skirt, 1 Nappy Cover &amp; 1 pair of booties</p>\r\n', 'minnie-mouse-props-set-of-4-pink-black', 600, 'minnie-mouse-props-set-of-4-pink-black.JPG', '2021-08-04', 1, 0),
(207, 25, 'Violin', '<p>The violin, sometimes known as a fiddle, is a wooden chordophone in the violin family. Most violins have a hollow wooden body. It is the smallest and thus highest-pitched instrument in the family in regular use.</p>\r\n\r\n<p>The violin typically has four strings, usually tuned in perfect fifths,&nbsp;with notes G3, D4, A4, E5, and is most commonly played by drawing a bow across its strings. It can also be played by plucking the strings with the fingers (pizzicato)&nbsp;and, in specialized cases, by striking the strings with the wooden side of the bow .</p>\r\n', 'violin', 700, 'violin.jpeg', '2021-08-03', 1, 0),
(208, 25, 'Veena', '<p>The veena, also spelled vina, comprises a family of chordophone instruments from the Indian subcontinent.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The&nbsp;<strong>veena</strong>&nbsp;has a height of about four feet a resonator or Kudam and also a long neck which looks similar to that of a sitar. The&nbsp;<strong>veena</strong>&nbsp;was made up of seven strings which are all made of steel.&nbsp;<strong>Veena</strong>&nbsp;verses Sitar. Sitar is basically a plucked string&nbsp;<strong>instrument</strong>&nbsp;which was created in the 13 th century.</p>\r\n', 'veena', 1000, 'veena.jpeg', '2021-08-03', 4, 0),
(209, 25, 'Harmonium', '<p>Harmonium, also called&nbsp;<strong>Reed Organ</strong>, free-reed keyboard instrument that produces sound when wind sent by foot-operated bellows through a pressure-equalizing air reservoir causes metal reeds screwed over slots in metal frames to vibrate through the frames with close tolerance.</p>\r\n', 'harmonium', 1200, 'harmonium.jpeg', '2021-07-30', 1, 0),
(210, 25, 'Tabala', '<p>The tabla consists of two small drums of slightly different sizes and shapes.Each drum is made of hollowed out wood, clay or metal. The smaller drum (<em>dayan</em>) is used for creating treble and tonal sounds, while the primary function of the larger drum (<em>baya</em>) is for producing bass. They are laced with hoops, thongs and wooden dowels on its sides. The dowels and hoops are used to tighten the tension of the membranes for tuning the drums</p>\r\n\r\n<ul>\r\n <li>Good quality handmade metal drum &amp; sheesham dayan, high quality cushions and covers, special handmade puddis (drumheads)</li>\r\n <li>Fully tuned, good quality tabla set</li>\r\n</ul>\r\n', 'tabala', 800, 'tabala.jpeg', '2021-07-24', 1, 0),
(211, 25, 'Flute', '<ul>\r\n  <li>The&nbsp;<strong>flute</strong>&nbsp;is a family of musical instruments&nbsp;in thewoodwind group. Unlike woodwind instruments with reeds,&nbsp;a flute is an aeroplane or reedless wind instrument that produces its sound from the flow of air across an opening.&nbsp;</li>\r\n  <li>Length 16 to 17 inches</li>\r\n</ul>\r\n', 'flute', 200, 'flute.jpeg', '0000-00-00', 0, 0),
(212, 25, 'Nadhaswara', '<ul>\r\n <li>Premium quality brown colored shehnai</li>\r\n  <li>Made of wood and brass fitting</li>\r\n <li>Finished with wooden polish</li>\r\n</ul>\r\n', 'nadhaswara', 500, 'nadhaswara.jpeg', '2021-07-24', 1, 0),
(213, 25, 'Drum', '<ul>\r\n <li>This snare drum is made of nickel plated brass. Dimension: Diameter &ndash; 18 inch. Color &ndash; Silver</li>\r\n  <li>This drum is designed to meet the needs of professionals/ pro and is also very helpful for beginners to learn the art of music</li>\r\n <li>It features a light weight design thus making it easy to carry for both adults and children</li>\r\n  <li>Ideal musical instrument for orchestra, concerts, parades, drumlines, drum corps and school band marching due to its brilliant sound quality</li>\r\n <li>It comes with sticks attached. This is the perfect gifting item for a music enthusiast</li>\r\n</ul>\r\n', 'drum', 600, 'drum.jpeg', '0000-00-00', 0, 0),
(214, 25, 'Tamate', '<ul>\r\n <li>This snare drum is made of nickel plated brass</li>\r\n <li>It features a light weight design thus making it easy to carry for both adults and children</li>\r\n  <li>Ideal musical instrument for orchestra, concerts, parades, drum lines, drum corps and school band marching due to its brilliant sound</li>\r\n  <li>List of Included Items: 1 Snare Drum</li>\r\n</ul>\r\n', 'tamate', 400, 'tamate.jpeg', '0000-00-00', 0, 0),
(215, 25, 'Tamburi', '<ul>\r\n  <li>Handcrafted Rose Wooden Veena</li>\r\n</ul>\r\n', 'tamburi', 1500, 'tamburi.jpeg', '0000-00-00', 0, 0),
(216, 25, 'Gada(mace)', '<p>The gada is the main weapon of the Hindu God Hanuman. Known for his strength, Hanuman is traditionally worshipped by wrestlers in the Indian subcontinent and Southeast Asia.</p>\r\n', 'gada-mace', 300, 'gada.jpeg', '2021-08-04', 1, 0),
(217, 25, 'Guitar', '<ul>\r\n <li>* Stylish Classic Guitar Produces Vibrant Sounds, Guitar Strings Are Tunable, String Tuning Mechanism Keeps Tuned Strings Tight.</li>\r\n <li>&nbsp;This Guitar Has Good Sound Quality It&#39;s Very Clear. And The Strings Are Good Quality. Good Wooden Finishing, It Is Made Up Of Good Quality Plastic &amp; Is Good For Playing And Learning.</li>\r\n <li>&nbsp;This Guitar Is Lightweight And Portable And Comes With Strap So That Your Future Rock Star Can Handle It Easily While Performing.</li>\r\n</ul>\r\n', 'guitar', 1300, 'guitar.jpeg', '2021-07-24', 1, 0),
(218, 18, 'Krishna Dress-Yellow ', '<ul>\r\n  <li>From the house of Arangers premium Indian ethnic, festive and party wear for kids boys. Specially handcrafted clothing for the perfect look and comfort for the festive season.</li>\r\n  <li>Dress your baby in form of krishna with this elegant dress with required accessories. Special for-Performance,Festive season,function, Janmashtmi Special.</li>\r\n <li>Fabric Material : Cotton Blend. Sales Package : 1 Fancy Crown with Peacock Feather, 1 Flute, 1 Necklace, 1 Wrist Band, 1 Bandhni Patka, 1 Kurta and 1 Dhoti Pant. Age Group : 6 Months to 4 Years.</li>\r\n <li>This is made up of soft and comfortable Cotton blend material. Krishna Style dhoti kurta Dress with accessories for Janmashtmi Special. Comfortable with easy elastic dhoti.Krishna/Kanha style dress wearable on all the occasion: Festival season, Rakhi/Rakshabandhan, First Birthday, Casual, Festive, Ceremony, Wedding functions, School Performance, Garba Parties, Navratri, Dance Performance or any auspicious Puja occasion.</li>\r\n</ul>\r\n', 'krishna-dress-yellow', 500, 'krishna-dress-yellow.jpg', '0000-00-00', 0, 0),
(219, 18, 'Girls'' Maxi Dress', '<ul>\r\n <li>Material: Polyester and netted</li>\r\n <li>Package Includes: fancy&nbsp;Dress</li>\r\n <li>The actual product may differ slightly in color from the one illustrated in the images.</li>\r\n  <li>All Dimensions are in cms :- Casual Dresses: Length: 85 cm , Chest: 60 cm</li>\r\n</ul>\r\n', 'girls-maxi-dress', 750, 'girls-maxi-dress.jpg', '0000-00-00', 0, 0),
(220, 27, 'Portable Foldable Pop-up Gazebo Tent Canopy Display-6x6 ft Red', '<ul>\r\n <li>Package Includes: 1 unit of Portable and Foldable Gazebo Demo Tent Conical Canopy</li>\r\n  <li>Material: Heavy and Durable Iron Frame and Gazebo Tent is Made Up of Tetron Fabric which is Waterproof</li>\r\n <li>Size: 6x6 ft , 2x2 Meter Color: Red</li>\r\n  <li>Easy Installation: Portable Gazebos are Easy to Set Up and Carry for Promotional Activities. The Gazebo Tent Can be Packed into a Carry Bag and is Completely Portable.When required, Portable Gazebos can be Reinstalled Again within Minutes for Next Use</li>\r\n  <li>Usage: Gazebos are a Great Way to Setup a Sheltered Area for Campaigns, Activities, Activations, Stalls, Parties etc. in a Matter of Minutes.</li>\r\n</ul>\r\n', 'portable-foldable-pop-up-gazebo-tent-canopy-display-6x6-ft-red', 600, 'ab-sab-portable-foldable-pop-up-gazebo-tent-canopy-display-6x6-ft-red_1627139163.jpg', '0000-00-00', 0, 0),
(221, 27, 'BRUSHFINCH Tent for Home Garden Outdoor  Tent', '<ul>\r\n  <li>[10x10ft Easy Pop up Red Canopy Tent with Carrying Bag]: Offers 100 square feet of shade coverage, allows about 10 people to sit under; Ideal for backyard gathering, temporary shading, wedding, parties, craft shows, sporting events, schools/campus activities, club and community activities, entrance inspection and other outdoor occasions needed</li>\r\n  <li>[Durable UV 30+ Sun-protecting &amp; PVC Water Resistance Fabric]: Stronger PVC coated oxford fabric top, UV resistant to block 95% harmful UV ray, 3000PA water resistance, double line sewing, dual-knitted 420D yarn tear resistant canopy cover tent</li>\r\n <li>[Cover &amp; Banner Easily Attach Hook &amp; Loop Design]: Hook &amp; loop designed on the front valance for attach a banner/your logo instantly; Built-in hook &amp; loop fasteners in canopy top for quicker and better connect the cover with frame</li>\r\n <li>[Usage] Gazebos are a Great Way to Setup a Sheltered Area for Campaigns, Activities, Activations, Stalls, Parties etc. in a Matter of Minutes.</li>\r\n <li>Size: 10x10 ft , 3x3 Meter&nbsp;</li>\r\n</ul>\r\n', 'brushfinch-tent-home-garden-outdoor-tent', 700, 'brushfinch-tent-home-garden-outdoor-picnic-camping-10-x-10-ft-portable-pvc-waterproof-resistance-party-instant-shelter-advertising-personalised-gazebo-canopy-tent.jpg', '2021-08-03', 2, 0),
(222, 27, 'STAR WORK Princess Tent ', '<ul>\r\n <li>[LIGHTS NOT INCLUDE ] Girl Play House is the cutest fairy house tent where kids can have their own private place for entertaining, reading and relaxing themselves. Every girls like castles, fairies and places to keep their secret.</li>\r\n <li>This is not camping gear but a wonderful toys for your kid&#39;s Childhood, in which they can play with their friends. This Pink Princess Palace Tent can help fulfill every litter girl&#39;s princess dream.</li>\r\n <li>Made from durable and polyester blend fabric, this comfortable Princess Fairy House which is durable and easy to clean, with delicate sewing, provides a sizable space for your babies to play and have a rest.</li>\r\n  <li>The Hexagon-shaped House Tent not only resembles the princess house in fairy, but also make the structure more stable. In addition, many screens around the playhouse can protect your kids</li>\r\n  <li>It&#39;s best choice for outdoor and indoor activities. You can put it in backyards parks, homes, parties, daycare and soon</li>\r\n</ul>\r\n', 'star-work-princess-tent', 400, 'star-work-princess-tent-girls-toys-kids-castle-play-tent-castle-play-house-tent-children-indoor-and-outdoor-games.jpg', '2021-07-30', 1, 0),
(223, 27, 'Party Propz 55'''' x 53'''' Princess Tent ', '<ul>\r\n <li>Cute Pink Castle folding type Tent: Oversized 55 &quot;x53&quot; tent made of solid fabric and soft mesh that provides a private and relaxed space for children, allows 3 children to play at the same time. Inspired by castles in fairy tale, this beautiful and remarkable princess house can help your little barbie doll girl dreams come true. Which baby does not like a little secret place?This tent house is foldable and comes with a bag to carry it anywhere.Toddlers/infants/babies/ Kids all just love them.</li>\r\n  <li>&hearts;SPECIAL GIFT: This is the cutest fairy house tent, providing a private space for your kids to entertain themselves, read and relax. Screens around the playhouse keep away mosquitoes from your kids. What an amazing present! Add to cart and take it home now!Girls of any year old or fond of any theme like barbie, uicorn, frozen will love this dollhouse tent. The light in this tent will encourage them to play inside it. It is like their camp or hut.</li>\r\n  <li>&hearts;DIMENSIONS: 55 x 53 inches. Made from high quality polyester taffeta which is also quite comfortable, durable,waterproof and easy to clean.This cute tenthouse can be filled with your child favourite toys like barbie dolls, multi color ball, camping toy, small sliders, unicorn plush toy, ping pong, books, colours. etc.Your kid will definately love this homecute houses set. Pink colour with big and small star lights make it very pretty. Your child can just enter the tent and want to sleep.</li>\r\n <li>&hearts;WHAT DO YOU GET? 1 x Princess Tent, 1 x Instructions, 48 x Poles, 37 x Connectors, 1 x Star Lights. Please note that there is large star light and little star light both. You can carry this to picnic, hiking, use as food serving for kidsThis tent house for your little girl . is a magical world where they just want to play all day, listen to nightime stories and have great fun time!! You can use this portable tent product in photography also</li>\r\n</ul>\r\n', 'party-propz-55-x-53-princess-tent', 500, 'party-propz-55-x-53-princess-tent-girls-8-2-feet-big-star-lights-large-playhouse-kids-castle-play-tent-children-indoor-and-outdoor-games-birthday-gifts-girl-toy-play-house-tenthouse.jpg', '2021-07-24', 2, 0),
(224, 27, ' Big Double Layer Tunnel Tent 5-8 Person Outdoor Tent House', '<ul>\r\n  <li>Specifications + Weight: 480*310*210+ 7000&pound;&uml;g&pound;&copy;.</li>\r\n  <li>Space structure: One bedroom 5-8Peoples.</li>\r\n <li>Material: glass fiber rod.</li>\r\n <li>Style function:Windproof, waterproof, anti-UV dust, outdoor, picnic, hiking, fishing, camping, field survival.</li>\r\n <li>Applicable season: spring summer autumn.</li>\r\n</ul>\r\n\r\n<ul>\r\n  <li>Imported from UK.</li>\r\n</ul>\r\n\r\n<p>Pole material: glass fiber rod<br />\r\nSpecifications: 480 * 310 * 210<br />\r\nItem: 5-8 people big tent &hellip;</p>\r\n', 'big-double-layer-tunnel-tent-5-8-person-outdoor-tent-house', 400, 'big-doule-layer-tunnel-tent-5-8-person-outdoor-tent-house_1627139206.jpg', '2021-08-04', 1, 0),
(225, 27, 'Goank 6 Person Waterproof Outdoor Tent House for Camping (Multicolour)', '<table>\r\n  <tbody>\r\n   <tr>\r\n      <td>Recommended Uses For Product</td>\r\n     <td>Travel, Picnic, Family, Outdoor, Camping, Hiking</td>\r\n   </tr>\r\n   <tr>\r\n      <td>Brand</td>\r\n      <td>Goank</td>\r\n    </tr>\r\n   <tr>\r\n      <td>Closure Type</td>\r\n     <td>Zipper</td>\r\n   </tr>\r\n   <tr>\r\n      <td>Package Dimensions</td>\r\n     <td>10 x 9 x 8 cm; 489 Grams</td>\r\n   </tr>\r\n   <tr>\r\n      <td>Occupancy</td>\r\n      <td>6</td>\r\n    </tr>\r\n </tbody>\r\n</table>\r\n\r\n<hr />\r\n<h1>About this item</h1>\r\n\r\n<ul>\r\n  <li>Lightweight enough for family hiking and traveling</li>\r\n <li>Great for camping, picnics and any outdoor activity</li>\r\n  <li>Can use for adventurous and camping and hiking</li>\r\n</ul>\r\n', 'goank-6-person-waterproof-outdoor-tent-house-camping-multicolour', 450, 'goank-6-person-waterproof-outdoor-tent-house-camping-multicolour.jpg', '2021-08-04', 1, 0),
(226, 27, 'Homecute Hut Type Kids Toys Jumbo Size Play Tent House for Boys and Girls (Pink)', '<table>\r\n  <tbody>\r\n   <tr>\r\n      <td>Material</td>\r\n     <td>Polyester</td>\r\n    </tr>\r\n   <tr>\r\n      <td>Style</td>\r\n      <td>Kids Toys Play Tent House</td>\r\n    </tr>\r\n   <tr>\r\n      <td>Product Dimensions</td>\r\n     <td>110 x 90 x 135 cm; 2.9 Kilograms</td>\r\n   </tr>\r\n   <tr>\r\n      <td>Assembly Required</td>\r\n      <td>Yes</td>\r\n    </tr>\r\n </tbody>\r\n</table>\r\n\r\n<hr />\r\n<h1>About this item</h1>\r\n\r\n<ul>\r\n  <li>Bigger size, Bigger Door, Bigger Windows, More Airy than other China products available in India. Because it is Made in India.</li>\r\n <li>Dimension: L X B X H: 110 X 90 X 135 Cm (44 x 36 x 54 inch)</li>\r\n  <li>Feature: Folded, Good quality Treated, Portable, Durable and good ventilation. Play and stay.</li>\r\n  <li>It is made with Non weaver fabric and semi Steel Pipe. Buy Homecute tent houses for your children from Soumya Enterprise.</li>\r\n  <li>Material: Non-toxic material. Ideal For: Boys and Girls</li>\r\n</ul>\r\n', 'homecute-hut-type-kids-toys-jumbo-size-play-tent-house-boys-and-girls-pink', 300, 'homecute-hut-type-kids-toys-jumbo-size-play-tent-house-boys-and-girls-pink.jpg', '2021-07-24', 1, 0),
(227, 27, 'Toyshine Cool Camp Princess Castle Tent House for Kids, Pink (Balls Not Included)', '<ul>\r\n  <li>Material of Play Tent: Made of soft fabric and breathable mesh design allows for a safe and environmental friendly playhouse for the kids, t ent door can be positioned wherever you need, simply tie the curtain back to create the door. Kids can crawl in and out easily.Fairly easy to install with support poles,then knot the ends of the elastic inside the poles.</li>\r\n  <li>Kids Tent Dimension in inch: Tent 56&quot; (Diameter) x 54&quot; (H), especially hexagon design, provide a perfectly sized space for children to sit and play, even an adult can fit inside. The children play tent is perfect a magical adventure for indoor and outdoor activities.</li>\r\n  <li>Provide Kids More Fun: The kids play tent provides perfect space for your child to play dress-up, have fun with friends, or read. And also inspire children&#39;s imaginations while giving them a private space of their own.</li>\r\n <li>Easy to set up or breakdown: Princess Castle Tent is light weight and is easy to construct and deconstruct without tools required in just minutes. When playtime is over, the castle can be disassembled quickly for easy storage and travel.</li>\r\n  <li>Will Be A Very Good Gift To All Children: We are so confident with the quality of our product and we are so sure you will love this princess castle play tent . Please note that the dolls and pillows shown are not included in the package.</li>\r\n</ul>\r\n', 'toyshine-cool-camp-princess-castle-tent-house-kids-pink-balls-not-included', 350, 'toyshine-cool-camp-princess-castle-tent-house-kids-pink-balls-not-included.jpg', '2021-07-24', 1, 0),
(228, 27, 'Toyshine Princess Playhouse', '<ul>\r\n  <li>Play tent for children aged 2 and up and will delight girls well into their teens</li>\r\n  <li>Portableandlightweight-easy to set up with carry storage bag. Come with 4 poles, easy to seit it up and take down. Suitable for indoor and outdoor use.approximately dimension tents for girls: 40&quot;d x 55&quot;h. Foldable size( carry bag size): 37 x 5cm/14.5 x 1.9inch</li>\r\n <li>Fairy tale castle - children fall in love with the bling-bling soft fabric and breathable mesh curtain design play tent creating perfect fair tale experience for princess</li>\r\n <li>Naturally air-conditioned-professional,delicate sewing, breathable, anti-mosquito</li>\r\n  <li>Hand wash only-easy to clean with damp cloth and mild soap</li>\r\n</ul>\r\n', 'toyshine-princess-playhouse', 450, 'toyshine-princess-playhouse.jpg', '0000-00-00', 0, 0),
(229, 27, 'Toyshine Ice Cream Cake Shop Tent House', '<ul>\r\n  <li>PROVIDES COMFORTABLE SHELTER: Your child will have hours of fun with this colourful home sweet home play tent. Set it up in the backyard, and kids will get a secret hiding place. It is great for encouraging play, adventure, and fun. It provides comfortable shelter for outdoor trips and activities.</li>\r\n <li>SAFE FOR KIDS: All materials are free from harmful chemicals, with100% Polyester fabric &amp; Plastic pole, the portable kids play tent also easy to clean and dry quickly. Non-Toxic Paint, No Fade.</li>\r\n  <li>DEVELOPS IMAGINATION AND CREATIVITY: This home sweet home playhouse will bring out the imagination of your child whether playing make-believe alone or role-playing with others. It will help develop social skills and really bring out the creative side of your child.</li>\r\n  <li>EASY TO STORE: Extremely Lightweight, Water &amp; Fire-Proof. The unique folding capabilities of this tent allow it to be taken down and stored anywhere in your home securely. It can also be packed easily and taken with you on special trips.</li>\r\n  <li>IDEAL FOR INDOORS AND OUTDDORS: This kid home sweet home playhouse is incomparably versatile. apart from placing it in your house, you can also effortlessly set it up in your backyard, your garden, or any other outdoor space.</li>\r\n</ul>\r\n', 'toyshine-ice-cream-cake-shop-tent-house', 500, 'toyshine-ice-cream-cake-shop-tent-house.jpg', '2021-07-26', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL,
  `amount` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32273 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`, `amount`) VALUES
(1428, 26, 'pay_HhV2fTKBRhDUct', '2021-08-05', 6500),
(8941, 27, 'pay_HgyPxdVvQ7KnUO', '2021-06-23', 2400),
(9990, 23, 'pay_Hh5ZgweHafUE6A', '2021-08-04', 4000),
(15062, 23, 'pay_HgyUsKlRC4tMxn', '2021-05-23', 600),
(19018, 25, 'pay_HgyJ5WJC2X7ty8', '2021-07-15', 2800),
(29181, 31, 'pay_Hgxx5Cxpj8sIy0', '2021-08-04', 4200),
(32272, 26, 'pay_Hhe7TQzH4SiP3d', '2021-08-05', 6500);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `slno` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contactno` bigint(10) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`slno`, `date`, `name`, `email`, `contactno`, `description`) VALUES
(24, '2021-07-12', 'Divya urudiga', 'divya.u@gmail.com', 7899414123, 'The dark wine gown looks elegant and stylish .I prefer it is the best website to rent our dream dresses at a reasonable price .Thank You !!'),
(25, '2021-06-18', 'Radhika M', 'Radhika@gamil.com', 9845342310, 'The kids dresses are more beautifull for photoshoots.'),
(26, '2021-07-29', 'Nithin', 'nithin.mind@gmail.com', 7899414123, 'The music Instruments which  I took were super good.'),
(28, '2021-08-04', 'Netra Gowda', 'netragowda@gmail.com', 9986674030, 'Beautiful set of ear rings .Thank You Very much..');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `created_on` date NOT NULL,
  `type` int(1) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `firstname`, `lastname`, `created_on`, `type`, `address`, `contact_info`, `photo`, `active`) VALUES
(1, 'admin123@gmail.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 'Admin', '', '2021-06-01', 1, 'Bangalore', '9880966369', 'kavya.JPG', 0),
(20, 'nithin.mind@gmail.com', '$2y$10$bL0KlIrYaPulpaH9gZF1.OdukDN/oQVc.BHWF9Kzqe5VcMdsi6IQG', 'Nithin', 'Gowda', '2021-06-29', 0, 'No 23/02, Srinidhi layout arehalli Subramanyapura post Bangalore 560061.', '9620280234', 'nitin.jpg', 0),
(23, 'divya.u@gmail.com', '$2y$10$6U16cVRvh7X.W63SFoDWY.0Q.ILE6AiHjhfR7M/QEWZXVfyl1lptu', 'Divya', 'Uruduga', '2021-07-03', 0, 'Kengeri', '7899414109', 'divya.jpeg', 0),
(24, 'manju.pavagada@gmail.com', '$2y$10$Oa8IR0eveQrO9ygDm8ttuuWMGTneomizF5OO1BcUxurGhZCI7LZCq', 'Manju', 'pavagada', '2021-07-03', 0, ' BigBoss, Innovative Film City, Colours kannada, Bangalore', '9620280234', 'manju.jpg', 0),
(25, 'aravind.kp@gmail.com', '$2y$10$OpdsAUtPzeb5o6LvfXYTkOXN3q0Iylclf4KUdacjDGBvD/SySwWEa', 'Aravind', 'K P', '2021-07-03', 0, 'Basavanagudi', '9845342310', 'arvind.webp', 0),
(26, 'kavya2001gowda@gmail.com', '$2y$10$OgRaWA7x1a6LaYMu7OnSuuK0dwOVCbaVqi4ysHymmg/Cm9.Nk/4Xa', 'Kavya', 'Gowda', '2021-07-06', 0, 'No 23/02, Srinidhi layout arehalli Subramanyapura post Bangalore 560061.', '7795357223', 'kavya image.jpg', 0),
(27, 'monishabhoomi@gmail.com', '$2y$10$xBtIGSkpg5x0pCgv.k.bIOJkuHjf4cPMPyETs6McxvT39TGzRqQYy', 'Monisha', 'A', '2021-07-06', 0, 'vijaynagar', '7676662619', 'moni.jpg', 0),
(30, 'nethragowda@gmail.com', '$2y$10$JczYoPoj/tXU6FhXHtNUvuDaM.K.vKkYFrIQo4fZb/Ciy3LyRFYsa', 'Nethra', 'Gowda', '2021-07-30', 0, 'Devalapura', '9986674030', 'netra.jpg', 0),
(31, 'Radhika@gmail.com', '$2y$10$XlEV47UvVsGmycg.53FMT.1g1pRbrweZlnIhykpfCwHXEwq5XYiHG', 'Radhika', 'M', '2021-08-04', 0, 'Uttarahalli', '8971732322', 'radhika.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32710;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32273;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
