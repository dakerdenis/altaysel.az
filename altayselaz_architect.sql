-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2024 at 08:41 PM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `altayselaz_architect`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `number_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkdin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `behance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `number_1`, `number_2`, `email`, `linkdin`, `facebook`, `instagram`, `telegram`, `behance`, `pinterest`, `created_at`, `updated_at`) VALUES
(1, '+994502100359', '+994558882277', 'info@altaysel.az', NULL, 'https://www.facebook.com/ahrdesignstudio?mibextid=LQQJ4d', 'https://www.instagram.com/ahr_alt.ay.sel?igsh=MThibjJ2anN1NHcwYw==', NULL, 'https://www.behance.net/arch-dehuseyno', NULL, '2024-05-21 02:25:02', '2024-05-29 09:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `future_projects`
--

CREATE TABLE `future_projects` (
  `id` bigint UNSIGNED NOT NULL,
  `year` year NOT NULL,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_az` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_az` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `future_projects`
--

INSERT INTO `future_projects` (`id`, `year`, `location`, `name_ru`, `name_az`, `desc_ru`, `desc_az`, `main_image`, `images`, `created_at`, `updated_at`) VALUES
(314, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Познакомимся с архитектором Гусейновым Алтаем.', 'Memar Hüseynov Altayla tanış olaq', 'Алтай Гусейнов, унаследовавший свое искусство от известного архитектора Рамиза Гусейнова, родился в Баку в 1987 году.\r\n\r\nОкончив среднюю школу в 2005 году, он поступил на бакалавриат на факультет «Архитектура» Азербайджанского Университета Архитектуры и Строительства.\r\nВ 2009 году получил степень бакалавра. В 2012 году окончил тот же университет со степенью магистра. \r\n🔸В 2013 году поступил в аспирантуру Азербайджанской Национальной Академии Эльмара и в настоящее время является докторантом института «Архитектура и Искусство» НАНА.\r\n\r\n🔸 Архитектор Института «Бакинский государственный проект» в 2010-2013 гг.;\r\n🔸В 2014-2018 годах был ведущим консультантом сельскохозяйственного отдела Pirallahi R&H, затем старшим консультантом (архитектором).\r\n🔸В 2018-2019 годах главный инженер проектно-сметного бюро Сураханского РИЗ;\r\n🔸В 2020-2021 годах помощник начальника, заместитель начальника экономического отдела Нафталанского ШИХ;\r\n🔸С 2021 года продолжает работать архитектором в РТШ «Алт-Ай-Сель».\r\n🔸В 2016 году Пираллахи получил ПОЧЕТНЫЙ указ за выдающуюся государственную службу.\r\n\r\nПроекты:\r\nПроект офиса города Гянджи\r\n🔸Здание Исполнительной власти Тер-Тера\r\n🔸Композиция Пираллахи \"Синмвол\"\r\n🔸Пираллахи «Замковый комплекс»\r\n🔸Улица Самада Сургуна не реставрировалась и не реконструировалась\r\n🔸Пираллах реставрация и реконструкция существующих жилых домов\r\n🔸Реставрация и реконструкция улицы Нафталана Самада Вургуна', 'Sənətini irsən məhşur memar Ramiz Hüseynovdan alan Altay Hüseynov 1987-ci ildə Bakı şəhərində anadan olub.\r\n\r\n2005-ci ildə orta məktəbi bitirərək Azərbaycan Memarlıq və İnşaat Universitetinin “Memarlıq” fakültəsinin bakalavr pilləsinə daxil olmuşdur.\r\n🔸2009-cu ildə bakalavr pilləsini bitirmişdir. 2012-ci ildə həmin universitetdə fərqlənmə diplomu ilə magistratura pilləsinin məzunu olmuşdur \r\n🔸2013-ci ildə Azərbaycan Milli Elmər Akademiyasının aspirantura pilləsinə daxil olmuş və hal-hazırda AMEA-nın “Memarlıq və İncəsənət” institutunun doktorantıdır.\r\n\r\n🔸2010-2013-cü illərdə “BakıDövlət layihə” institunda memar;\r\n🔸 2014-2018- ci illərdə Pirallahı RİH-də təsərüfat şöbəsində aparıcı məsləhətçi, daha sonra böyük məsləhətçi (memar)\r\n🔸 2018-2019-cu illərdə Suraxanı RİH-də layihə smeta bürosunda baş mühəndis;\r\n🔸 2020-2021- ci illərdə Naftalan ŞİH-də başçı köməkçi, təsərüfat şöbəsinin rəis əvəzləyicisi;\r\n🔸 2021-ci dən “Alt-Ay-Sel” co RTŞ-də memar vəzifəsində fəaliyyətini davam etdirir.\r\n🔸 2016-ci il Pirallahı RİH-də dövlət qulluğunda fərqləndiyinə görə FƏXRİ fərman almışdır.\r\n\r\nLayihələr:\r\n🔸Gəncə şəhər ofis layihəsi\r\n🔸Tər-tər İcra hakimiyyəti binası\r\n🔸Pirallahı “sinmvol” kompazisiyası\r\n🔸Pirallahı “Qala kompleksi”\r\n🔸Səməd Surğun küçəsinin bərpa və yenidən qurulmadı\r\n🔸Pirallah mövcud yaşayış evlərinin bərpa və yenidən qurulması\r\n🔸 Naftalan Səməd Vurğun küçəsinin bərpa və yenidən qurulması', '1716795374_400394873_3535075666765564_1369006858762812947_n (1).jpg', '[]', '2024-05-27 03:36:14', '2024-05-27 03:36:14'),
(315, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Познакомьтесь с архитектором-дизайнером Айсель Гусейновой.', 'Memar-dizayner Hüseynova Aysellə tanış olaq', 'Айсель Гусейнова, унаследовавшая свое искусство от известного архитектора Рамиза Гусейнова, родилась в Баку в 1988 году.\r\n\r\nОкончив среднюю школу в 2005 году, он поступил на бакалавриат на факультет «Архитектура» Азербайджанского Университета Архитектуры и Строительства.\r\nВ 2009 году получил степень бакалавра. В 2011 году окончил тот же университет с отличием. \r\n🔸В 2012 году он поступил в аспирантуру Азербайджанской Национальной Академии Элмера и в настоящее время является докторантом Института «Архитектура и Искусство» НАНА.\r\n🔸В 2015 году была выбрана премия «Most Fashinonabale Awards» — дизайнер года.\r\n🔸С 2011 года и по настоящее время продолжает работать в СО РТС «Алт-Ай-Сель», сначала архитектором, затем главным архитектором.\r\n🔸С 2015 года является руководителем дизайн-студии и учебного центра AHR.\r\n\r\n✍🏻Он автор книг «Дизайн в нашей жизни» и «Наше архитектурное наследие Нахчывана».\r\n🔸Он преподаватель архитектурного факультета АДРА.\r\n\r\nОРГАНИЗОВАННЫЕ МЕРОПРИЯТИЯ:\r\n24.04.2016 г. - конкурс детского рисунка «Навруз», 25.04.2016 г. - конкурс детского рисунка «Стоп», 17.07.2016 г. - конкурс детского рисунка «Цветные руки», семинары «Интерьер и психология» в ADRA и семинары «Архитектор Рамиз Гусейнов».\r\n\r\nПроекты:\r\n🔸Частный дом в Австрии\r\n🔸Галерея в Омане\r\n🔸Энергетическое здание IMA\r\n🔸Проект «Товузский подарок» в Гущуском районе Товузского района\r\n🔸Интерьерное решение Гянджинского городского драматического театра\r\n🔸Гянджинский экоцентр\r\n🔸Интерьерные решения около десяти вилл в Royal Park\r\n🔸Детский сад №6, Евлахский район\r\n🔸Школьный проект в Сураханском районе\r\n🔸 Дизайн интерьера целевой средней школы и т. д.\r\nОпубликованные научные работы\r\n🔸Уникальные особенности архитектуры Нахчывана и ее влияние на восточную архитектуру // - Международная академия архитектуры стран Востока. История градостроительства и реставрации Мемарика, - 2014. № 1 (9). - С. 93-99.\r\n🔸Гробницы Нахчывана и их турецкие аналоги// - Международная академия архитектуры стран Востока. История градостроительства и реставрации Мемарика, - 2015. № 1 (7). - С. 74-79.\r\n🔸 Нахчыван – колыбель человечества// - Союз Архитектуры Азербайджана, журнал «Мемар», - 2016. № 12. - с. 130-138\r\n🔸Уникальные особенности нахичеванской архитектуры и влияние на восточную архитектуру// - Тернопольский национальный педагогический университет имени Владимира Гнатюка. «Научные записи». Москва, – 2016. № 2. – С. 119-223.\r\n🔸Основные характеристики архитектуры Нахчывана и ее влияние на восточную архитектуру// - Архитектурный Союз Азербайджана, журнал «Мемар», - 2017. № 14. - с. 132-149\r\n🔸Применение метода стеклоблоковой реставрации к архитектурным памятникам Нахчывана - АМИТ, Архитектура и современные информационные технологии. 2023. № 3(64). С. 86–99 и т. д.', 'Sənətini irsən məhşur memar Ramiz Hüseynovdan alan Aysel Hüseynova 1988-ci ildə Bakı şəhərində anadan olub.\r\n\r\n2005-ci ildə orta məktəbi bitirərək Azərbaycan Memarlıq və İnşaat Universitetinin “Memarlıq” fakültəsinin bakalavr pilləsinə daxil olmuşdur.\r\n🔸2009-cu ildə bakalavr pilləsini bitirmişdir. 2011-ci ildə həmin universitetdə fərqlənmə diplomu ilə magistratura pilləsinin məzunu olmuşdur \r\n🔸2012-ci ildə Azərbaycan Milli Elmər Akademiyasının aspirantura pilləsinə daxil olmuş və hal-hazırda AMEA-nın “Memarlıq və İncəsənət” institutunun doktorantıdır.\r\n🔸2015-ci ildə “Most Fashinonabale awards” - ilin dizayneri seçilmişdir.\r\n🔸2011-ci ildən bu günə kimi “Alt-Ay-Sel” co RTŞ-də əvvəlcə memar, daha sonra baş memar vəzifəsində fəaliyyətini davam etdirir.\r\n🔸2015-ci ildən AHR design studio və tədris mərkəzinin rəhbəridir.\r\n\r\n✍🏻 \"Həyatımızda dizayn\" və \"Naxçıvan memarlıq irsimiz\" kitablarının müəllifidir\r\n🔸 ADRAda memarlıq fakultəsinin müəllimidir.\r\n\r\nTƏŞKİL ETDİYİ TƏDBİRLƏR:\r\n24.04.2016- Uşaqlar üçün nəzərdə tutlmuş “Novruz” rəsm müsabiqəsi, 25.04.2016 - Tələbələr üçün nəzərdə “Dayanacaq” müsabiqəsi, 17.07.2016 - Uşaqlar üçün nəzərdə tutlmuş “Rəngli əllər” rəsm müsabiqəsi, ADRA-da \"İnteryer və psixologiya\" və \"Memar Ramiz Hüseynov\" seminarları\r\n\r\nLayihələr:\r\n🔸Avstriyada şəxsi ev\r\n🔸Oman şəhərində qalereya\r\n🔸İMA energy binası\r\n🔸Tovuz rayonu Quşçu ərazisində “Tovuz sovqatı” layihəsi\r\n🔸Gəncə şəhər Dram Teatrının interyer həlli\r\n🔸Gəncə eko mərkəz\r\n🔸Royal Parkda ona yaxın villaların interyer həlləri\r\n🔸Yevlax rayonu 6 saylı uşaq bağçası\r\n🔸Suraxanı rayonunda məktəb layihəsi\r\n🔸Hədəf liseyinin interyer həlli və s\r\n\r\nÇap olunmuş elmi əsərlər\r\n🔸 Naxçıvan memarlığının özünəməxsus xüsusiyyətləri və şərq memarlığına təsiri // - Şərq Ölkələri Beynəlxalq Memarlıq Akademiyası. Memarıq şəhərsalma tarixi və bərpası, - 2014. № 1 (9). - S. 93-99\r\n🔸 Naxçıvan türbələri və onların türk analoqları// - Şərq Ölkələri Beynəlxalq Memarlıq Akademiyası. Memarıq şəhərsalma tarixi və bərpası, - 2015. № 1 (7). - S. 74-79\r\n🔸 Naxçıvan bəşəriyyətin beşiyi// - Azərbaycan Memarlıq İttifaqı, “Memar” jurnalı, - 2016. № 12. – s. 130-138\r\n🔸 Уникальные особенности Нахичеванской архитектуры и влияние на восточную архитектуру// - Тернопольского Национального педагогического университета имени Владимира Гнатюка. «Науковы записки». Москва, - 2016. № 2. – s 119-223\r\n🔸 Naxçıvan memarlığının əsas xüsusiyyətləri və şərq memarlığına təsiri// - Azərbaycan Memarlıq İttifaqı, “Memar” jurnalı, - 2017. № 14. – s. 132-149\r\n🔸 Применение метода реставрации стеклоблоками на памятниках архитектуры Нахчывана – АМИТ, Architecture and Modern Information Technologies. 2023. №3(64). С. 86–99 və s\r\n🔸 50-yə yaxın müxtəlif mövzularda qazet, jurnal, radio və Tv kanallarda intervyu və məqalələr', '1716795582_400411148_3535082616764869_4815273539304732754_n.jpg', '[]', '2024-05-27 03:39:42', '2024-05-27 03:39:42'),
(316, '2018', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Презентация книги Айсель Гусейновой', 'Hüseynova Ayselin kitab təqdimatı', 'Презентация  «Дизайн в нашей жизни» и «Наше архитектурное наследие Нахчывана»', '\"Həyatımızda dizayn\" və \"Naxçıvan memarlıq irsimiz\" təqdimatı', '1716799238_31676604_2034085133531299_2722226662493126656_n.jpg', '[\"1716799239_31689080_2034098023530010_296293910961979392_n.jpg\",\"1716799239_31727661_2034102873529525_8987080674443788288_n.jpg\",\"1716799240_31671235_2034089073530905_5137296578444263424_n.jpg\",\"1716799241_35123809_2056516264621519_4826390973992927232_n.jpg\"]', '2024-05-27 04:40:41', '2024-05-27 04:40:41'),
(317, '2018', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Семинар Марка Хидекала', 'Mark Xidekal seminarı', 'Удача — это тончайшая нить, проходящая сквозь лабиринт событий навстречу мечте.', 'Uğur hadisələrin labirintindən yuxuya doğru gedən ən incə ipdir.', '1716800338_10504991_1648770312062785_2588956167698078223_o.jpg', '[\"1716800339_1292311_1648960428710440_3414056253006536086_o.jpg\",\"1716800339_12374980_1648770502062766_7724997424290240140_o.jpg\",\"1716800339_10258675_1648768865396263_6621361639423592554_o.jpg\",\"20240527090226_12363174_1648769732062843_4601495642344852187_o.jpg\"]', '2024-05-27 04:59:00', '2024-05-27 05:02:26'),
(318, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Семинар в Нахчыванской Автономной Республике', 'Naxçıvan Muxtar Respublikasında seminar', 'Семинар «Стандарты в архитектуре и интерьере»', '\"Memarlıq və interyerdə standartlar\" seminarı', '1716822045_417397317_3608405016099295_3446978782916592000_n.jpg', '[\"1716822045_417537840_3608405076099289_3192442716356257645_n.jpg\",\"1716822045_420425177_3608405012765962_3181931721764145023_n.jpg\"]', '2024-05-27 11:00:46', '2024-05-27 11:05:11'),
(319, '2023', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Награждение Рамиза Гусейнова', 'Ramiz Hüseynovun mükafatlandırılması', 'Церемония награждения главой Ширванской городской исполнительной власти г-ном Ильгаром Аббасовым', 'Şirvan şəhər İcra Hakimiyyətinin başçısı cənab İlqar Abbasov tərəfindən mükafatlandırılması mərasimi', '1716823100_415802803_3567446110195186_6382733236784026469_n.jpg', '[]', '2024-05-27 11:18:20', '2024-05-27 11:18:20'),
(320, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Семинар «Архитектурный анализ архитектора Рамиза Гусейнова»', '“Memar Ramiz Hüseynovun memarlıq təhlili” seminarı', '4 декабря в Музейно-выставочном комплексе Азербайджанской государственной академии художеств состоялся семинар на тему «Архитектурный анализ архитектора Рамиза Гусейнова».', '4 dekabr Azərbaycan Dövlət Rəssamlıq Akademiyasının Muzey-Sərgi Kompleksində “Memar Ramiz Hüseynovun memarlıq təhlili” adlı seminar keçirildi.', '1716823819_410729803_928150215390147_8620231995418843381_n.jpg', '[\"1716823819_410735409_928149872056848_2085697954906033186_n.jpg\",\"1716823819_412807493_928150038723498_2763832920563476091_n.jpg\",\"1716823820_410776956_928149958723506_730248243167846691_n.jpg\",\"1716823820_410849528_928149888723513_8458677857898141446_n.jpg\"]', '2024-05-27 11:30:20', '2024-05-27 11:30:20'),
(321, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Практика со студентами', 'Tələbələrlə praktika', 'Практика со студентами', 'Tələbələrlə praktika', '1716823943_415186767_3570536009886196_5339478358589738676_n.jpg', '[\"1716823943_414486822_3570536019886195_319105283500539545_n.jpg\",\"1716823943_417444897_3604787833127680_8455793158062976973_n.jpg\",\"1716823943_417439203_3604787839794346_1649699529240420784_n.jpg\"]', '2024-05-27 11:32:23', '2024-05-27 11:32:23'),
(322, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Семинар «Интерьер и психология человека»', '\"İnteryer və insan psixologiyası\" seminarı', 'Семинар «Интерьер и психология человека»', '\"İnteryer və insan psixologiyası\" seminarı', '1716824195_402220207_3540881032851694_6999864888364169008_n.jpg', '[\"1716824195_403707367_3540881109518353_6046398167324943986_n.jpg\",\"1716824195_402275066_3540981586174972_2991253625775068439_n.jpg\",\"1716824195_403716515_3540881049518359_7232465177590813501_n.jpg\",\"1716824195_403713305_3540881082851689_4916163845155041156_n.jpg\"]', '2024-05-27 11:36:35', '2024-05-27 11:36:35'),
(323, '2020', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Поселок Амиржан (конкурс)', 'Əmircan qəsəbəsi (müsabiqə)', 'Поселок Амиржан (конкурс)', 'Əmircan qəsəbəsi (müsabiqə)', '1716971717_Ashampoo_Snap_среда, 29 мая 2024 г._12h33m5s.png', '[\"1716971720_Ashampoo_Snap_\\u0441\\u0440\\u0435\\u0434\\u0430, 29 \\u043c\\u0430\\u044f 2024 \\u0433._12h32m41s.png\"]', '2024-05-29 04:35:21', '2024-05-29 04:35:21'),
(324, '2014', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Закладка фундамента Гянджинского государственного драматического театра', 'Gəncə Dövlət Dram Teatrının  təməlinin qoyulması', 'Новое здание Гянджинского государственного драматического театра, основанного в 2014 году, имеет большой зрительский зал на 478 мест, домики на 22 места и малый зрительский зал на 120 мест. В семиэтажном здании также созданы Гянджинский театральный музей, состоящий из двух залов, 135 экспонатов и произведений искусства, богатая библиотека, хореографический зал, гримерные, гостиница, кафе и другая необходимая инфраструктура. Словом, в новом здании театра созданы современные технические условия для показа спектаклей, учтены все моменты, связанные с репетициями творческого коллектива.', 'Gəncə Dövlət Dram Teatrının 2014-cü ildə təməli qoyulan yeni binasında 478 yerlik böyük tamaşaçı zalı, 22 tamaşaçı yerlik lojalar və 120 yerlik kiçik tamaşaçı zalı var. Yeddimərtəbəli binada, həmçinin iki zaldan, 135 eksponat və rəsm əsərlərindən ibarət Gəncə Teatr Muzeyi, zəngin kitabxana, xoreoqrafiya zalı, qrim otaqları, mehmanxana, kafe və digər zəruri infrastruktur yaradılıb. Bir sözlə teatrın yeni binasında tamaşaların nümayişi üçün müasir texniki şərait təmin edilib, yaradıcı heyətin məşqləri ilə bağlı bütün məqamlar nəzərə alınıb.', '1716989824_438146600_3649275645345565_3941881388304478008_n.jpg', '[\"1716989824_438170267_3649275655345564_159303787859606857_n.jpg\",\"1716989825_438097116_3649275615345568_6935606868752246809_n.jpg\",\"1716989825_438088708_3649275625345567_3355117969794324710_n.jpg\"]', '2024-05-29 09:37:06', '2024-05-29 09:37:06'),
(325, '2023', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Ход работ Гянджинского экологического центра', 'Gəncə Ekoloji Mərkəzinin iş gedişatı', 'Рамиз Гусейнов ознакомился с ходом работ', 'Ramiz Hüseynov iş gedişatı ilə tanış olmuşdur', '1716989999_407616438_3549952711944526_5773243573010213974_n.jpg', '[\"1716989999_407483912_3549952715277859_4900658869091210621_n.jpg\",\"1716990000_407592399_3549952718611192_2118865450877620348_n.jpg\"]', '2024-05-29 09:40:00', '2024-05-29 09:40:43'),
(326, '2021', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Третье место в архитектурном конкурсе «Обновляющийся облик Древнего Карабаха».', '“Qədim Qarabağın yenilənən siması” memarlıq müsabiqəsi III yer', 'Третье место в архитектурном конкурсе «Обновляющийся облик Древнего Карабаха».', '“Qədim Qarabağın yenilənən siması” memarlıq müsabiqəsi III yer', '1716990324_239616479_2945815089024961_754944336619945749_n.jpg', '[\"1716990325_239863645_2945815122358291_5887001811268078116_n.jpg\",\"1716990326_237144472_2945815129024957_6948943477694463961_n.jpg\"]', '2024-05-29 09:45:28', '2024-05-29 09:45:28'),
(327, '2020', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Семинар \"Цветовой круг\"', '\"Rəng çələngi\" seminar', 'Семинар \"Цветовой круг\"', '\"Rəng çələngi\" seminar', '1716990677_83547560_2496255990647542_172221501305520128_n.jpg', '[\"1716990678_83641181_2496256317314176_4591348476402466816_n.jpg\",\"1716990678_84394217_2496256623980812_8142569282325184512_n.jpg\",\"1716990679_83654877_2496256110647530_1792702182366117888_n.jpg\",\"1716990679_83635692_2496256117314196_4980679552318570496_n.jpg\"]', '2024-05-29 09:51:20', '2024-05-29 09:51:20'),
(328, '2020', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Семинар «Графический дизайн»', '\"Qrafik dizayn\" seminarı', 'Семинар «Графический дизайн»', '\"Qrafik dizayn\" seminarı', '1716990828_80677767_2467693366837138_3431132283375976448_n.jpg', '[\"1716990828_81354043_2467693770170431_9016085288673345536_n.jpg\",\"1716990828_81211112_2467693846837090_8881986337993916416_n.jpg\",\"1716990829_80583961_2467693876837087_6914999545306808320_n.jpg\",\"1716990829_81752292_2467694093503732_9076822134898032640_n.jpg\"]', '2024-05-29 09:53:49', '2024-05-29 09:53:49'),
(329, '2016', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'ТРАБЗОН-город романтиков и любителей старины', 'TRABZON - romantiklər və antik aşiqlər şəhəridir', 'ТРАБЗОН-город романтиков и любителей старины', 'TRABZON - romantiklər və antik aşiqlər şəhəridir', '1723531526_13669438_1160842983976258_4699941785612374169_o.jpg', '[\"1723531526_13987461_1160843010642922_2089506354206688908_o.jpg\",\"1723531526_13913894_1160842847309605_412849743196244614_o.jpg\",\"1723531526_13987375_1160842867309603_1918703395515836665_o.jpg\",\"1723531527_13920101_1160842563976300_5465340577726507532_o.jpg\"]', '2024-08-13 02:45:27', '2024-08-13 02:45:27'),
(330, '2016', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'ТРАБЗОН-город романтиков и любителей старины', 'TRABZON - romantiklər və antik aşiqlər şəhəridir', '(II части)', '(II hissə)', '1723531759_13923706_1160846477309242_7052829741570423977_o.jpg', '[\"1723531759_13908957_1160846103975946_8046410925061014797_o.jpg\",\"1723531759_13925552_1160847177309172_5286854747635086041_o.jpg\",\"1723531759_13925958_1160846080642615_337158232338117273_o.jpg\",\"1723531760_13975343_1160845630642660_6494655519736649038_o.jpg\"]', '2024-08-13 02:49:20', '2024-08-13 02:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_projects`
--

CREATE TABLE `main_projects` (
  `id` bigint UNSIGNED NOT NULL,
  `year` year NOT NULL,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_az` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_az` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_projects`
--

INSERT INTO `main_projects` (`id`, `year`, `location`, `adress`, `name_ru`, `name_az`, `desc_ru`, `desc_az`, `main_image`, `images`, `created_at`, `updated_at`) VALUES
(6, '2014', 'https://maps.app.goo.gl/rzMwVbALhzCcoYBXA', 'Azərbaycan bayrağı, Gəncə, AZ2002', 'Гянджинский национальный драматический театр', 'Gəncə Milli Dram Teatrı', 'Новое здание Гянджинского государственного драматического театра, основанного в 2014 году, имеет большой зрительский зал на 478 мест, домики на 22 места и малый зрительский зал на 120 мест. В семиэтажном здании также созданы Гянджинский театральный музей, состоящий из двух залов, 135 экспонатов и произведений искусства, богатая библиотека, хореографический зал, гримерные, гостиница, кафе и другая необходимая инфраструктура. Словом, в новом здании театра созданы современные технические условия для показа спектаклей, учтены все моменты, связанные с репетициями творческого коллектива.', 'Gəncə Dövlət Dram Teatrının 2014-cü ildə təməli qoyulan yeni binasında 478 yerlik böyük tamaşaçı zalı, 22 tamaşaçı yerlik lojalar və 120 yerlik kiçik tamaşaçı zalı var. Yeddimərtəbəli binada, həmçinin iki zaldan, 135 eksponat və rəsm əsərlərindən ibarət Gəncə Teatr Muzeyi, zəngin kitabxana, xoreoqrafiya zalı, qrim otaqları, mehmanxana, kafe və digər zəruri infrastruktur yaradılıb. Bir sözlə teatrın yeni binasında tamaşaların nümayişi üçün müasir texniki şərait təmin edilib, yaradıcı heyətin məşqləri ilə bağlı bütün məqamlar nəzərə alınıb.', '20240527062815_1643609825_164360931764483417_1000x669.jpg', '[\"1716466784_334023926_565058108720294_1630609028146854974_n.jpg\",\"1716466785_334036654_226193949828367_6255476128847383073_n (1).jpg\",\"1716466785_334095775_579984724046087_6391798690993193379_n.jpg\",\"1716466785_334099025_461471492774861_6238928030249976785_n (1).jpg\"]', '2024-05-23 08:19:45', '2024-05-27 02:28:15'),
(9, '2010', 'https://maps.app.goo.gl/t7q7KGqj52sm2VQYA', 'Gəncə şəhəri, Cavad xan və Həsən bəy Zərdabi küçələrinin kəsişməsi', 'Гянджинская государственная филармония имени Фикрета Амирова', 'Fikrət Əmirov adına Gəncə Dövlət Filarmoniyası', 'Здание Гянджинской государственной филармонии было построено в 2012-2017 годах в Низаминском районе Гянджи, на пересечении улиц Джавад-хана и Зарраби, в районе, где ранее располагался кинотеатр «Баку». В шестиэтажном здании, построенном в стиле классицизма, имеются административные, учебные, гримерные, режиссерские и комнаты отдыха, столовая. Здесь одновременно действуют концертный зал на 1200 мест и конференц-зал на 300 мест, 10 лож и 1 VIP-ложа. На балконе третьего этажа здания установлены статуи Узеира Гаджибекова, Фикрета Амирова, Гара Гараева, Ниязи и Арифа Маликова. На территории построены летняя концертная площадка под открытым небом, смотровая башня, подземная парковка на 500 парковочных мест и двухэтажная галерея общей площадью 2000 квадратных метров.', 'Gəncə Dövlət Filarmoniyasının binası Gəncənin Nizami rayonu ərazisində, Cavad xan və Zərrabi küçələrinin kəsişməsində, əvvəllər Bakı kinoteatrının yerləşdiyi ərazidə 2012-2017-ci illərdə inşa edilib. Klassisizm üslubunda inşa edilmiş altımərtəbəli binada inzibati, məşq, qrim, rejissor və istirahət otaqları, bufet yaradılıb. Burada, eyni zamanda, 1200 nəfərlik konsert və 300 yerlik iclas zalları, 10 loja və 1 VİP loja vardır. Binanın üçüncü mərtəbəsinin eyvanında Üzeyir Hacıbəyovun, Fikrət Əmirovun, Qara Qarayevin, Niyazinin və Arif Məlikovun heykəlləri qoyulub. Ərazidə açıq havada yay konsert meydançası, baxış qülləsi, 500 avtomobil yerlik yeraltı dayanacaq və ümumi sahəsi 2 min kvadratmetr olan iki korpusdan ibarət ikimərtəbəli qalereya inşa edilib.', '20240527063039_Ganja_State_Philharmonic_Hall_facade.jpg', '[\"1716547696_56275895_2260422640897546_2220312631049191424_n.jpg\",\"1716547696_60201929_2166581666729013_5910149937332486144_n.jpg\",\"20240527081354_28828378_2015540872052392_3101120646515567635_o.jpg\",\"20240527081354_29060876_2015539532052526_6852904163441811792_o.jpg\"]', '2024-05-24 06:48:22', '2024-05-27 04:13:54'),
(10, '2023', 'https://maps.app.goo.gl/oGfmP6SCwnh53MQBA', 'M972+4GC, Gəncə', 'Гянджинский городской экопарковый комплекс', 'Gəncə şəhər Ekoloji Park Kompleksi', 'Это первый экопарковый комплекс в нашей стране. Его общая площадь составляет 11 гектаров.  Построенное на объекте трехэтажное здание оранжереи высотой 22 метра имеет площадь 2100 квадратных метров. Основная часть здания собрана из железобетонных, металлических и витражных конструкций. В комплексе, отличающемся уникальным дизайном, созданы все условия для комфорта туристов. Здесь в любое время года будут выращивать различные редкие виды цветов, кустарников и саженцев деревьев. Для этого внутри тепличного здания сооружают систему отопления и вентиляции, обеспечивающую нормальное развитие растений. На территории эколого-паркового комплекса планируется разместить развлекательные центры, спортивные сооружения и объекты общественного питания. Кроме того, здесь будет открытый аквариум с разными видами рыб.', 'Ölkəmizdə bir ilk olan Ekoloji Park Kompleksidir. Bütövlükdə 11 hektarı əhatə edir.  Obyektdə ucaldılan üçmərtəbəli,22 metr hündürlüyündə oranjereya binasının 2100 kvadratmetr sahəsi var. Tikilinin əsas hissəsi dəmir-beton, metal və şüşə-vitraj konstruksiyalarla yığılıb. Fərqli dizaynı ilə seçilən kompleksdə turistlərin rahatlığı üçün bütün şərait yaradılmaqdadır. Burada istənilən fəsildə müxtəlif nadir növ gül-çiçək, kol bitkiləri, eləcə də ağac tinqləri yetişdiriləcək. Bunun üçün oranjereya binasının daxilində bitkilərin normal inkşafının təmin edilməsi üçün isitmə və havalandırma sistemi qurulur. Ekoloji Park Kompleksinin ərazisində, əyləncə mərkəzləri, idman qurğuları və iaşə obyektlərinin yerləşdirilməsi planlaşdırılır. Bununla yanaşı, açıq havada müxtəlif növ balıqları olan akvarium da olacaq.', '20240527115139_434019242_7548115411915618_5636954148013858780_n.jpg', '[\"20240527053807_395407754_3526294927643638_7371041362018579168_n.jpg\",\"20240527081257_395409920_3526294984310299_5531423402219047393_n.jpg\",\"20240527081257_395412670_3526295007643630_6495036077445585000_n.jpg\",\"20240527081257_395437437_3526294994310298_7308910541711805680_n.jpg\"]', '2024-05-24 06:56:14', '2024-05-27 07:51:39'),
(12, '2013', 'https://maps.app.goo.gl/TyAHZHRbTLETce6S6', 'Gəncə şəhəri,Azərbaycan', 'Гянджинский офисный центр', 'Gəncə ofis Mərkəzi', 'Гянджинский офисный центр построен в 2023 году. В шестиэтажном общественном центре есть административная часть, рабочие зоны и конференц-залы. Офис смотрит на проект Гянджинской городской филармонии, который мы спроектировали. Фасад выполнен из стекла и аглай', 'Gəncə ofis Mərkəzi 2013-cü ildə inşa edilmişdir. Altı mərtəbəli olan ictimai mərkəzdə administrativ hissə, iş zonaları, konfrans zalları nəzərdə tutulmuşdur. Ofis panoram olaraq layihələndirdiyimiz Gəncə şəhər filarmoniya layihəsinə baxır. Fasad şüşə və aqlayın sintezindən əmələ gəlmişdir', '1716555633_DSC_8684.JPG', '[\"1716555636_DSC_8688.JPG\",\"20240527123516_16992354_1378955068831714_1883281032089025790_o.jpg\",\"20240527123516_17016812_1378955152165039_218878747645747981_o.jpg\"]', '2024-05-24 09:00:39', '2024-05-27 08:35:16'),
(16, '2018', 'https://maps.app.goo.gl/fJuE3M5i7dh8HdqC6', 'Suraxanı royonu', 'Парк Гюнпши', 'Günəşli parkı', 'Этот парк остался нетронутым с 70-х годов. В этом парке, расположенном на скале, росло всего 3-4 ели высотой 1-1,5 м. В 2011 году такой проект дали, поскольку на этом участке не росли деревья. Надо отметить, что парк состоит не только из деревьев... В будущем он также планировался как выход из метро. Парк Пиллавар состоит из сада с фонтанами, летней эстрады, детского сада, сада оленей и скейт-стадиона. \r\nПервый уровень запроектирован с лестничной клеткой, санузлом, складским помещением и подстанцией. Второй уровень состоит из лестничной клетки, кладовой, чайханы, кофейни, закулисной зоны, игровой комнаты, клуба настольных игр и шахматного клуба. На третьем уровне есть лестничная клетка и терраса. \r\nЗеленая зона парка состоит в основном из зеленой травы и существующих сосен. Это потому, что парк расположен на скале. Ступенчатые воды текут в виде каскада. Все спроектировано по государственным стандартам.', 'Bu park 70-ci illərdən yarasız olaraq istifadəsiz qalmışdır. Qayalığın üzərində yerləşən bu parkın üzərində cəmi 3-4 ədəd 1-1.5 m hündürlüyündə küknar bitirdi. 2011-ci ildə bu sahədə heç bir ağac bitmədii üçün belə bir layihə verildi. Qeyd edim ki park yalnız ağacdan ibarət olmur... Burada eyni zamanda gələcəkdə metronun bir çıxışıda nəzərdə tutulmuşdu. Pilləvar parkda fəvvarələr bağı, yay estradası, uşaq bağçası, ahılar bağı və skeyt stadiondan ibarətdir. \r\nBirinci səviyyə pilləkən qəfəsəsi, sanitar qovşaq, saxlanc və yarımstansiyadan nəzərdə tutulmuşdur. İkinci səviyyə pilləkən qəfəsəsi, saxlanc, çayxana, qəhvəxana, səhnə arxası zona, oyun zalı, stolüstü oyun klubu, şahmat klubundan ibarətdir. Üçüncü səviyyə isə pilləkən qəfəsəsi və terrassa nəzərdə tutulub. \r\nParkda yaşıllıq zonası əsasən yaşıl ot örtüyündən və mövcud şam ağaclarından ibarətdir. Bunun səbəbi parkın qaya üzərində yerləşməsidir. Kaskad formasında pilləvari sular axır. Hər bir şey dövlət standartlarına uyğun olaraq layihələndirilmişdir', '1716799668_28619114_2015524925387320_6852882911983314430_o.jpg', '[\"1716799668_28947652_2015520388721107_2356094630159710407_o.jpg\",\"1716799669_28954191_2015516325388180_5411625544483232309_o.jpg\",\"1716799669_29060694_2015516765388136_8685997405969243839_o.jpg\",\"1716799670_29060973_2015521272054352_1330240035181777513_o.jpg\"]', '2024-05-27 04:47:51', '2024-05-27 05:02:35'),
(17, '2008', 'https://maps.app.goo.gl/Latf24nn5xXGgdDA6', 'Suraxanı RİH inzibati bina', 'Административное здание Исполнительной власти Сураханского района', 'Suraxanı RİH inzibati bina', 'Административное здание Исполнительной власти Сураханского района, первый в Азербайджане Центр Гейдара Алиева и Парк Гейдара Алиева.', 'Suraxanı rayon İcra Hakimiyyətinin inzibati binası, Azərbaycan da ilk Heydər Əliyev Mərkəzi və Heydər Əliyev parkı', '20240527125721_530090_398702263523671_1649785205_n.jpg', '[\"1716811090_213L1198 copy.jpg\",\"1716811091_338911993_231367466122004_6188632303411021790_n.jpg\",\"1716811092_338857003_778551830566065_5366568732549975005_n.jpg\",\"1716811092_338922660_636889394936067_2597665174945826409_n.jpg\"]', '2024-05-27 07:58:13', '2024-05-27 08:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `map_projects`
--

CREATE TABLE `map_projects` (
  `id` bigint UNSIGNED NOT NULL,
  `year` year NOT NULL,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` int NOT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_az` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_az` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `map_projects`
--

INSERT INTO `map_projects` (`id`, `year`, `location`, `region_id`, `name_ru`, `name_az`, `desc_ru`, `desc_az`, `main_image`, `images`, `created_at`, `updated_at`) VALUES
(104, '2012', 'https://maps.app.goo.gl/gT8jCamWWNJrqYyk9', 1, 'Оригами', 'Oriqami', 'Государственное реабилитационное учреждение для детей с особыми потребностями', '\"Oriqami\" uşaq reablitasiya mərkəzi\r\nXüsusi Qayğıya Ehtiyacı Olan Uşaqların Dövlət Reabilitasiya Müəssisəsi', '1716800740_475244_512548965472333_1591044212_o.jpg', '[\"1716800740_478391_512548922139004_446070235_o.jpg\",\"1716800740_913678_512548992138997_755122700_o.jpg\",\"1716800740_919086_512548828805680_1098035760_o.jpg\",\"20240527092336_423965_392601647434442_1617592111_n (1).jpg\"]', '2024-05-27 05:05:40', '2024-05-27 05:36:13'),
(105, '2023', 'https://maps.app.goo.gl/oGfmP6SCwnh53MQBA', 5, 'Гянджинский городской экопарковый комплекс', 'Gəncə şəhər Ekoloji Park Kompleksi', 'Это первый экопарковый комплекс в нашей стране. Его общая площадь составляет 11 гектаров.  Построенное на объекте трехэтажное здание оранжереи высотой 22 метра имеет площадь 2100 квадратных метров. Основная часть здания собрана из железобетонных, металлических и витражных конструкций. В комплексе, отличающемся уникальным дизайном, созданы все условия для комфорта туристов. Здесь в любое время года будут выращивать различные редкие виды цветов, кустарников и саженцев деревьев. Для этого внутри тепличного здания сооружают систему отопления и вентиляции, обеспечивающую нормальное развитие растений. На территории эколого-паркового комплекса планируется разместить развлекательные центры, спортивные сооружения и объекты общественного питания. Кроме того, здесь будет открытый аквариум с разными видами рыб.', 'Ölkəmizdə bir ilk olan Ekoloji Park Kompleksidir. Bütövlükdə 11 hektarı əhatə edir.  Obyektdə ucaldılan üçmərtəbəli,22 metr hündürlüyündə oranjereya binasının 2100 kvadratmetr sahəsi var. Tikilinin əsas hissəsi dəmir-beton, metal və şüşə-vitraj konstruksiyalarla yığılıb. Fərqli dizaynı ilə seçilən kompleksdə turistlərin rahatlığı üçün bütün şərait yaradılmaqdadır. Burada istənilən fəsildə müxtəlif nadir növ gül-çiçək, kol bitkiləri, eləcə də ağac tinqləri yetişdiriləcək. Bunun üçün oranjereya binasının daxilində bitkilərin normal inkşafının təmin edilməsi üçün isitmə və havalandırma sistemi qurulur. Ekoloji Park Kompleksinin ərazisində, əyləncə mərkəzləri, idman qurğuları və iaşə obyektlərinin yerləşdirilməsi planlaşdırılır. Bununla yanaşı, açıq havada müxtəlif növ balıqları olan akvarium da olacaq.', '20240527120139_434019242_7548115411915618_5636954148013858780_n.jpg', '[\"1716801781_395409920_3526294984310299_5531423402219047393_n.jpg\",\"1716801781_395419783_3526294920976972_8275001309363107323_n.jpg\",\"1716801781_395437437_3526294994310298_7308910541711805680_n.jpg\",\"1716801782_395407754_3526294927643638_7371041362018579168_n.jpg\"]', '2024-05-27 05:23:02', '2024-05-27 08:01:39'),
(106, '2010', 'https://maps.app.goo.gl/t7q7KGqj52sm2VQYA', 5, 'Гянджинская государственная филармония имени Фикрета Амирова', 'Fikrət Əmirov adına Gəncə Dövlət Filarmoniyası', 'Здание Гянджинской государственной филармонии было построено в 2012-2017 годах в Низаминском районе Гянджи, на пересечении улиц Джавад-хана и Зарраби, в районе, где ранее располагался кинотеатр «Баку». В шестиэтажном здании, построенном в стиле классицизма, имеются административные, учебные, гримерные, режиссерские и комнаты отдыха, столовая. Здесь одновременно действуют концертный зал на 1200 мест и конференц-зал на 300 мест, 10 лож и 1 VIP-ложа. На балконе третьего этажа здания установлены статуи Узеира Гаджибекова, Фикрета Амирова, Гара Гараева, Ниязи и Арифа Маликова. На территории построены летняя концертная площадка под открытым небом, смотровая башня, подземная парковка на 500 парковочных мест и двухэтажная галерея общей площадью 2000 квадратных метров.', 'Gəncə Dövlət Filarmoniyasının binası Gəncənin Nizami rayonu ərazisində, Cavad xan və Zərrabi küçələrinin kəsişməsində, əvvəllər Bakı kinoteatrının yerləşdiyi ərazidə 2012-2017-ci illərdə inşa edilib. Klassisizm üslubunda inşa edilmiş altımərtəbəli binada inzibati, məşq, qrim, rejissor və istirahət otaqları, bufet yaradılıb. Burada, eyni zamanda, 1200 nəfərlik konsert və 300 yerlik iclas zalları, 10 loja və 1 VİP loja vardır. Binanın üçüncü mərtəbəsinin eyvanında Üzeyir Hacıbəyovun, Fikrət Əmirovun, Qara Qarayevin, Niyazinin və Arif Məlikovun heykəlləri qoyulub. Ərazidə açıq havada yay konsert meydançası, baxış qülləsi, 500 avtomobil yerlik yeraltı dayanacaq və ümumi sahəsi 2 min kvadratmetr olan iki korpusdan ibarət ikimərtəbəli qalereya inşa edilib.', '1716801885_82177815_2479035275702947_7342178637539442688_n.jpg', '[\"1716801885_81601747_2479035309036277_5420193249459437568_n.jpg\",\"1716801886_28828378_2015540872052392_3101120646515567635_o.jpg\",\"1716801886_29060876_2015539532052526_6852904163441811792_o.jpg\",\"1716801887_Ganja_State_Philharmonic_Hall_facade.jpg\"]', '2024-05-27 05:24:49', '2024-05-27 05:24:49'),
(107, '2014', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 5, 'Гянджинский национальный драматический театр', 'Gəncə Milli Dram Teatrı', 'Новое здание Гянджинского государственного драматического театра, основанного в 2014 году, имеет большой зрительский зал на 478 мест, домики на 22 места и малый зрительский зал на 120 мест. В семиэтажном здании также созданы Гянджинский театральный музей, состоящий из двух залов, 135 экспонатов и произведений искусства, богатая библиотека, хореографический зал, гримерные, гостиница, кафе и другая необходимая инфраструктура. Словом, в новом здании театра созданы современные технические условия для показа спектаклей, учтены все моменты, связанные с репетициями творческого коллектива.', 'Gəncə Dövlət Dram Teatrının 2014-cü ildə təməli qoyulan yeni binasında 478 yerlik böyük tamaşaçı zalı, 22 tamaşaçı yerlik lojalar və 120 yerlik kiçik tamaşaçı zalı var. Yeddimərtəbəli binada, həmçinin iki zaldan, 135 eksponat və rəsm əsərlərindən ibarət Gəncə Teatr Muzeyi, zəngin kitabxana, xoreoqrafiya zalı, qrim otaqları, mehmanxana, kafe və digər zəruri infrastruktur yaradılıb. Bir sözlə teatrın yeni binasında tamaşaların nümayişi üçün müasir texniki şərait təmin edilib, yaradıcı heyətin məşqləri ilə bağlı bütün məqamlar nəzərə alınıb.', '1716801999_1643609825_164360931764483417_1000x669.jpg', '[\"1716801999_1681300493_gence-dram.jpg\",\"20240527105038_334023926_565058108720294_1630609028146854974_n.jpg\",\"20240527105039_334099025_461471492774861_6238928030249976785_n.jpg\",\"20240527105039_334154488_1795699614156803_5806997196380195027_n.jpg\"]', '2024-05-27 05:26:39', '2024-05-27 06:50:39'),
(108, '2008', 'https://maps.app.goo.gl/coCSY6mLnsCqY5UVA', 1, 'Исполнительная власть Сураханского района', 'Suraxanı Rayon İcra Hakimiyyəti', 'В 2008 году построены и сданы в эксплуатацию Сураханский район, поселок Амирджан, Исполнительная власть Сураханского района и первый Центр Гейдара Алиева. Архитектор Рамиз Гусейнов', 'Suraxanı rayonu, Əmircan qəsəbəsi,Suraxanı Rayon İcra Hakimiyyəti və ilk Heydər Əliyev Mərkəzi 2008 ci ildə tikilib istifadəyə verilmişdir.Memar Ramiz Hüseynov', '1716802631_IRA_1502 copy.jpg', '[\"1716802633_IRA_1512 copy.jpg\",\"1716802635_213L1253 copy.jpg\",\"1716802639_213L1235 copy.jpg\",\"1716802642_213L1198 copy.jpg\"]', '2024-05-27 05:37:25', '2024-05-27 05:40:04'),
(109, '2018', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 1, 'Парк Гюнпши', 'Günəşli parkı', 'Этот парк остался нетронутым с 70-х годов. В этом парке, расположенном на скале, росло всего 3-4 ели высотой 1-1,5 м. В 2011 году такой проект дали, поскольку на этом участке не росли деревья. Надо отметить, что парк состоит не только из деревьев... В будущем он также планировался как выход из метро. Парк Пиллавар состоит из сада с фонтанами, летней эстрады, детского сада, сада оленей и скейт-стадиона. \r\nПервый уровень запроектирован с лестничной клеткой, санузлом, складским помещением и подстанцией. Второй уровень состоит из лестничной клетки, кладовой, чайханы, кофейни, закулисной зоны, игровой комнаты, клуба настольных игр и шахматного клуба. На третьем уровне есть лестничная клетка и терраса. \r\nЗеленая зона парка состоит в основном из зеленой травы и существующих сосен. Это потому, что парк расположен на скале. Ступенчатые воды текут в виде каскада. Все спроектировано по государственным стандартам.', 'Bu park 70-ci illərdən yarasız olaraq istifadəsiz qalmışdır. Qayalığın üzərində yerləşən bu parkın üzərində cəmi 3-4 ədəd 1-1.5 m hündürlüyündə küknar bitirdi. 2011-ci ildə bu sahədə heç bir ağac bitmədii üçün belə bir layihə verildi. Qeyd edim ki park yalnız ağacdan ibarət olmur... Burada eyni zamanda gələcəkdə metronun bir çıxışıda nəzərdə tutulmuşdu. Pilləvar parkda fəvvarələr bağı, yay estradası, uşaq bağçası, ahılar bağı və skeyt stadiondan ibarətdir. \r\nBirinci səviyyə pilləkən qəfəsəsi, sanitar qovşaq, saxlanc və yarımstansiyadan nəzərdə tutulmuşdur. İkinci səviyyə pilləkən qəfəsəsi, saxlanc, çayxana, qəhvəxana, səhnə arxası zona, oyun zalı, stolüstü oyun klubu, şahmat klubundan ibarətdir. Üçüncü səviyyə isə pilləkən qəfəsəsi və terrassa nəzərdə tutulub. \r\nParkda yaşıllıq zonası əsasən yaşıl ot örtüyündən və mövcud şam ağaclarından ibarətdir. Bunun səbəbi parkın qaya üzərində yerləşməsidir. Kaskad formasında pilləvari sular axır. Hər bir şey dövlət standartlarına uyğun olaraq layihələndirilmişdir', '1716802656_28619114_2015524925387320_6852882911983314430_o.jpg', '[\"1716802657_28947652_2015520388721107_2356094630159710407_o.jpg\",\"1716802657_28954191_2015516325388180_5411625544483232309_o.jpg\",\"1716802658_29060694_2015516765388136_8685997405969243839_o.jpg\",\"1716802659_29060973_2015521272054352_1330240035181777513_o.jpg\"]', '2024-05-27 05:37:39', '2024-05-27 05:37:39'),
(111, '2016', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 10, 'Здание исполнительной власти Мингечевира', 'Mingəçevir İcra Hakimiyyəti binası', 'Здание исполнительной власти Мингечевира', 'Mingəçevir İcra Hakimiyyəti binası', '1716802890_56380215_2260409040898906_4923236649657171968_n.jpg', '[\"1716802890_56466273_2260409090898901_7796926858557128704_n.jpg\",\"1716802890_56275958_2260409050898905_3792237456993026048_n.jpg\",\"1716802890_56355271_2260409097565567_5235270937154158592_n.jpg\",\"1716802890_56549491_2260409034232240_5656212207864643584_n.jpg\"]', '2024-05-27 05:41:30', '2024-05-27 05:41:30'),
(112, '2011', 'https://maps.app.goo.gl/Z7k7M8Nir7PFSjdA8', 1, 'Полная средняя школа № 327.', '327 saylı tam orta məktəb', 'Полная средняя школа № 327.', '327 saylı tam orta məktəb', '1716803472_DSC09708 copy.jpg', '[\"1716803473_20120913_164030 copy.jpg\",\"1716803474_20140103_114509 copy.jpg\",\"1716803476_20120913_155612 copy.jpg\",\"20240527160008_338890544_911526886715662_1053709542385451107_n.jpg\"]', '2024-05-27 05:51:17', '2024-05-27 12:00:08'),
(113, '2018', 'https://maps.app.goo.gl/btQgWkHR3hKhkg6n6', 1, 'Парк \"Neftçilər\"', 'Neftçilər Parkı', 'Парк \"Neftçilər\"', 'Suraxanı rayonu,Qaraçuxur qəsəbəsi,Mehbalıyev küçəsi', '1716804164_7 copy.jpg', '[\"1716804165_2 copy.jpg\",\"1716804165_94 (2) copy.jpg\",\"1716804166_SAM_6987 copy.jpg\",\"1716804167_SAM_6934 copy.jpg\"]', '2024-05-27 06:02:48', '2024-05-27 06:02:48'),
(116, '2019', 'https://maps.app.goo.gl/51Esu4EiNARYd7YF7', 9, 'Административное здание исполнительной власти Тартерского района', 'Tərtər rayon icra hakimiyyəti', 'Административное здание исполнительной власти Тартерского района', 'Tərtər rayon icra hakimiyyətinin inzibati binası', '1716807061_22 copy.jpg', '[\"1716807062_11 copy.jpg\",\"1716807062_22 copy.jpg\",\"1716807063_44 copy.jpg\",\"1716807064_33.jpg\"]', '2024-05-27 06:51:11', '2024-05-27 06:51:11'),
(117, '2020', 'https://maps.app.goo.gl/FHntSFhEwFv2QSCT7', 10, 'Город Ширван, парк имени М.Физули', 'Şirvan şəhər,M.Füzuli adına park', 'Город Ширван, парк имени М.Физули', 'Şirvan şəhər,M.Füzuli adına park', '1716807336_269121746_4773599709367216_6818992612538131608_n.jpg', '[\"1716807336_269678160_4773609549366232_9062198429977629289_n.jpg\",\"1716807336_269599835_4773608772699643_2209551165715979296_n.jpg\",\"1716807336_269093155_4773608296033024_170792005393778635_n.jpg\",\"1716807337_269118113_4773598822700638_5009201768897505073_n.jpg\"]', '2024-05-27 06:55:37', '2024-05-27 06:55:37'),
(118, '2023', 'https://maps.app.goo.gl/DNngyr82d4Nq1YE27', 10, 'Вход в Геранбойский район (концептуальный проект)', 'Goranboy rayonu giriş(konsept layihə)', 'Вход в Геранбойский район (концептуальный проект)', 'Goranboy rayonu giriş(konsept layihə)', '1716807537_1.png', '[]', '2024-05-27 06:58:57', '2024-05-27 06:58:57'),
(119, '2015', 'https://maps.app.goo.gl/CAEv8kyBMiLLJJJw8', 10, 'Сабирабадский район Центр Гейдара Алиева', 'Sabirabad rayonu Heydər Əliyev Mərkəzi', 'Здание Центра Гейдара Алиева своей самобытностью увеличивает красоту города Сабирабада. Создание этого Центра, прежде всего, свидетельствует об уважении жителей Сабирабада к памяти Национального Лидера. Было отмечено, что строительство Центра было начато в ноябре прошлого года. Общая площадь здания составляет 5,2 тысячи квадратных метров. На первом этаже трехэтажного здания расположены интернет-кафе и танцевальная студия, конференц-зал и 3D-кинотеатр, оснащенный современной акустической системой. На втором этаже установлен бюст общенационального лидера Гейдара Алиева, а также установлены стенды, отражающие мысли Великого лидера о Сабирабаде и жителях района. Большой интерес в выставочном зале представляют фотографии и другие документы, связанные с образованием и деятельностью Великого Вождя. В выставочном зале здания площадью 1094 квадратных метра выставлены фотографии гения, сделанные в разные периоды. В разных разделах зала размещены фотографии Национального Лидера в детстве, юности, студенчестве, в советский период и в годы независимости, когда он руководил страной. В разделе «Гейдар Алиев и Сабирабад. 1970-1998 годы» размещены фотографии, отражающие визиты гениального лидера в этот регион. Эти фотографии еще раз доказывают, что общенациональный лидер во все периоды своего руководства в Азербайджане уделял особое внимание развитию Сабирабада. Ярким примером этого является тот факт, что Великий Вождь посетил Сабирабу 15 раз. Участие общенационального лидера Гейдара Алиева в открытии различных объектов в регионе, встречи с представителями общественности, интеллигенции и трудящимися оставили глубокое впечатление у жителей Сабирабада.', 'Heydər Əliyev Mərkəzinin binası orijinallığı ilə Sabirabad şəhərinin gözəlliyini daha da artırır. Bu Mərkəzin yaradılması ilk növbədə sabirabadlıların Ümummilli Liderin xatirəsinə ehtiramını nümayiş etdirir.Diqqətə çatdırıldı ki, Mərkəzin inşasına ötən ilin noyabrında başlanılmışdır. Binanın ümumi sahəsi 5,2 min kvadratmetrdir. Üçmərtəbəli binanın birinci mərtəbəsində internet kafe və rəqs studiyası, konfrans zalı və müasir akustika sistemi ilə təchiz edilmiş 3D kinozalı fəaliyyət göstərir. İkinci mərtəbədə ümummilli lider Heydər Əliyevin büstü qoyulmuş, Ulu Öndərin Sabirabad və rayon sakinləri haqqında fikirlərinin əks olunduğu stendlər quraşdırılmışdır. Buradakı ekspozisiya zalında fotolar və Ulu Öndərin təhsili, fəaliyyəti ilə bağlı digər sənədlər böyük maraq doğurur. Binanın 1094 kvadratmetr sahəsi olan ekspozisiya zalında dahi şəxsiyyətin müxtəlif dövrlərdə çəkilmiş fotoları sərgilənir. Zalda müxtəlif bölmələrdə Ümummilli Liderin uşaqlıq, gənclik, tələbəlik, sovet dönəmi və müstəqillik illərində ölkəyə rəhbərlik etdiyi dövrlərdəki fotoları maraqla qarşılanır. \"Heydər Əliyev və Sabirabad. 1970-1998-ci illər\" bölməsində dahi rəhbərin bu rayona səfərlərini əks etdirən fotolar yer almışdır. Bu fotolar bir daha sübut edir ki, Ümummilli Lider Azərbaycana rəhbərliyinin bütün dövrlərində Sabirabadın da inkişafına xüsusi diqqət göstərmişdir. Ulu Öndərin Sabirabada 15 dəfə səfər etməsi bunun bariz nümunəsidir. Ümummilli lider Heydər Əliyevin rayondakı müxtəlif obyektlərin açılışlarında iştirak etməsi, ictimaiyyət nümayəndələri, ziyalılar və zəhmətkeşlərlə görüşləri sabirabadlıların xatirində dərin izlər buraxmışdır.', '20240527125454_965452_556901501037079_1411111419_o.jpg', '[\"20240527125454_1172688_556901521037077_573109060_o.jpg\",\"20240527125454_1116267_556901711037058_1163716252_o.jpg\",\"20240527125455_1093750_556901444370418_1592613690_o.jpg\",\"20240527125455_1172783_556902284370334_105626738_o.jpg\"]', '2024-05-27 07:02:03', '2024-05-27 09:53:47'),
(120, '2015', 'https://maps.app.goo.gl/K5kB1S4Ptn8mmhBt8', 1, 'Новое административное здание АзТВ', 'Aztv-nin yeni inzibati binası', 'Новое административное здание АзТВ', 'Aztv-nin yeni inzibati binası', '1716808179_271894806_4875551139172072_271530395494347605_n.jpg', '[\"1716808179_466935_512549685472261_1325199259_o.jpg\",\"20240527125627_1078836_555525677841328_541517273_o.jpg\",\"20240527125627_1119877_555525854507977_934725526_o.jpg\"]', '2024-05-27 07:09:39', '2024-05-27 08:56:28'),
(121, '2006', 'https://maps.app.goo.gl/Po3nm1oyGxrhHu868', 1, 'Памятник Академику Агилю Алиеву', 'Akademik Aqil Əliyevin abidəsi.', 'Памятник Академику Агилю Алиеву в аллее почетного захоронения. Скульптор Фуад Салаев, архитектор Рамиз Гусейнов.', 'Fəxri dəfn xiyabanında akademik Aqil Əliyevin abidəsi. Heykəltəraş Fuad Salayev, memar Ramiz Hüseynov.', '1716808468_12314461_1001445263249365_2314475117488734620_o.jpg', '[\"1716808468_12339407_1001445169916041_6916627825770605912_o.jpg\",\"1716808468_12363201_1001445219916036_2345445136575391161_o.jpg\",\"1716808469_12375032_1001445176582707_5645737792267451506_o.jpg\"]', '2024-05-27 07:14:29', '2024-05-27 07:14:29'),
(122, '2005', 'https://maps.app.goo.gl/Po3nm1oyGxrhHu868', 1, 'Памятник Азаду Мирзаджанзаде', 'Azad Mirzəcanzadə abidəsi', 'Памятник Азаду Мирзаджанзаде', 'Azad Mirzəcanzadə abidəsi', '1716808609_466441_512553765471853_1443392363_o.jpg', '[\"1716808609_12316657_1001477813246110_8478153247769825308_n.jpg\",\"1716808609_12346526_1001477849912773_905925756750147894_n.jpg\"]', '2024-05-27 07:16:49', '2024-05-27 07:16:49'),
(123, '2010', 'https://maps.app.goo.gl/7jEncKYHTuHCZgnn7', 1, 'Входная композиция села Маштага', 'Maştağa kəndin giriş kompazisiyası', 'Входная композиция села Маштага', 'Maştağa kəndin giriş kompazisiyası', '1716808726_475200_512557952138101_1061359288_o.jpg', '[\"20240527122838_399274_440429712684259_710454825_n.jpg\",\"20240527122838_533504_440429689350928_728285501_n.jpg\"]', '2024-05-27 07:18:46', '2024-05-27 08:28:38'),
(124, '2006', 'https://maps.app.goo.gl/D3SiMVa9fBaRZhq18', 1, 'Исполнительная власть Ясамальского района', 'Yasamal rayon İcra Hakimiyyəti', 'Исполнительная власть Ясамальского района', 'Yasamal rayon İcra Hakimiyyəti', '1716808839_892556_512567325470497_125839614_o (1).jpg', '[\"1716808839_477153_512567312137165_432864690_o.jpg\",\"1716808840_466179_512567298803833_557731352_o.jpg\"]', '2024-05-27 07:20:40', '2024-05-27 07:20:40'),
(125, '2009', 'https://maps.app.goo.gl/FxuC2k5L1T3XPb8A7', 1, 'Бинагадинский район Центр Гейдара Алиева', 'Binəqədi Rayonu Heydər Əliyev Mərkəzi', 'Центр Гейдара Алиева Бинагадинского района. В настоящее время функционирует как административное здание ЙАП.', 'Binəqədi Rayonu Heydər Əliyev Mərkəzi.Hal hazırda YAP inzibati binası kimi fəaliyyət göstərirş', '1716809040_472987_512550852138811_1608314025_o.jpg', '[\"1716809040_461409_512550785472151_1691917061_o (1).jpg\",\"1716809040_904290_512550822138814_1297427229_o.jpg\"]', '2024-05-27 07:24:00', '2024-05-27 07:24:00'),
(126, '2008', 'https://maps.app.goo.gl/UNFVqBwBiVDYrWVU8', 4, 'Габалинский район', 'Qəbələ rayonun (giriş)', 'Сострадание к въезду в Габалинский район', 'Qəbələ rayonun giriş kompazisyası', '1716809230_600857_512558792138017_8702137_n.jpg', '[]', '2024-05-27 07:27:10', '2024-06-01 09:38:37'),
(127, '2006', 'https://maps.app.goo.gl/UNFVqBwBiVDYrWVU8', 4, 'Частный ресторан в Габале', 'Qəbələdə fərdi restoran', 'Частный ресторан в Габале', 'Qəbələdə fərdi restoran', '1716809388_461406_512632038797359_302859337_o.jpg', '[\"1716809388_461284_512631475464082_1351251682_o.jpg\",\"1716809389_461288_512632102130686_110250519_o.jpg\",\"1716809389_477275_512631695464060_1119504018_o.jpg\"]', '2024-05-27 07:29:50', '2024-05-27 07:29:50'),
(128, '2008', 'https://maps.app.goo.gl/jUKA5RViZK89oeJ67', 10, 'Центр Гейдара Алиева в Мингечауре. Оформление интерьеров.', 'Mingəçevir Heydər Əliyev Mərkəzi. Daxili dizayn.', 'Центр Гейдара Алиева в Мингечауре. Оформление интерьеров.', 'Mingəçevir Heydər Əliyev Mərkəzi. Daxili dizayn.', '1716809603_913739_512100412183855_1664245858_o.jpg', '[\"1716809603_475971_512100978850465_21177164_o.jpg\",\"1716809603_478786_512100618850501_366185817_o.jpg\",\"1716809603_920757_512100488850514_1024161225_o.jpg\"]', '2024-05-27 07:33:24', '2024-05-27 07:33:24'),
(131, '2013', 'https://maps.app.goo.gl/U6RSoCoWvX4tui456', 1, 'Памятник Рашиду Бейбутову.', 'Rəşid Behbudov heykəl abidəsi.', 'Памятник Рашиду Бейбутову.\r\nСкульптор Фуад Салаев.\r\nАрхитектор Рамиз Гусейнов', 'Rəşid Behbudov heykəl abidəsi.\r\nHeykəltaraş Fuad Salayev\r\nMemar Ramiz Hüseynov', '1716810632_14711515_1220992204628002_4625770672172450659_o.jpg', '[\"1716810633_14711096_1220992137961342_9096233261991284954_o.jpg\",\"1716810633_13115972_1086195718107652_6613450047177656084_o.jpg\",\"1716810634_13112807_1086195644774326_7922994433364735097_o.jpg\"]', '2024-05-27 07:50:34', '2024-05-27 07:50:34'),
(132, '2019', 'https://maps.app.goo.gl/rma5GzyV2FUbeBKC7', 5, 'Концептуальный проект 5-звездочного отеля в Гяндже', 'Gəncədə 5 ulduzlu otel', 'Концептуальный проект 5-звездочного отеля в Гяндже', 'Gəncədə 5 ulduzlu otel konsept Layihə', '1716811427_1956972_665273053533256_1552595834_o (1).jpg', '[\"1716811427_10012189_665273196866575_805243767_o.jpg\",\"1716811427_1522876_665273200199908_1790423671_o.jpg\"]', '2024-05-27 08:03:48', '2024-05-27 08:03:48'),
(133, '2020', 'https://maps.app.goo.gl/eZSd67unCqTVk8Lk8', 8, 'Музей истории Карабаха', 'Qarabağ Tarixi Muzeyi', 'Музей истории Карабаха', 'Qarabağ Tarixi Muzeyi  Konsept Layihə', '1716811635_89623370_2939898206070718_6121049727967428608_n.jpg', '[\"1716811636_89623788_2939898722737333_337831003538063360_n.jpg\",\"1716811636_89638644_2939898929403979_7505113564852518912_n.jpg\",\"1716811636_89627467_2939899042737301_5465955202580348928_n.jpg\",\"1716811637_89640989_2939899226070616_6717603548462317568_n.jpg\"]', '2024-05-27 08:07:17', '2024-05-27 08:07:17'),
(134, '2009', 'https://maps.app.goo.gl/rma5GzyV2FUbeBKC7', 5, 'Профессиональное училище города Гянджа', 'Peşə Məktəbi', 'Профессиональное училище города Гянджа', 'Peşə Məktəbi Gəncə şəhəri.Konsept layihə', '1716812403_858846_483548121705751_817050390_o.jpg', '[\"1716812403_857320_483548545039042_1528807737_o.jpg\",\"1716812404_858846_483548121705751_817050390_o.jpg\",\"1716812404_860377_483548925039004_278915311_o.jpg\"]', '2024-05-27 08:20:05', '2024-05-27 08:20:05'),
(135, '2012', 'https://maps.app.goo.gl/dMWgVGwW56bH1SnbA', 10, 'Музей флага Сабирабадского района', 'Sabirabad rayonu Bayraq Muzeyi', 'Музей флага Сабирабадского района', 'Sabirabad rayonu Bayraq Muzeyi', '1716812540_24131543_1652420241485194_7696025101286322117_n.jpg', '[\"1716812540_24068248_1652420238151861_4329413574006277355_n.jpg\",\"1716812540_24174236_1652420288151856_7936225983637763633_n.jpg\",\"1716812540_24231941_1652420244818527_4265179623512499770_n.jpg\",\"1716812540_24176939_1652420314818520_8738845440108953045_n.jpg\"]', '2024-05-27 08:22:20', '2024-05-27 08:22:20'),
(136, '2012', 'https://maps.app.goo.gl/rma5GzyV2FUbeBKC7', 5, 'Концептуальный проект «Низами Централ»', 'Nizami Mərkəzi konsept layihə', 'Концептуальный проект «Низами Централ»', 'Nizami Mərkəzi konsept layihə', '1716812749_23783585_1647196255340926_7942798137992687475_o.jpg', '[\"1716812749_23847188_1647195975340954_766187422690711520_o.jpg\",\"1716812749_23926514_1647196128674272_5749598399772828580_o.jpg\"]', '2024-05-27 08:25:50', '2024-05-27 08:25:50'),
(138, '2011', 'https://maps.app.goo.gl/4WJQ3kP2yW5uuP7P8', 4, '\"Енгидже\" курорт под Габалой. автор Рамиз Гусейнов', 'Qəbələ yaxınlığında \"Yengicə\" kurortu. müəllif Ramiz Hüseynov', '\"Енгидже\" курорт под Габалой. автор Рамиз Гусейнов', 'Qəbələ yaxınlığında \"Yengicə\" kurortu. müəllif Ramiz Hüseynov', '1716813737_10698507_798584793535414_7986004918106682060_n.jpg', '[\"1716813737_1400263_798586100201950_3096245252061405936_o.jpg\",\"1716813737_1497959_798586013535292_7809383584527617543_o.jpg\",\"1716813737_10533300_798586000201960_1228546129536668540_o.jpg\"]', '2024-05-27 08:42:17', '2024-05-27 08:42:17'),
(139, '2015', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 1, 'Завода глубинных оснований (эскиз)', 'Dərin özüllər zavodu (eskiz)', 'Реконструкция фасадов и интерьера завода глубинных оснований', 'Dərin özül zavodunun fasad və interyerinin yenidən qurulması', '1716813739_11164043_886288571431702_4318960844564967712_o.jpg', '[\"1716813739_11146347_886288478098378_299461945608469520_o.jpg\",\"1716813739_11148831_886288468098379_2722329214509542108_o.jpg\",\"1716813740_11080620_886288461431713_954926944202060901_o.jpg\",\"1716813740_10987647_886288111431748_5300828300497045078_o.jpg\"]', '2024-05-27 08:42:20', '2024-06-08 03:33:28'),
(140, '2014', 'https://maps.app.goo.gl/bDaHSfQiLDU7eMod7', 4, 'Административное здание Самухского района YAP', 'Samux rayonu Yap inzibati binası', 'Административное здание Самухского района YAP', 'Samux rayonu Yap inzibati binası', '1716813932_75298469_2696175923776282_6887978011967094784_n.jpg', '[\"1716813932_74624096_2696175743776300_4738859819673321472_n (1).jpg\",\"1716813932_76646818_2696173927109815_1538977972902428672_n.jpg\",\"1716813932_78431349_2696175873776287_4492120476868411392_n.jpg\"]', '2024-05-27 08:45:33', '2024-05-27 08:45:33'),
(142, '2020', 'https://maps.app.goo.gl/T9XhGk9UjTULFsd69', 4, 'Аллея Шахидов, Огузский район', 'Oğuz rayonu Şəhidlər Xiyabanı', 'Аллея Шахидов, Огузский район', 'Oğuz rayonu Şəhidlər Xiyabanı', '1716814340_241273972_4429262770467580_5764389586880770956_n.jpg', '[\"1716814341_241308602_4429262943800896_5165864511348833732_n.jpg\",\"1716814341_241324408_4429262180467639_3941176000616866062_n.jpg\",\"1716814341_241204070_4429262373800953_4450322076560270905_n.jpg\"]', '2024-05-27 08:52:21', '2024-05-27 08:52:21'),
(143, '2014', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 1, 'Жилой комплекс Пираллахи', 'Pirallahı yaşayış kompleksi', 'Жилой комплекс Пираллахи', 'Pirallahı yaşayış kompleksi', '1716814469_10384021_969653269728074_6662611374104509175_n.jpg', '[\"1716814469_64741_969653096394758_4909968173023674270_n.jpg\",\"1716814469_10356030_969653033061431_1497362859589456965_n.jpg\",\"1716814469_10527346_969653116394756_8885773888339181809_n.jpg\",\"1716814469_10421367_969653156394752_4472737756169812858_n.jpg\"]', '2024-05-27 08:54:29', '2024-05-27 08:54:29'),
(145, '2014', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 1, 'Зона отдыха Пираллахи', 'Pirallahı istirahət zonası', 'Зона отдыха Пираллахи', 'Pirallahı istirahət zonası', '1716814705_10174949_969652123061522_4850688198360360654_n.jpg', '[\"1716814705_16411_969652129728188_270500789714913004_n.jpg\",\"1716814705_10454521_969652179728183_2696544753464093237_n.jpg\",\"1716814705_436934203_3638137776459352_3130158464606554771_n.jpg\"]', '2024-05-27 08:58:25', '2024-05-27 08:58:25'),
(147, '2014', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 1, 'Мардаканская полицейская академия', 'Mərdəkan Polis Akademiyası', 'Мардаканская полицейская академия', 'Mərdəkan Polis Akademiyası', '1716815092_10612659_969651586394909_3961324397205954117_n.jpg', '[\"1716815092_1503270_969651573061577_6369575889676001473_n.jpg\",\"1716815092_10174969_969651533061581_3900884890908262_n.jpg\",\"1716815092_553261_969651529728248_1959137263679127120_n.jpg\",\"1716815092_10801691_969651593061575_8241025650838465771_n.jpg\"]', '2024-05-27 09:04:52', '2024-05-27 09:04:52'),
(149, '2011', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 3, 'Здание партии «Новый Азербайджан» в Самухе', 'Samux \"Yeni Azərbaycan partiyası\" binası', 'Здание партии «Новый Азербайджан» в Самухе', 'Samux \"Yeni Azərbaycan partiyası\" binası', '1716815828_20130917_160456.jpg', '[\"1716815829_20130917_160533.jpg\",\"1716815831_20130917_161025.jpg\",\"1716815832_20130917_161025.jpg\"]', '2024-05-27 09:17:13', '2024-05-27 09:17:13'),
(150, '2015', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 1, 'Жилой комплекс Пиараллахи', 'Piarallahı yaşayış kompleksi', 'Жилой комплекс Пиараллахи', 'Piarallahı yaşayış kompleksi', '1716816586_Ashampoo_Snap_понедельник, 27 мая 2024 г._17h22m38s.png', '[\"1716816588_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h23m16s.png\",\"1716816590_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h23m56s.png\"]', '2024-05-27 09:29:51', '2024-05-27 09:29:51'),
(152, '2017', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 9, 'Татарский краеведческий музей', 'Tərtər diyarşünaslıq muzeyi', 'В двухэтажном здании есть два выставочных зала. В этих залах «Природа», «Археология», «Кавказская Албания», «Средневековье», «Медные изделия», «XIX век», «Азербайджанские национальные костюмы», «Традиционный дом», «Период Азербайджанской Народной Республики и Азербайджанской ССР». Созданы разделы «Период независимости Азербайджана» и «Карабахский конфликт». Здесь также были созданы фотобудки, отражающие визиты общенационального лидера Гейдара Алиева и президента Ильхама Алиева в Тертерский район.', 'İkimərtəbəli binada iki ekspozisiya zalı var. Bu zallarda “Təbiət”, “Arxeologiya”, “Qafqaz Albaniyası”, “Orta əsrlər”, “Misgərlik”, “XIX əsr”, “Azərbaycan milli geyimləri”, “Ənənəvi ev”, “Azərbaycan Xalq Cümhuriyyəti və Azərbaycan SSR dövrü”, “Azərbaycan müstəqillik dövrü”, “Qarabağ münaqişəsi” adlı bölmələr qurulub. Burada, həmçinin ümummilli lider Heydər Əliyevin və Prezident İlham Əliyevin Tərtər rayonuna səfərlərini əks etdirən fotoguşələr yaradılıb.', '1716817437_Tərtər_şəhər_Tarix-Diyarşünaslıq_Muzeyi.jpg', '[\"1716817438_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h38m42s.png\",\"1716817440_4tm0u88a2j_02.jpg\",\"1716817440_images.jpg\",\"1716817440_unnamed.jpg\"]', '2024-05-27 09:44:00', '2024-05-27 09:44:00'),
(153, '2009', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 2, 'Губинское кладбище геноцида', 'Quba soyqırım məzarlığı', 'Губинское кладбище геноцида', 'Quba soyqırım məzarlığı', '1716818351_Ashampoo_Snap_понедельник, 27 мая 2024 г._17h56m56s.png', '[\"1716818353_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h55m3s.png\",\"1716818354_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h55m38s.png\",\"1716818355_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h55m23s.png\",\"20240527160303_96339780_3070416383018899_8760896100224729088_n.jpg\"]', '2024-05-27 09:59:17', '2024-05-27 12:03:04'),
(155, '2008', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 1, 'Panorama Villa Lux hotel', 'Panorama Villa Lux hotel', 'Отель Panorama Villa Lux расположен в 50 метрах от пляжа Шихово, в 15 минутах езды от центра города Баку.  Из них открывается панорамный вид на Каспийское море. Виллы в отеле Panorama Lux имеют роскошные интерьеры, полностью оборудованную кухню и минимум 2 спальни. Во всех виллах есть балкон и гостиная зона.', 'Panorama Villa Lux Hotel Şıxovo çimərliyindən 50 metr, Bakı şəhərinin mərkəzindən avtomobillə 15 dəqiqəlik məsafədə yerləşir. Panorama Lux Hotel-dəki villalar dəbdəbəli interyerə, tam təchiz olunmuş mətbəxə və minimum 2 yataq otağına malikdir. Bütün villalarda balkon və yaşayış sahəsi var.', '1716819618_370267014.jpg', '[\"1716819618_370247730.jpg\",\"1716819618_370294578.jpg\",\"1716819618_370768249.jpg\",\"1716819618_370301583.jpg\"]', '2024-05-27 10:20:18', '2024-05-27 10:20:18'),
(156, '2012', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 10, 'Центр Г.Алиева в Бейлагане', 'Beyləqan şəhərində H.Əliyev mərkəzi', 'Строительство Центра Гейдара Алиева, построенного в городском парке Гейдара Алиева, началось в середине апреля 2012 года. Центр состоит из подиума и двух этажей. Общая площадь центра, включая кафедру, составляет 1296 квадратных метров.\r\nНа первом этаже центра расположены художественная студия, фотостудия, электронная библиотека, интернет-клуб, курс английского языка, класс ковроткачества, а на втором этаже – музейный зал, отражающий жизнь и деятельность Великого Вождя, виртуальный класс, малый конференц-зал и актовый зал.\r\nЦентр оснащен современной системой освещения и отопления-охлаждения.\r\nПри строительстве центра использовались гранитные камни и современные строительные материалы.', 'Şəhərin Heydər Əliyev adına parkında ucaldılan Heydər Əliyev mərkəzinin inşasına 2012-ci ilin aprel ayının ortalarında başlanılmışdır. Mərkəz kürsü hissədən və iki mərtəbədən ibarətdir. Kürsü hissəsi ilə birlikdə mərkəzin ümumi sahəsi 1296 kvadrat metrdir.\r\nMərkəzin I mərtəbəsində rəsm studiyası, foto-studiya, elektron kitabxana, internet klub, ingilis dili kursu, xalçaçılıq sinfi, II mərtəbəsində isə Ulu Öndərin həyat və fəaliyyətini əks etdirən muzey salonu, virtual sinif, kiçik konfrans zalı və akt zalı yerləşir.\r\nMərkəz müasir işıqlandırma və isitmə-soyutma sistemi ilə təchiz olunmuşdur.\r\nMərkəzin tikintisində qranit daşlardan və müasir tikinti materiallarından istifadə olunmuşdur.', '1716820158_Ashampoo_Snap_понедельник, 27 мая 2024 г._18h22m45s.png', '[\"1716820160_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._18h23m14s.png\",\"1716820162_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._18h23m29s.png\",\"1716820164_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._18h23m44s.png\",\"1716820165_Prezident_281012_07.jpg\"]', '2024-05-27 10:29:26', '2024-05-27 10:29:26'),
(158, '2010', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 9, 'Центр Гейдара Алиева в Карабахе (эскиз)', 'Qarabağda Heydər Əliyev mərkəzi (eskiz)', 'Центр Гейдара Алиева в Карабахе (эскиз)', 'Qarabağda Heydər Əliyev mərkəzi (eskiz)', '1716820452_Ashampoo_Snap_понедельник, 27 мая 2024 г._18h31m25s.png', '[\"1716820454_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._18h32m45s.png\"]', '2024-05-27 10:34:16', '2024-05-27 10:34:16'),
(159, '2008', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 10, 'Молодежный центр Бейлагана', 'Beyləqan gənclər mərkəzi', 'Молодежный центр Бейлагана', 'Beyləqan gənclər mərkəzi', '1716820585_ACCamera_4.jpg', '[\"1716820587_ACCamera.jpg\"]', '2024-05-27 10:36:28', '2024-05-27 10:36:28'),
(160, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 7, 'Мечеть в Джульфе (предложение)', 'Culfada yerləşən məscid (təklif)', 'Мечеть в Джульфе (предложение)', 'Culfada yerləşən məscid (təklif)', '1716822484_408910680_3603227189950411_3946943678112533916_n.jpg', '[\"1716822485_409099821_3603227179950412_6387902356256895477_n.jpg\"]', '2024-05-27 11:08:05', '2024-05-27 11:08:05'),
(161, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 3, 'Комплекс отдыха в Шемахе', 'Şamaxıda istirahət kompleksi', 'Комплекс отдыха в Шемахе', 'Şamaxıda istirahət kompleksi', '1716822803_419908264_3579084645697999_5919927187895875496_n.jpg', '[\"1716822803_419873935_3579084705697993_738265830789040218_n.jpg\"]', '2024-05-27 11:13:23', '2024-05-27 11:13:23'),
(162, '2007', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 2, 'Храм Бешбармага', 'Beşbarmaq ziyarətgahı', 'Храм Бешбармага', 'Beşbarmaq ziyarətgahı', '1716825962_96234920_3070393183021219_5836577744552460288_n.jpg', '[\"1716825963_96259394_3070393063021231_2521121995748278272_n.jpg\",\"1716825964_96379596_3070393346354536_1514509097540517888_n.jpg\",\"1716825964_96242124_3070393269687877_7876300770470002688_n.jpg\",\"1716825965_96368335_3070392969687907_5272689740208930816_n.jpg\"]', '2024-05-27 12:06:05', '2024-05-27 12:06:05'),
(163, '2010', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 1, 'Частный дом в Бузовне', 'Buzovnada şəxsi ev', 'Частный дом в Бузовне', 'Buzovnada şəxsi ev', '1716826365_29362_440391289354768_799647221_n.jpg', '[\"1716826365_481702_440390999354797_518539181_n.jpg\",\"1716826365_551392_440391332688097_1394891399_n.jpg\",\"1716826365_29375_440391379354759_682645290_n.jpg\",\"1716826365_601411_440390936021470_1308543982_n.jpg\"]', '2024-05-27 12:12:45', '2024-05-27 12:12:45'),
(164, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 1, 'Частный дом в Надаране', 'Nadaranda şəxsi ev', 'Частный дом в Надаране', 'Nadaranda şəxsi ev', '1716969171_408121395_3553777844895346_5459953440520832937_n.jpg', '[\"1716969171_408114494_3553777841562013_5415264595623098232_n.jpg\",\"1716969171_408079245_3553777878228676_4731770389390888941_n.jpg\",\"1716969171_408103805_3553777891562008_3200634884969500848_n.jpg\",\"1716969171_408139261_3553777854895345_1521856474738194617_n.jpg\"]', '2024-05-29 03:52:51', '2024-05-29 03:52:51'),
(165, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 5, 'Интерьер стадиона в Гяндже', 'Gəncədə stadionun interyeri', 'Интерьер стадиона в Гяндже', 'Gəncədə stadionun interyeri', '1716969514_446843780_3669043296702133_718569685226152443_n.jpg', '[\"1716969517_446873454_3669043433368786_5466389624779940563_n.jpg\",\"1716969518_446880494_3669043463368783_7329128216469879519_n.jpg\",\"1716969520_446951381_3669043406702122_4227400657150117539_n.jpg\"]', '2024-05-29 03:58:40', '2024-05-29 03:58:40'),
(166, '2021', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 5, 'Гянджа. Офисное здание на улице Джавадхана', 'Gəncə. Cavadxan küçəsində ofis binası', 'Гянджа. Офисное здание на улице Джавадхана', 'Gəncə. Cavadxan küçəsində ofis binası', '1716969803_446944051_3669045490035247_1134080106922215479_n.jpg', '[\"1716969804_446890475_3669045553368574_5718525868767545954_n.jpg\",\"1716969805_446969263_3669045506701912_8405666536048521195_n.jpg\",\"1716969806_446865386_3669045620035234_7455215363867117537_n.jpg\",\"1716969806_446881741_3669045476701915_549822435001565561_n.jpg\"]', '2024-05-29 04:03:27', '2024-05-29 04:03:27'),
(167, '1988', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 1, 'Комплекс на улице Физули', 'Füzuli küçəsində kompleks', 'Комплекс на улице Физули', 'Füzuli küçəsində kompleks', '1716970059_fizulu xiyabani.jpg', '[\"1716970060_img016.jpg\",\"1716970061_img032.jpg\",\"1716970062_img035.jpg\",\"1716970064_img036.jpg\"]', '2024-05-29 04:07:46', '2024-05-29 04:07:46'),
(168, '2015', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 2, 'Исполнительная власть Сиязани', 'Siyəzən İcra Hakimiyyəti', 'Исполнительная власть Сиязани', 'Siyəzən İcra Hakimiyyəti', '1716970480_446872499_3669051043368025_7280557757622186045_n.jpg', '[\"1716970480_446850647_3669051070034689_52805401139834165_n.jpg\",\"1716970481_446951710_3669051010034695_6229654466880268104_n.jpg\",\"1716970481_446872462_3669051023368027_3711489125265286295_n.jpg\"]', '2024-05-29 04:14:42', '2024-05-29 04:14:42'),
(169, '2019', 'https://maps.app.goo.gl/HMSjT4wuJ94YH6Bw6', 1, 'Парк в поселке Говсан', 'Hövsan qəsəbəsində park', 'Парк в поселке Говсан', 'Hövsan qəsəbəsində park', '1716972230_1 ashur.jpg', '[\"1716972231_3 ashur.jpg\",\"1716972233_2 ashur copy.jpg\"]', '2024-05-29 04:43:54', '2024-05-29 04:43:54'),
(170, '2022', 'https://maps.app.goo.gl/hCcXjroaJy9ARUSi8', 1, 'Кафе на Сумгаитском городском бульваре', 'Sumqayıt şəhər Bulvarında kafe', 'Кафе на Сумгаитском городском бульваре', 'Sumqayıt şəhər Bulvarında kafe', '1716972407_1p copy.jpg', '[]', '2024-05-29 04:46:48', '2024-05-29 04:46:48'),
(171, '2014', 'https://maps.app.goo.gl/eKRQuoJxMpGs1j6B8', 5, 'Гянджинский офисный центр', 'Gəncə ofis Mərkəzi', 'Гянджинский офисный центр', 'Gəncə ofis Mərkəzi', '1716973022_DSC_8684.JPG', '[\"1716973024_DSC_8692.JPG\"]', '2024-05-29 04:57:07', '2024-05-29 04:57:07'),
(172, '2020', 'https://maps.app.goo.gl/du4ipbduvEEnevcf7', 9, 'Памятник «Мать солдата Победы»  на Джыдирской равнине', 'Cıdır düzündə \"Müzəffər əsgər Ana\" abidəsi', 'Памятник «Мать солдата Победы» (концептуальный проект) на Джыдирской равнине', 'Cıdır düzündə \"Müzəffər əsgər Ana\" abidəsi(konsept layihə)', '1716974340_2 copy.jpg', '[\"1716974340_3tobloshka copy.jpg\",\"1716974341_4 copy.jpg\"]', '2024-05-29 05:19:03', '2024-05-29 07:07:09'),
(173, '2008', 'https://maps.app.goo.gl/EddcU8wkuxU4uSad9', 1, 'Мояк Молл (концептуальный проект)', 'Moyak Moll(konsept layihə)', 'Мояк Молл (концептуальный проект)', 'Moyak Moll(konsept layihə)', '1716975703_323190_401732393208048_181452240_o.jpg', '[]', '2024-05-29 05:41:44', '2024-05-29 05:41:44'),
(174, '2020', 'https://maps.app.goo.gl/E6ZwBcGmfjfxBaF38', 9, 'Концептуальный проект', 'Məscid (Konsept layihə)', 'Концептуальный проект', 'Məscid (Konsept layihə)', '1716981046_1s copy.jpg', '[\"1716981047_2s copy.jpg\",\"1716981049_3s copy.jpg\"]', '2024-05-29 07:10:51', '2024-05-29 07:10:51'),
(175, '2019', 'https://maps.app.goo.gl/E6ZwBcGmfjfxBaF38', 9, 'Концептуальный проект', 'Konsept layihə', 'Концептуальный проект', 'Konsept layihə', '1716981183_22222222222222222222222222222222222.jpg', '[\"1716981184_abide.jpg\",\"1716981189_dssdffdsfsdfsdfsd.jpg\",\"1716981194_vccvvccvcv.jpg\",\"1716981197_VETERANLAR EV\\u0130.jpg\"]', '2024-05-29 07:13:20', '2024-05-29 07:13:20'),
(176, '2020', 'https://maps.app.goo.gl/nPxMZJkiwhLjP69WA', 9, '5-этажный жилой дом в городе Нафталан', 'Naftalan şəhərində 5 mərtəbəli yaşayış binası', '5-этажный жилой дом в городе Нафталан', 'Naftalan şəhərində 5 mərtəbəli yaşayış binası', '1716981666_10000 copy.jpg', '[\"1716981667_22222 copy.jpg\",\"1716981669_1111 copy.jpg\"]', '2024-05-29 07:21:09', '2024-05-29 07:21:09'),
(177, '2020', 'https://maps.app.goo.gl/nPxMZJkiwhLjP69WA', 9, 'Здание санатория Нафталан', 'Naftalan sanatoriya binası', 'Здание санатория Нафталан', 'Naftalan sanatoriya binası', '1716981921_3 copy.jpg', '[\"1716981922_4 copy.jpg\",\"1716981923_6 copy.jpg\",\"1716981924_7 copy.jpg\",\"1716981925_5.jpg\"]', '2024-05-29 07:25:29', '2024-05-29 07:25:29'),
(178, '2011', 'https://maps.app.goo.gl/xRVftBAVcjZRSuF96', 5, 'Город Гянджа, Центр Гейдара Алиева (эскизный проект)', 'Gəncə şəhəri, Heydər Əliyev mərkəzi', 'Город Гянджа, Центр Гейдара Алиева (эскизный проект)', 'Gəncə şəhəri, Heydər Əliyev mərkəzi(eskiz layihə)', '1717748319_6 копия.jpg', '[\"1717748320_a1 (2) \\u043a\\u043e\\u043f\\u0438\\u044f.jpg\",\"1717748320_1111111111.jpg\"]', '2024-06-07 04:18:41', '2024-06-07 04:18:41'),
(179, '2012', 'https://maps.app.goo.gl/9psJXRWqew5YfKJm8', 5, 'Гянджинская филармония', 'Gəncə dövlət filarmoniyası', 'Гянджинская филармония', 'Gəncə dövlət filarmoniyası', '1717749178_fasad.jpg', '[\"1717749179_aksa2.jpg\",\"1717749180_f1.jpg\",\"1717749180_f5.jpg\"]', '2024-06-07 04:33:01', '2024-06-07 04:33:01'),
(180, '2015', 'https://maps.app.goo.gl/N18G4iZt8YBYQzhc6', 5, 'Дом связи в Гяндже', 'Gəncə şəhərindəı Rabitə evi', 'Дом связи в Гяндже (Эскизный проект)', 'Gəncə şəhərindəı Rabitə evi', '1717750757_1.jpg', '[\"1717750757_2.jpg\",\"1717750757_3.jpg\",\"1717750757_4.jpg\",\"1717750757_91.jpg\"]', '2024-06-07 04:59:17', '2024-06-07 04:59:17'),
(181, '2015', 'https://maps.app.goo.gl/mRnUgrA7rABygbNR6', 5, 'Торговый центр в городе Гянджа', 'Gəncə şəhərindəı ticarət mərkəsi', 'Торговый центр в городе Гянджа (эскизный проект)', 'Gəncə şəhərindəı ticarət mərkəsi ( eskiz layihə)', '1717751525_94.jpg', '[\"1717751525_94.jpg\",\"1717751525_1.jpg\",\"1717751525_6.jpg\",\"1717751525_8.jpg\"]', '2024-06-07 05:12:05', '2024-06-07 05:12:05'),
(182, '2016', 'https://maps.app.goo.gl/MthMM115FSguZoU47', 5, 'Гянджинский государственный драматический театр 1-й вариант', 'Gəncə Dövlət Dram Teatrı 1-ci variant', 'Гянджинский государственный драматический театр 1-й вариант', 'Gəncə Dövlət Dram Teatrı 1-ci variant', '1717751906_44444444.jpg', '[\"1717751908_33333.jpg\",\"1717751910_5555 (1).jpg\",\"1717751913_4444.jpg\",\"1717751915_zzzzzzz.jpg\"]', '2024-06-07 05:18:37', '2024-06-07 05:18:37'),
(183, '2010', 'https://maps.app.goo.gl/9fyr6yZiQeGqwhYz5', 5, 'Дом Чайа  Товуз', 'Tovuz Çay evi', 'Дом Чайа  Товуз', 'Tovuz Çay evi', '1717752659_11.jpg', '[\"1717752660_22.jpg\",\"1717752661_33.jpg\"]', '2024-06-07 05:31:02', '2024-06-07 05:31:02'),
(184, '2023', 'https://maps.app.goo.gl/nnLBW2QDqbe3vGmDA', 5, 'Tовуз. Торговый дом', 'Tovuz. Ticarət evi', 'Tовуз. Торговый дом', 'TovTovuz. Ticarət evi uz. Ticarət evi', '1717753132_1.jpg', '[\"1717753132_2.jpg\",\"1717753133_3.jpg\",\"1717753134_4.jpg\",\"1717753135_5.jpg\"]', '2024-06-07 05:38:56', '2024-06-07 05:38:56'),
(185, '2024', 'https://maps.app.goo.gl/BWx5eST6zap6Ua8YA', 10, 'Парк имени Исмета Гаибова, город Ширван', 'Şirvan şəhər İsmət Qaibov adına park', 'Парк имени Исмета Гаибова, город Ширван', 'Şirvan şəhər İsmət Qaibov adına park', '1718793669_1a  copy.jpg', '[\"1718793671_2a copy.jpg\",\"1718793673_4a copy.jpg\",\"1718793675_5a   copy.jpg\",\"1718793678_8a  copy.jpg\"]', '2024-06-19 06:41:20', '2024-06-19 06:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '0001_01_01_000000_create_users_table', 1),
(24, '0001_01_01_000001_create_cache_table', 1),
(25, '0001_01_01_000002_create_jobs_table', 1),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2024_04_04_072326_create_projects_table', 1),
(28, '2024_04_24_171318_create_services_table', 1),
(29, '2024_04_26_074508_create_sliders_table', 1),
(30, '2024_05_03_103639_create_main_projects_table', 1),
(31, '2024_05_05_162035_create_contacts_table', 1),
(32, '2024_05_08_082403_create_future_projects_table', 1),
(33, '2024_05_10_085413_create_map_projects_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `year` year NOT NULL,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_az` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_az` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `year`, `location`, `name_ru`, `name_az`, `desc_ru`, `desc_az`, `main_image`, `images`, `created_at`, `updated_at`) VALUES
(603, '2010', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Исполнительная власть Сиязанского района', 'Siyəzən rayon İcra Hakimiyyəti', 'Проект, оставшийся эскизом, состоит из основного и вспомогательного частей. Основная входная часть имеет четыре этажа и является доминантой.', 'Eskiz olaraq qalan layihə əsas və köməkçi korpuslardan ibarətdir. Əsas giriş hissə dörd mərtəbəli həll edilərək dominant olaraq həll edilmişdir', '20240527060519_71280584_2380402328899576_885554683714732032_n.jpg', '[\"20240527060519_70034234_2380402268899582_1081770938942357504_n.jpg\",\"20240527060520_70742388_2380402158899593_2463725328409821184_n.jpg\",\"20240527072813_71767142_2380402312232911_3319263967456526336_n.jpg\",\"20240527072813_70812975_2380402242232918_1336388669107339264_n.jpg\"]', '2024-05-23 08:39:59', '2024-06-15 04:13:18'),
(604, '2018', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Жилой комплекс (эскиз)', 'Yaşayış Kompleksinin (eskiz)', 'Жилой комплекс (эскиз)', 'Yaşayış Kompleksinin (eskiz)', '1716802239_60324099_2288235181449625_7769257304846761984_n.jpg', '[\"1716802239_60334197_2288235244782952_7033277928116846592_n.jpg\",\"1716802239_60344571_2288235174782959_3061517804587974656_n.jpg\",\"1716802239_60344571_2288235174782959_3061517804587974656_n.jpg\"]', '2024-05-27 05:30:40', '2024-05-27 05:30:40'),
(605, '2016', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Здание исполнительной власти Мингечевира', 'Mingəçevir İcra Hakimiyyəti binası', 'Здание исполнительной власти Мингечевира', 'Mingəçevir İcra Hakimiyyəti binası', '1716802959_56466273_2260409090898901_7796926858557128704_n.jpg', '[\"1716802959_56380215_2260409040898906_4923236649657171968_n.jpg\",\"1716802959_56275958_2260409050898905_3792237456993026048_n.jpg\",\"1716802959_56355271_2260409097565567_5235270937154158592_n.jpg\",\"1716802959_56549491_2260409034232240_5656212207864643584_n.jpg\"]', '2024-05-27 05:42:40', '2024-05-27 05:42:40'),
(606, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Роял Парк Л-16А', 'Royal Park L-16A', 'Подростковая комната', 'Yeniyetmə otağı', '1716803151_420289852_3621751808097949_606616767997478569_n.jpg', '[\"1716803151_438900818_3646935135579616_459274118760353727_n.jpg\",\"1716803151_438900936_3646935152246281_2721631529456386644_n.jpg\",\"1716803151_439146768_3646935092246287_1168885920436102787_n.jpg\"]', '2024-05-27 05:45:51', '2024-05-27 05:48:30'),
(607, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Роял Парк Л-16А', 'Royal Park L-16A', 'Подростковая комната', 'Yeniyetmə otağı', '1716803517_438900957_3644576249148838_3238991770117526476_n.jpg', '[\"1716803517_437135566_3644576225815507_5436569109308588094_n.jpg\",\"1716803517_438162330_3644576229148840_175353299263012486_n.jpg\",\"1716803517_438128441_3644575949148868_2046039202463676171_n.jpg\",\"1716803517_438078551_3644576065815523_6641080696275306441_n.jpg\"]', '2024-05-27 05:51:57', '2024-05-27 05:51:57'),
(608, '2018', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Проект театра Трабзона', 'Trabzon Teatr layihəsi', 'Хотя этот проект остался эскизом, основная идея заключалась в сохранении старых элементов фасада и деталей театра.', 'Bu layihə eskiz olaraq qalsada, əsas fikir teatrın köhnə fasad element və  detallarını saxlamaq idi.', '1716804238_43177452_2152794774993667_7375082437828673536_n.jpg', '[\"1716804239_43021484_2152794804993664_4446527878602948608_n.jpg\",\"1716804239_43069847_2152794904993654_6989230577480105984_n.jpg\",\"1716804240_43153022_2152794921660319_6299888944947396608_n.jpg\",\"1716804240_43158686_2152794731660338_552860117465300992_n.jpg\"]', '2024-05-27 06:04:01', '2024-05-27 06:51:29'),
(610, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Роял Парк Л-16А', 'Royal Park L-16A', 'Хол', 'Hol', '1716805887_421081929_3632054510401012_8690966163880818963_n.jpg', '[\"1716805887_420391521_3632054557067674_4896042346200816272_n.jpg\",\"1716805887_420198875_3632054523734344_7214765117498646567_n.jpg\"]', '2024-05-27 06:31:27', '2024-05-27 06:31:27'),
(611, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Роял Парк Л-16А', 'Royal Park L-16A', 'Гостиная - кухня', 'Qonaq otağı - mətbəz', '1716806009_420271977_3630743633865433_1702410628640432363_n.jpg', '[\"1716806009_420261710_3630743707198759_7496927742908705550_n.jpg\",\"1716806009_420309429_3630743690532094_2320866556726788584_n.jpg\",\"1716806009_420412633_3632051933734603_2698811665802322781_n.jpg\",\"1716806010_434634953_3632051930401270_5503658169534450789_n.jpg\"]', '2024-05-27 06:33:30', '2024-05-27 06:33:30'),
(612, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Клиника Медистайл', 'Medistyle klinika', 'Кабинет врача', 'Həkim otağı', '1716806241_434383514_3624923727780757_4618475848704077051_n.jpg', '[\"1716806242_434371660_3624923707780759_6085389042566437747_n.jpg\",\"1716806242_434157240_3624923841114079_5366042177601293869_n.jpg\",\"1716806242_434393428_3624923801114083_780779766983727501_n.jpg\"]', '2024-05-27 06:37:22', '2024-05-27 06:37:22'),
(613, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Клиника Медистайл', 'Medistyle klinika', 'Кабинет главного врача', 'Baş həkim otağı', '1716806340_419490360_3621751848097945_7822357849997600784_n.jpg', '[\"1716806340_419303302_3621751804764616_5210039904309307792_n.jpg\",\"1716806340_420261878_3621751834764613_4937700576198102096_n.jpg\",\"1716806340_434157240_3624923841114079_5366042177601293869_n.jpg\"]', '2024-05-27 06:39:00', '2024-05-27 06:39:00'),
(614, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Новхани (вилла)', 'Novxanı (villa)', 'Детская комната', 'Uşaq otağı', '1716806482_419911436_3579147125691751_8054742999932274372_n.jpg', '[\"1716806482_419746316_3579147055691758_123509815328771626_n.jpg\",\"1716806482_419918255_3579147119025085_8517619439214625105_n.jpg\",\"1716806483_420174997_3579147045691759_8141827231625764878_n.jpg\",\"1716806483_419986474_3579147035691760_6719352107985759808_n.jpg\"]', '2024-05-27 06:41:23', '2024-05-27 06:41:23'),
(615, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Новхани (вилла)', 'Novxanı (villa)', 'Спальня', 'Yataq otağı', '1716806625_417464130_3572585739681223_7614059309735188082_n.jpg', '[\"1716806625_417372712_3572585699681227_5319627659813527321_n.jpg\",\"1716806625_417447085_3572585733014557_4218076601880119604_n.jpg\",\"1716806625_417475067_3572585696347894_3577391940061042032_n.jpg\"]', '2024-05-27 06:43:45', '2024-05-27 06:43:45'),
(616, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Новхани (вилла)', 'Novxanı (villa)', 'Рабочая комната', 'İş otağı', '1716806923_417233657_3573223906284073_294392000381055653_n.jpg', '[\"1716806923_417703529_3573223862950744_5957620005727217204_n.jpg\",\"1716806924_417879921_3573223952950735_2740308901145495318_n.jpg\",\"1716806924_417880777_3573224006284063_9145471574202469435_n.jpg\"]', '2024-05-27 06:48:44', '2024-05-27 06:48:44'),
(617, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'IMA project', 'IMA project', 'Офис', 'Ofis', '1716807593_300083132_3211197989153335_4841842144828755503_n.jpg', '[\"1716807594_300110903_3211198012486666_1392755048499735970_n.jpg\",\"1716807594_300248317_3211197992486668_5573577718947895604_n.jpg\",\"1716807595_300404273_3211197985820002_5190029023997518262_n.jpg\"]', '2024-05-27 06:59:56', '2024-05-27 06:59:56'),
(618, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'IMA project', 'IMA project', 'Офисная столовая', 'Ofisin yeməkxanası', '1716807726_299206076_3207632419509892_2160236264683587870_n.jpg', '[\"1716807726_299301707_3207632629509871_9171527631882189439_n.jpg\",\"1716807726_299167847_3207632776176523_3500854957736690947_n.jpg\",\"1716807727_299314235_3207632669509867_7432126440040672421_n.jpg\",\"1716807727_299307663_3207632672843200_6534178860303269762_n.jpg\"]', '2024-05-27 07:02:07', '2024-05-27 07:02:07'),
(619, '2022', 'https://maps.app.goo.gl/oGfmP6SCwnh53MQBA', 'İMA project', 'İMA project', 'Офис', 'Ofis', '1716807881_298523926_3205002179772916_375874365771078725_n.jpg', '[\"1716807881_298523681_3205002359772898_3832264735740920676_n.jpg\",\"1716807882_298702691_3205002376439563_6480922382061395590_n.jpg\",\"1716807882_298769711_3205002219772912_3706570139405716519_n.jpg\",\"1716807883_298504768_3205002449772889_5600562616510580508_n.jpg\"]', '2024-05-27 07:04:43', '2024-05-27 07:04:43'),
(620, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'IMA project', 'IMA project', 'Рабочая комната', 'İş otağı', '1716808097_298552766_3205001819772952_3250277431104131849_n.jpg', '[\"1716808098_298763555_3205001823106285_468199770590251849_n.jpg\",\"1716808098_298804556_3205001826439618_1494626719376242966_n.jpg\"]', '2024-05-27 07:08:19', '2024-05-27 07:08:19'),
(621, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'İMA project', 'İMA project', 'Конференц-зал', 'Konfrans otağı', '1716808252_298538059_3205001243106343_4543609329331193845_n.jpg', '[\"1716808252_298721766_3205001239773010_6575749821585384758_n.jpg\",\"1716808253_298825203_3205001473106320_2755155076968923435_n.jpg\",\"1716808254_298618053_3205001479772986_882933659869323215_n (1).jpg\"]', '2024-05-27 07:10:54', '2024-05-27 07:10:54'),
(622, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Роял Парк Л-9А', 'Royal Park L-9A', 'Вилла 140 кв.м.', '140 kv.m villa', '1716808448_298286223_3204450236494777_4575687811091891000_n.jpg', '[\"1716808448_298660542_3204450249828109_1171325551040751240_n.jpg\",\"1716808449_298561155_3204450176494783_7321724111234620678_n.jpg\",\"1716808449_298706123_3204450179828116_5112630504754250063_n.jpg\",\"1716808450_298692384_3204450223161445_7977563440741745136_n.jpg\"]', '2024-05-27 07:14:10', '2024-05-27 07:14:10'),
(623, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'İMA project', 'İMA project', 'Столовая', 'Yeməkxana', '1716808545_294012071_3186716771601457_3002694882723842027_n.jpg', '[\"1716808545_293135390_3186716898268111_8119324642497285472_n.jpg\",\"1716808545_293242512_3186716928268108_1875996957537273935_n.jpg\",\"1716808545_293796825_3186716938268107_7025851271048142238_n.jpg\",\"1716808546_293982921_3186717038268097_8677457771215804035_n.jpg\"]', '2024-05-27 07:15:46', '2024-05-27 07:15:46'),
(624, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Столовая', 'Royal Park', 'Спальня', 'Yataq otağı', '1716808628_292542839_3180248472248287_7150217704119248974_n.jpg', '[\"1716808628_292546236_3180248468914954_417808420526573013_n.jpg\",\"1716808629_292827684_3180248465581621_5777239274550034699_n.jpg\"]', '2024-05-27 07:17:09', '2024-05-27 07:17:09'),
(625, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Спальня', 'Royal Park', 'Спальня', 'Yataq otağı', '1716808788_292523408_3180245252248609_7210116404396015490_n.jpg', '[\"1716808788_292581603_3180245268915274_3233240291142280434_n.jpg\",\"1716808788_292560830_3180243932248741_5413382485930115268_n.jpg\",\"1716808789_292527094_3180243922248742_6218376544295952760_n.jpg\",\"1716808790_292778240_3180243918915409_2474642390522037947_n.jpg\"]', '2024-05-27 07:19:51', '2024-05-27 07:19:51'),
(626, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Royal Park', 'Royal Park', 'Спальня', 'Yataq otağı', '1716808915_292888094_3180243725582095_6354440106018937507_n.jpg', '[\"1716808916_292442040_3180243695582098_8712033462449580170_n.jpg\",\"1716808917_292489365_3180243838915417_4425558920575931496_n.jpg\",\"1716808918_292558161_3180243888915412_2262282124519998130_n.jpg\",\"1716808918_292788793_3180243852248749_868301070390570360_n.jpg\"]', '2024-05-27 07:21:59', '2024-05-27 07:21:59'),
(627, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Royal Park', 'Royal Park', 'Гостиная, холл', 'Qonaq otağı, hol', '1716809037_292550840_3180240818915719_2978474465669688025_n.jpg', '[\"1716809037_293022408_3180241205582347_5370187161713008806_n.jpg\",\"1716809038_292534965_3180239982249136_3162325664295546753_n.jpg\",\"1716809038_292550444_3180239838915817_7483118737661305162_n.jpg\",\"1716809038_292643613_3180241045582363_4306248218799408059_n.jpg\"]', '2024-05-27 07:23:59', '2024-05-27 07:23:59'),
(628, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Royal Park', 'Royal Park', 'Спальня', 'Yataq otağı', '1716809106_292026540_3177491159190685_8085638074247603585_n.jpg', '[\"1716809106_292096705_3177491105857357_103940757111257470_n.jpg\",\"1716809106_292159872_3177491122524022_42566918756620752_n.jpg\",\"1716809107_292281407_3177491142524020_9083169110962765278_n.jpg\"]', '2024-05-27 07:25:07', '2024-05-27 07:25:07'),
(629, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Royal Park', 'Royal Park', 'Детская комната', 'Uşaq otağı', '1716809392_291979572_3177487869191014_8720814276211034658_n.jpg', '[\"1716809392_292000753_3177487855857682_3327639413082927122_n.jpg\",\"1716809393_292055923_3177487849191016_8618301801592112050_n.jpg\",\"1716809394_292100200_3177487852524349_5891703403421976681_n.jpg\"]', '2024-05-27 07:29:54', '2024-05-27 07:29:54'),
(630, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Детская комната', 'Royal Park', 'Гостевая комната', 'Qonaq otağı', '1716809528_292022880_3177487292524405_5887128802971672338_n.jpg', '[\"1716809529_292005644_3177487299191071_94465769498932118_n.jpg\",\"1716809530_292128208_3177485705857897_6484882436462559067_n.jpg\",\"1716809530_291968932_3177485682524566_8772173803712215173_n.jpg\",\"1716809531_292081773_3177487252524409_3377200751989606607_n.jpg\"]', '2024-05-27 07:32:11', '2024-05-27 07:32:11'),
(631, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Masdar', 'Masdar', 'Oфис', 'Ofis', '1716809742_277748626_3108894069383728_8433295929037971613_n.jpg', '[\"1716809742_277765363_3108894042717064_4554533116783815705_n.jpg\",\"1716809742_277776829_3108903996049402_4450134476436417992_n.jpg\",\"1716809742_277997246_3108893686050433_873363609320081856_n.jpg\",\"1716809742_277753902_3108893952717073_8493464629476050159_n.jpg\"]', '2024-05-27 07:35:42', '2024-05-27 07:35:42'),
(632, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Royal Park', 'Royal Park', 'Частный дом', 'Şəxsi ev', '1716809839_277528237_3104143866525415_2112584313117128591_n.jpg', '[\"1716809839_277105339_3104143926525409_4911443912510128943_n.jpg\",\"1716809839_277524248_3104143849858750_7280214453283547153_n.jpg\",\"1716809839_277526174_3104143846525417_88506132615519241_n.jpg\"]', '2024-05-27 07:37:19', '2024-05-27 07:37:19'),
(633, '2009', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Гянджинский жилой комплекс', 'Gəncə yaşayış kompleksi', 'Жилой комплекс', 'Yaşayış kompleksi', '1716810037_262220175_3019134311693038_4889189677194388650_n.jpg', '[\"1716810038_262240857_3019134271693042_3010143179137342402_n.jpg\",\"1716810038_262348568_3019134238359712_8364144353374874940_n.jpg\",\"1716810039_262654153_3019134248359711_6091566061342927046_n.jpg\"]', '2024-05-27 07:40:39', '2024-05-27 07:40:39'),
(634, '2021', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Ширванский городской парк имени М. Физули', 'Şirvan şəhəri M.Fizuli adına park', 'Ширванский городской парк имени М. Физули', 'Şirvan şəhəri M.Fizuli adına park', '1716810280_258852928_3014682705471532_4189938549822793677_n.jpg', '[\"1716810280_259595751_3014683398804796_3592823989231240370_n.jpg\",\"1716810280_258854993_3014682805471522_1159837802622779724_n.jpg\",\"1716810280_258866180_3014682892138180_914500738268094067_n.jpg\",\"1716810280_259323805_3014682828804853_4384769153412713204_n.jpg\"]', '2024-05-27 07:44:40', '2024-05-27 07:44:40'),
(635, '2015', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Завода глубинных оснований (эскиз)', 'Dərin özül zavodu (eskiz)', 'Реконструкция фасадов и интерьера завода глубинных оснований', 'Dərin özül zavodunun fasad və interyerinin yenidən qurulması', '1716813722_11164043_886288571431702_4318960844564967712_o.jpg', '[\"1716813723_11146347_886288478098378_299461945608469520_o.jpg\",\"1716813723_11148831_886288468098379_2722329214509542108_o.jpg\",\"1716813723_11080620_886288461431713_954926944202060901_o.jpg\",\"1716813724_10987647_886288111431748_5300828300497045078_o.jpg\"]', '2024-05-27 08:42:04', '2024-05-27 08:42:04'),
(636, '2012', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Сураханы Атешгях', 'Suraxanı Atəşgahı', 'В многофункциональном историко-архитектурном комплексе сохранена древность. В комплексе, являющемся символом зороастризма, в его конструкции нашли отражение вода, огонь, земля и воздух.', 'Çoxfunksiyalı tarix memarlıq kopleksində qədimlik saxlanılmışdır. Zərdüşlük sinvolu olan kopleksdə su, alov, torpaq və hava öz layihədə əksini tapır.', '1716814185_248835_440385876021976_556108857_n.jpg', '[\"1716814185_215937_440385952688635_16175490_n.jpg\",\"1716814185_59089_440385909355306_1609415697_n.jpg\",\"1716814185_483399_440385926021971_1453773552_n.jpg\",\"1716814185_602656_440386002688630_26000017_n.jpg\"]', '2024-05-27 08:49:45', '2024-05-27 08:49:45'),
(637, '2014', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Жилой комплекс Пираллахи', 'Pirallahı yaşayış kompleksi', 'Жилой комплекс Пираллахи', 'Pirallahı yaşayış kompleksi', '1716814480_10384021_969653269728074_6662611374104509175_n.jpg', '[\"1716814480_64741_969653096394758_4909968173023674270_n.jpg\",\"1716814480_10356030_969653033061431_1497362859589456965_n.jpg\",\"1716814480_10382146_969653289728072_3309255565784752272_n.jpg\",\"1716814480_10421367_969653156394752_4472737756169812858_n.jpg\"]', '2024-05-27 08:54:40', '2024-05-27 08:54:40'),
(638, '2014', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Зона отдыха Пираллахи', 'Pirallahı istirahət zonası', 'Зона отдыха Пираллахи', 'Pirallahı istirahət zonası', '1716814705_10174949_969652123061522_4850688198360360654_n.jpg', '[\"1716814705_16411_969652129728188_270500789714913004_n.jpg\",\"1716814705_10454521_969652179728183_2696544753464093237_n.jpg\",\"1716814705_436934203_3638137776459352_3130158464606554771_n.jpg\"]', '2024-05-27 08:58:26', '2024-05-27 08:58:26'),
(639, '2014', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Мардаканская полицейская академия', 'Mərdəkan Polis Akademiyası', 'Мардаканская полицейская академия', 'Mərdəkan Polis Akademiyası', '1716815291_436935815_3638137779792685_2277050457871772844_n.jpg', '[\"1716815291_10174969_969651533061581_3900884890908262_n.jpg\",\"1716815291_1503270_969651573061577_6369575889676001473_n.jpg\",\"1716815291_10801691_969651593061575_8241025650838465771_n.jpg\",\"1716815291_553261_969651529728248_1959137263679127120_n.jpg\"]', '2024-05-27 09:08:11', '2024-05-27 09:08:11'),
(641, '2011', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Здание партии «Новый Азербайджан» в Самухе', 'Samux \"Yeni Azərbaycan partiyası\" binası', 'Здание партии «Новый Азербайджан» в Самухе', 'Samux \"Yeni Azərbaycan partiyası\" binası', '1716815838_20130917_160456.jpg', '[\"1716815839_20130917_160533.jpg\",\"1716815840_20130917_161025.jpg\",\"1716815841_20130917_161106.jpg\"]', '2024-05-27 09:17:23', '2024-05-27 09:17:23'),
(642, '2009', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Таллиннский парк', 'Tallin park', 'Таллиннский парк', 'Tallin park', '1716815999_10.jpg', '[\"1716816000_11.jpg\",\"1716816001_12.jpg\",\"1716816002_13.jpg\",\"1716816004_9.jpg\"]', '2024-05-27 09:20:04', '2024-05-27 09:20:04'),
(643, '2013', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Гянджинский жилой комплекс', 'Gəncə yaşayış mossivi', 'Гянджинский жилой комплекс', 'Gəncə yaşayış mossivi', '1716816114_gy2.jpg', '[\"1716816114_1B.jpg\"]', '2024-05-27 09:21:55', '2024-05-27 09:21:55'),
(644, '2015', 'Piarallahı yaşayış kompleksi', 'Жилой комплекс Пиараллахи', 'Piarallahı yaşayış kompleksi', 'Жилой комплекс Пиараллахи', 'Piarallahı yaşayış kompleksi', '1716816625_Ashampoo_Snap_понедельник, 27 мая 2024 г._17h22m38s.png', '[\"1716816627_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h23m16s.png\",\"1716816631_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h23m56s.png\",\"1716816633_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h24m26s.png\",\"1716816637_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h26m25s.png\"]', '2024-05-27 09:30:39', '2024-05-27 09:30:39'),
(645, '2005', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Ясамальская исполнительная власть', 'Yasamal icra Hakimiyyəti', 'Ясамальская исполнительная власть', 'Yasamal icra Hakimiyyəti', '1716816906_P1010246.JPG', '[\"1716816906_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h32m1s.png\",\"1716816907_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h32m17s.png\"]', '2024-05-27 09:35:07', '2024-05-27 09:35:07'),
(646, '2011', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Жилой комплекс в Тбилиси (эскиз)', 'Tiflisdə yaşayış kompleksi (eskiz)', 'Жилой комплекс в Тбилиси (эскиз)', 'Tiflisdə yaşayış kompleksi (eskiz)', '1716817026_1.jpg', '[\"1716817027_2.jpg\",\"1716817029_6.jpg\"]', '2024-05-27 09:37:10', '2024-05-27 09:37:10'),
(647, '2017', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Татарский краеведческий музей', 'Tərtər diyarşünaslıq muzeyi', 'В двухэтажном здании есть два выставочных зала. В этих залах «Природа», «Археология», «Кавказская Албания», «Средневековье», «Медные изделия», «XIX век», «Азербайджанские национальные костюмы», «Традиционный дом», «Период Азербайджанской Народной Республики и Азербайджанской ССР». Созданы разделы «Период независимости Азербайджана» и «Карабахский конфликт». Здесь также были созданы фотобудки, отражающие визиты общенационального лидера Гейдара Алиева и президента Ильхама Алиева в Тертерский район.', 'İkimərtəbəli binada iki ekspozisiya zalı var. Bu zallarda “Təbiət”, “Arxeologiya”, “Qafqaz Albaniyası”, “Orta əsrlər”, “Misgərlik”, “XIX əsr”, “Azərbaycan milli geyimləri”, “Ənənəvi ev”, “Azərbaycan Xalq Cümhuriyyəti və Azərbaycan SSR dövrü”, “Azərbaycan müstəqillik dövrü”, “Qarabağ münaqişəsi” adlı bölmələr qurulub. Burada, həmçinin ümummilli lider Heydər Əliyevin və Prezident İlham Əliyevin Tərtər rayonuna səfərlərini əks etdirən fotoguşələr yaradılıb.', '1716817449_Tərtər_şəhər_Tarix-Diyarşünaslıq_Muzeyi.jpg', '[\"1716817449_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h38m42s.png\",\"1716817450_4tm0u88a2j_02.jpg\",\"1716817450_images.jpg\",\"1716817450_unnamed.jpg\"]', '2024-05-27 09:44:10', '2024-05-27 09:44:10'),
(648, '2016', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Сабирабад \"Центр Гейдара Алиева\"', 'Sabirabad \"Heydər Əliyev mərkəzi\"', 'Здание Центра Гейдара Алиева своей самобытностью увеличивает красоту города Сабирабада. Создание этого Центра, прежде всего, свидетельствует об уважении жителей Сабирабада к памяти Национального Лидера. Было отмечено, что строительство Центра было начато в ноябре прошлого года. Общая площадь здания составляет 5,2 тысячи квадратных метров. На первом этаже трехэтажного здания расположены интернет-кафе и танцевальная студия, конференц-зал и 3D-кинотеатр, оснащенный современной акустической системой. На втором этаже установлен бюст общенационального лидера Гейдара Алиева, а также установлены стенды, отражающие мысли Великого лидера о Сабирабаде и жителях района. Большой интерес в выставочном зале представляют фотографии и другие документы, связанные с образованием и деятельностью Великого Вождя. В выставочном зале здания площадью 1094 квадратных метра выставлены фотографии гения, сделанные в разные периоды. В разных разделах зала размещены фотографии Национального Лидера в детстве, юности, студенчестве, в советский период и в годы независимости, когда он руководил страной. В разделе «Гейдар Алиев и Сабирабад. 1970-1998 годы» размещены фотографии, отражающие визиты гениального лидера в этот регион. Эти фотографии еще раз доказывают, что общенациональный лидер во все периоды своего руководства в Азербайджане уделял особое внимание развитию Сабирабада. Ярким примером этого является тот факт, что Великий Вождь посетил Сабирабу 15 раз. Участие общенационального лидера Гейдара Алиева в открытии различных объектов в регионе, встречи с представителями общественности, интеллигенции и трудящимися оставили глубокое впечатление у жителей Сабирабада.', 'Heydər Əliyev Mərkəzinin binası orijinallığı ilə Sabirabad şəhərinin gözəlliyini daha da artırır. Bu Mərkəzin yaradılması ilk növbədə sabirabadlıların Ümummilli Liderin xatirəsinə ehtiramını nümayiş etdirir.Diqqətə çatdırıldı ki, Mərkəzin inşasına ötən ilin noyabrında başlanılmışdır. Binanın ümumi sahəsi 5,2 min kvadratmetrdir. Üçmərtəbəli binanın birinci mərtəbəsində internet kafe və rəqs studiyası, konfrans zalı və müasir akustika sistemi ilə təchiz edilmiş 3D kinozalı fəaliyyət göstərir. İkinci mərtəbədə ümummilli lider Heydər Əliyevin büstü qoyulmuş, Ulu Öndərin Sabirabad və rayon sakinləri haqqında fikirlərinin əks olunduğu stendlər quraşdırılmışdır. Buradakı ekspozisiya zalında fotolar və Ulu Öndərin təhsili, fəaliyyəti ilə bağlı digər sənədlər böyük maraq doğurur. Binanın 1094 kvadratmetr sahəsi olan ekspozisiya zalında dahi şəxsiyyətin müxtəlif dövrlərdə çəkilmiş fotoları sərgilənir. Zalda müxtəlif bölmələrdə Ümummilli Liderin uşaqlıq, gənclik, tələbəlik, sovet dönəmi və müstəqillik illərində ölkəyə rəhbərlik etdiyi dövrlərdəki fotoları maraqla qarşılanır. \"Heydər Əliyev və Sabirabad. 1970-1998-ci illər\" bölməsində dahi rəhbərin bu rayona səfərlərini əks etdirən fotolar yer almışdır. Bu fotolar bir daha sübut edir ki, Ümummilli Lider Azərbaycana rəhbərliyinin bütün dövrlərində Sabirabadın da inkişafına xüsusi diqqət göstərmişdir. Ulu Öndərin Sabirabada 15 dəfə səfər etməsi bunun bariz nümunəsidir. Ümummilli lider Heydər Əliyevin rayondakı müxtəlif obyektlərin açılışlarında iştirak etməsi, ictimaiyyət nümayəndələri, ziyalılar və zəhmətkeşlərlə görüşləri sabirabadlıların xatirində dərin izlər buraxmışdır.', '1716818037_Ashampoo_Snap_понедельник, 27 мая 2024 г._17h48m54s.png', '[\"1716818039_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h47m54s.png\",\"1716818041_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h47m37s.png\"]', '2024-05-27 09:54:02', '2024-05-27 09:54:02'),
(649, '2009', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Губинское кладбище геноцида', 'Quba soyqırım məzarlığıГубинское кладбище геноцида', 'Губинское кладбище геноцида', 'Quba soyqırım məzarlığı', '1716818364_Ashampoo_Snap_понедельник, 27 мая 2024 г._17h56m56s.png', '[\"1716818364_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h55m3s.png\",\"1716818365_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h55m38s.png\",\"1716818366_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._17h55m23s.png\",\"20240527160235_96339780_3070416383018899_8760896100224729088_n.jpg\"]', '2024-05-27 09:59:28', '2024-05-27 12:02:35'),
(651, '2008', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Пляж Пираллахи', 'Pirallahı çimərliyi', 'Пляж Пираллахи', 'Pirallahı çimərliyi', '1716818658_gund20035.jpg', '[\"1716818658_gund10037.jpg\"]', '2024-05-27 10:04:18', '2024-05-27 10:04:18'),
(652, '2008', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Panorama Villa Lux hotel', 'Panorama Villa Lux hotel', 'Отель Panorama Villa Lux расположен в 50 метрах от пляжа Шихово, в 15 минутах езды от центра города Баку.  Из них открывается панорамный вид на Каспийское море. Виллы в отеле Panorama Lux имеют роскошные интерьеры, полностью оборудованную кухню и минимум 2 спальни. Во всех виллах есть балкон и гостиная зона.', 'Panorama Villa Lux Hotel Şıxovo çimərliyindən 50 metr, Bakı şəhərinin mərkəzindən avtomobillə 15 dəqiqəlik məsafədə yerləşir. Panorama Lux Hotel-dəki villalar dəbdəbəli interyerə, tam təchiz olunmuş mətbəxə və minimum 2 yataq otağına malikdir. Bütün villalarda balkon və yaşayış sahəsi var.', '1716819401_370267014.jpg', '[\"1716819401_370247730.jpg\",\"1716819401_370294578.jpg\",\"1716819401_370301583.jpg\",\"1716819401_370768249.jpg\"]', '2024-05-27 10:16:41', '2024-05-27 10:16:41'),
(653, '2011', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Гянджа отель', 'Gəncə hotel', 'Гянджа отель', 'Gəncə hotel', '1716819478_1.jpg', '[\"1716819480_4.jpg\",\"1716819482_gence otel.jpg\"]', '2024-05-27 10:18:04', '2024-05-27 10:18:04'),
(654, '2012', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Центр Г.Алиева в Бейлагане', 'Beyləqan şəhərində H.Əliyev mərkəzi', 'Строительство Центра Гейдара Алиева, построенного в городском парке Гейдара Алиева, началось в середине апреля 2012 года. Центр состоит из подиума и двух этажей. Общая площадь центра, включая кафедру, составляет 1296 квадратных метров.\r\nНа первом этаже центра расположены художественная студия, фотостудия, электронная библиотека, интернет-клуб, курс английского языка, класс ковроткачества, а на втором этаже – музейный зал, отражающий жизнь и деятельность Великого Вождя, виртуальный класс, малый конференц-зал и актовый зал.\r\nЦентр оснащен современной системой освещения и отопления-охлаждения.\r\nПри строительстве центра использовались гранитные камни и современные строительные материалы.', 'Şəhərin Heydər Əliyev adına parkında ucaldılan Heydər Əliyev mərkəzinin inşasına 2012-ci ilin aprel ayının ortalarında başlanılmışdır. Mərkəz kürsü hissədən və iki mərtəbədən ibarətdir. Kürsü hissəsi ilə birlikdə mərkəzin ümumi sahəsi 1296 kvadrat metrdir.\r\nMərkəzin I mərtəbəsində rəsm studiyası, foto-studiya, elektron kitabxana, internet klub, ingilis dili kursu, xalçaçılıq sinfi, II mərtəbəsində isə Ulu Öndərin həyat və fəaliyyətini əks etdirən muzey salonu, virtual sinif, kiçik konfrans zalı və akt zalı yerləşir.\r\nMərkəz müasir işıqlandırma və isitmə-soyutma sistemi ilə təchiz olunmuşdur.\r\nMərkəzin tikintisində qranit daşlardan və müasir tikinti materiallarından istifadə olunmuşdur.', '1716820171_Ashampoo_Snap_понедельник, 27 мая 2024 г._18h22m45s.png', '[\"1716820172_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._18h23m14s.png\",\"1716820174_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._18h23m29s.png\",\"1716820176_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._18h23m44s.png\",\"1716820177_Prezident_281012_07.jpg\"]', '2024-05-27 10:29:37', '2024-05-27 10:29:37'),
(655, '2010', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Центр Гейдара Алиева в Карабахе (эскиз)', 'Qarabağda Heydər Əliyev mərkəzi (eskiz)', 'Центр Гейдара Алиева в Карабахе (эскиз)', 'Qarabağda Heydər Əliyev mərkəzi (eskiz)', '1716820458_Ashampoo_Snap_понедельник, 27 мая 2024 г._18h31m25s.png', '[\"1716820460_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._18h32m45s.png\"]', '2024-05-27 10:34:22', '2024-05-27 10:34:22'),
(656, '2008', 'https://maps.app.goo.gl/oGfmP6SCwnh53MQBA', 'Молодежный центр Бейлагана', 'Beyləqan gənclər mərkəzi', 'Молодежный центр Бейлагана', 'Beyləqan gənclər mərkəzi', '1716820590_ACCamera_4.jpg', '[\"1716820591_gencler merkezi beyleqan.jpg\"]', '2024-05-27 10:36:32', '2024-05-27 10:36:32'),
(657, '2008', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Гянджинский молодежный центр', 'Gəncə gənclər mərkəzi', 'Гянджинский молодежный центр', 'Gəncə gənclər mərkəzi', '1716820653_G1.jpg', '[\"1716820654_G11.jpg\"]', '2024-05-27 10:37:35', '2024-05-27 10:37:35'),
(658, '2006', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Гянджинское училище', 'Gəncə peşə məktəbi', 'Гянджинское училище', 'Gəncə peşə məktəbi', '1716820883_Ashampoo_Snap_понедельник, 27 мая 2024 г._18h38m12s.png', '[\"1716820884_Ashampoo_Snap_\\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a, 27 \\u043c\\u0430\\u044f 2024 \\u0433._18h38m29s.png\"]', '2024-05-27 10:41:25', '2024-05-27 10:41:25'),
(659, '2001', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Проект реконструкции в городе Измир', 'İzmir şəhərində yenidən qurulma layihəsi', 'Проект реконструкции в городе Измир', 'İzmir şəhərində yenidən qurulma layihəsi', '1716820989_img001.jpg', '[\"1716820989_img002.jpg\",\"1716820989_img003.jpg\",\"1716820990_img005.jpg\"]', '2024-05-27 10:43:11', '2024-05-27 10:43:11'),
(660, '1986', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Школа №7', '7 nömrəli məktəb', 'Школа №7', '7 nömrəli məktəb', '1716821124_6.jpg', '[\"1716821124_img001.jpg\"]', '2024-05-27 10:45:26', '2024-05-27 10:45:26'),
(661, '1982', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Проект городской станции БАМ Ангой (эскиз)', 'BAM Anqoy şəhərində vağzal layihəsi (eskiz)', 'Проект городской станции БАМ Ангой (эскиз)', 'BAM Anqoy şəhərində vağzal layihəsi (eskiz)', '1716821256_45ни-1.jpg', '[]', '2024-05-27 10:47:37', '2024-05-27 10:47:37'),
(662, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Мечеть в Джульфе (предложение)', 'Culfada yerləşən məscid (təklif)', 'Мечеть в Джульфе (предложение)', 'Culfada yerləşən məscid (təklif)', '1716822490_408910680_3603227189950411_3946943678112533916_n.jpg', '[\"1716822491_409099821_3603227179950412_6387902356256895477_n.jpg\"]', '2024-05-27 11:08:11', '2024-05-27 11:08:11'),
(663, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Комплекс отдыха в Шемахе', 'Şamaxıda istirahət kompleksi', 'Комплекс отдыха в Шемахе', 'Şamaxıda istirahət kompleksi', '1716822672_419908264_3579084645697999_5919927187895875496_n.jpg', '[\"1716822672_419873935_3579084705697993_738265830789040218_n.jpg\"]', '2024-05-27 11:11:12', '2024-05-27 11:11:12'),
(665, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Библиотека', 'Kitabxana layihəsi', 'Библиотека', 'Kitabxana layihəsi', '1716824371_1.jpg', '[\"1716824371_2.jpg\",\"1716824372_3.jpg\",\"1716824373_5.jpg\",\"1716824374_6.jpg\"]', '2024-05-27 11:39:35', '2024-05-27 11:39:35'),
(666, '2019', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Hədəf liseyi', 'Hədəf liseyi', 'Hədəf liseyi', 'Hədəf liseyi', '1716824705_2fc8df53-1c29-4871-80e8-4b5cbbceae0c.jpg', '[\"1716824705_92c91650-0d2e-4a76-b4a5-ee07ac016eb2.jpg\",\"1716824705_912fe496-8804-484b-a13e-e2fad9ab373e.jpg\",\"1716824705_6895809a-a78f-4c6c-847b-faf1e61ae967.jpg\"]', '2024-05-27 11:45:05', '2024-05-27 11:45:05'),
(667, '2008', 'https://maps.app.goo.gl/E6ZwBcGmfjfxBaF38', 'Концептуальный проект', 'Konsept layihə', 'Концептуальный проект', 'Konsept layihə', '1716825702_26174838_1599038096810799_624243028_n.jpg', '[]', '2024-05-27 12:01:42', '2024-05-27 12:01:42'),
(668, '2007', 'https://maps.app.goo.gl/E6ZwBcGmfjfxBaF38', 'Концептуальный проект', 'Konsept layihə', 'Концептуальный проект', 'Konsept layihə', '1716825748_26553418_1604856482895627_1152803115_n.jpg', '[\"1716825748_26648761_1605139876200621_1743880027_n.jpg\",\"1716825748_26754173_1610818195632789_408357525_n.jpg\",\"1716825748_26754266_1610818122299463_1482474170_n.jpg\"]', '2024-05-27 12:02:28', '2024-05-27 12:02:28'),
(669, '2006', 'https://maps.app.goo.gl/E6ZwBcGmfjfxBaF38', 'Концептуальный проект', 'Konsept layihə', 'Концептуальный проект', 'Konsept layihə', '1716825801_26855459_1614350181946257_1626060651_n.jpg', '[\"1716825801_26803597_1614350441946231_1204699451_n.jpg\"]', '2024-05-27 12:03:21', '2024-05-27 12:03:21'),
(670, '2009', 'https://maps.app.goo.gl/E6ZwBcGmfjfxBaF38', 'Концептуальный проект', 'Konsept layihə', 'Концептуальный проект', 'Konsept layihə', '1716825847_27783218_1635894486458493_1143410028_n.jpg', '[\"1716825847_27721352_1635943743120234_167016092_n.jpg\",\"1716825847_27935299_1635913559789919_601152147_n.jpg\"]', '2024-05-27 12:04:07', '2024-05-27 12:04:07'),
(671, '2005', 'https://maps.app.goo.gl/E6ZwBcGmfjfxBaF38', 'Концептуальный проект', 'Konsept layihə', 'Концептуальный проект', 'Konsept layihə', '1716825925_27939821_1636877403026868_2138573114_n.jpg', '[\"1716825925_28233501_1648932875154654_382080090_n.jpg\",\"1716825925_28236388_1648932878487987_1534049867_n.jpg\"]', '2024-05-27 12:05:25', '2024-05-27 12:05:25'),
(672, '2007', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Храм Бешбармага', 'Beşbarmaq ziyarətgahı', 'Храм Бешбармага', 'Beşbarmaq ziyarətgahı', '1716825985_96234920_3070393183021219_5836577744552460288_n.jpg', '[\"1716825986_96259394_3070393063021231_2521121995748278272_n.jpg\",\"1716825986_96379596_3070393346354536_1514509097540517888_n.jpg\",\"1716825987_96242124_3070393269687877_7876300770470002688_n.jpg\",\"1716825988_96368335_3070392969687907_5272689740208930816_n.jpg\"]', '2024-05-27 12:06:29', '2024-05-27 12:06:29'),
(673, '2001', 'https://maps.app.goo.gl/E6ZwBcGmfjfxBaF38', 'Концептуальный проект', 'Konsept layihə', 'Концептуальный проект', 'Konsept layihə', '1716825990_27153311_1620613174653291_837603990_n.jpg', '[]', '2024-05-27 12:06:30', '2024-05-27 12:06:30'),
(674, '1998', 'https://maps.app.goo.gl/E6ZwBcGmfjfxBaF38', 'Концептуальный проект', 'Konsept layihə', 'Концептуальный проект', 'Konsept layihə', '1716826058_26638398_1604039352977340_600956436_n.jpg', '[]', '2024-05-27 12:07:38', '2024-05-27 12:07:38'),
(675, '1999', 'https://maps.app.goo.gl/E6ZwBcGmfjfxBaF38', 'Концептуальный проект', 'Konsept layihə', 'Концептуальный проект', 'Konsept layihə', '1716826111_26913825_1615258731855402_1017751025_n.jpg', '[]', '2024-05-27 12:08:31', '2024-05-27 12:08:31'),
(676, '1999', 'https://maps.app.goo.gl/E6ZwBcGmfjfxBaF38', 'Концептуальный проект', 'Konsept layihə', 'Концептуальный проект', 'Konsept layihə', '1716826161_26996795_1617863024928306_1700633153_n.jpg', '[]', '2024-05-27 12:09:21', '2024-05-27 12:09:21'),
(677, '1999', 'https://maps.app.goo.gl/E6ZwBcGmfjfxBaF38', 'Eko ev', 'Eko ev', 'Eko ev', 'Eko ev', '1716826213_3.jpg', '[]', '2024-05-27 12:10:14', '2024-05-27 12:10:14'),
(678, '1999', 'https://maps.app.goo.gl/E6ZwBcGmfjfxBaF38', 'Концептуальный проект', 'Konsept layihə', 'Концептуальный проект', 'Konsept layihə', '1716826251_26914075_1618734131507862_670993513_n.jpg', '[]', '2024-05-27 12:10:51', '2024-05-27 12:10:51'),
(679, '2018', 'https://maps.app.goo.gl/E6ZwBcGmfjfxBaF38', 'Концептуальный проект', 'Konsept layihə', 'Концептуальный проект', 'Konsept layihə', '1716826334_30594522_1700076760040265_3503143904083968000_n.jpg', '[\"1716826335_30594544_1700076926706915_1212599289205751808_n.jpg\",\"1716826335_30653191_1700076600040281_4998123282818400256_n.jpg\"]', '2024-05-27 12:12:15', '2024-05-27 12:12:15'),
(680, '2010', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Частный дом в Бузовне', 'Buzovnada şəxsi ev', 'Частный дом в Бузовне', 'Buzovnada şəxsi ev', '1716826361_29362_440391289354768_799647221_n.jpg', '[\"1716826361_481702_440390999354797_518539181_n.jpg\",\"1716826361_551392_440391332688097_1394891399_n.jpg\",\"1716826361_601411_440390936021470_1308543982_n.jpg\",\"1716826361_29375_440391379354759_682645290_n.jpg\"]', '2024-05-27 12:12:41', '2024-05-27 12:12:41'),
(681, '2018', 'https://maps.app.goo.gl/2jHT5SSkJApHqxEV7', 'Pirallahi YDM(Socar)', 'Pirallahi YDM(Socar)', 'Pirallahi YDM(Socar)', 'Pirallahi YDM(Socar)', '1716826466_TEZE2.jpg', '[\"1716826466_TEZE3.jpg\"]', '2024-05-27 12:14:27', '2024-05-27 12:14:27'),
(682, '2018', 'https://maps.app.goo.gl/AB72zNhBjbdL263C9', 'Гянджинский офисный центр', 'Gəncə ofis Mərkəzi', 'Гянджинский офисный центр', 'Gəncə ofis Mərkəzi', '1716826601_2.jpg', '[\"1716826602_3.jpg\",\"1716826604_4.jpg\",\"1716826606_1.jpg\"]', '2024-05-27 12:16:48', '2024-05-27 12:16:48'),
(683, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Частный дом в Надаране', 'Nadaranda şəxsi ev', 'Частный дом в Надаране', 'Nadaranda şəxsi ev', '1716969175_408121395_3553777844895346_5459953440520832937_n.jpg', '[\"1716969175_408114494_3553777841562013_5415264595623098232_n.jpg\",\"1716969175_408079245_3553777878228676_4731770389390888941_n.jpg\",\"1716969175_408103805_3553777891562008_3200634884969500848_n.jpg\",\"1716969175_408139261_3553777854895345_1521856474738194617_n.jpg\"]', '2024-05-29 03:52:55', '2024-05-29 03:52:55'),
(684, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Интерьер стадиона в Гяндже', 'Gəncədə stadionun interyeri', 'Интерьер стадиона в Гяндже', 'Gəncədə stadionun interyeri', '1716969514_446843780_3669043296702133_718569685226152443_n.jpg', '[\"1716969514_446873454_3669043433368786_5466389624779940563_n.jpg\",\"1716969515_446880494_3669043463368783_7329128216469879519_n.jpg\",\"1716969517_446951381_3669043406702122_4227400657150117539_n.jpg\"]', '2024-05-29 03:58:38', '2024-05-29 03:58:38'),
(685, '2021', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Гянджа. Офисное здание на улице Джавадхана', 'Gəncə. Cavadxan küçəsində ofis binası', 'Гянджа. Офисное здание на улице Джавадхана', 'Gəncə. Cavadxan küçəsində ofis binası', '1716969809_446944051_3669045490035247_1134080106922215479_n.jpg', '[\"1716969810_446890475_3669045553368574_5718525868767545954_n.jpg\",\"1716969810_446881741_3669045476701915_549822435001565561_n.jpg\",\"1716969811_446969263_3669045506701912_8405666536048521195_n.jpg\",\"1716969812_446865386_3669045620035234_7455215363867117537_n.jpg\"]', '2024-05-29 04:03:33', '2024-05-29 04:03:33'),
(686, '1988', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Комплекс на улице Физули', 'Füzuli küçəsində kompleks', 'Комплекс на улице Физули', 'Füzuli küçəsində kompleks', '1716970038_fizulu xiyabani.jpg', '[\"1716970039_img016.jpg\",\"1716970042_img032.jpg\",\"1716970044_img035.jpg\",\"1716970048_img036.jpg\"]', '2024-05-29 04:07:31', '2024-05-29 04:07:31'),
(687, '2015', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Исполнительная власть Пираллахи (эскиз)', 'Pirallahı İcra Hakimiyyəti (eskiz)', 'Исполнительная власть Пираллахи (эскиз)', 'Pirallahı İcra Hakimiyyəti (eskiz)', '1716970259_3.jpg', '[\"1716970261_446960371_3669049393368190_3932182811889120096_n.jpg\",\"1716970263_446899460_3669049433368186_8707188998055985213_n.jpg\"]', '2024-05-29 04:11:04', '2024-05-29 04:11:04'),
(688, '2015', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Исполнительная власть Сиязани', 'Siyəzən İcra Hakimiyyəti', 'Исполнительная власть Сиязани', 'Siyəzən İcra Hakimiyyəti', '1716970474_446872499_3669051043368025_7280557757622186045_n.jpg', '[\"1716970474_446951710_3669051010034695_6229654466880268104_n.jpg\",\"1716970475_446872462_3669051023368027_3711489125265286295_n.jpg\",\"1716970476_446850647_3669051070034689_52805401139834165_n.jpg\"]', '2024-05-29 04:14:37', '2024-05-29 04:14:37'),
(689, '2021', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Интерьерное решение гостиной в белом городе', 'Ağ şəhərdə qonaq otağının interyer həlli', 'Интерьерное решение гостиной в белом городе', 'Ağ şəhərdə qonaq otağının interyer həlli', '1716970836_446925007_3669053956701067_8693037941416218737_n.jpg', '[\"1716970837_446849469_3669053866701076_8342185757983622009_n.jpg\",\"1716970838_446880461_3669053916701071_2220057979168693131_n.jpg\",\"1716970838_446952110_3669053846701078_9126818305662648834_n.jpg\",\"1716970838_446968233_3669053880034408_2322905576146020303_n.jpg\"]', '2024-05-29 04:20:39', '2024-05-29 04:20:39'),
(690, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Элитный торговый центр', 'Elit ticarət mərkəzi', 'Элитный торговый центр', 'Elit ticarət mərkəzi', '1716971195_446815203_3669056383367491_9028726913018240297_n.jpg', '[\"1716971196_446856561_3669056366700826_9076242978951149422_n.jpg\",\"1716971197_446863978_3669056336700829_5871048867356451650_n.jpg\",\"1716971197_446865213_3669056353367494_861729506845165084_n.jpg\"]', '2024-05-29 04:26:38', '2024-05-29 04:26:38'),
(691, '2020', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Жилой комплекс (пилотный проект)', 'Yaşayış kompleksi (pilot layihə)', 'Жилой комплекс (пилотный проект)', 'Yaşayış kompleksi (pilot layihə)', '1716971513_446890651_3669059466700516_3387161022024123991_n.jpg', '[\"1716971514_446951771_3669059473367182_1764510510802346557_n.jpg\"]', '2024-05-29 04:31:55', '2024-05-29 04:31:55'),
(692, '2020', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Пилотный проект в Гяндже (эскиз)', 'Gəncə pilot layihə (eskiz)', 'Пилотный проект в Гяндже (эскиз)', 'Gəncə pilot layihə (eskiz)', '1716972058_446996910_3669063726700090_4011309997137375249_n.jpg', '[\"1716972059_446809288_3669063720033424_6702062596785651560_n.jpg\",\"1716972060_446814395_3669063640033432_8341036610239411688_n.jpg\",\"1716972062_446915750_3669063756700087_2918912635844723199_n.jpg\",\"1716972064_447004592_3669063610033435_6273541941802902023_n.jpg\"]', '2024-05-29 04:41:06', '2024-05-29 04:41:06'),
(693, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'İMA ofis project', 'İMA ofis project', 'İMA ofis project', 'İMA ofis project', '1716972706_302521780_3221033468169787_288683607968004201_n.jpg', '[\"1716972707_303422425_3221030294836771_4512338710470814148_n.jpg\",\"1716972707_315629106_3284875085118958_1635351272961073490_n.jpg\",\"1716972709_318489560_3302100160063117_6064847222491636645_n.jpg\",\"1716972709_318444744_3302101140063019_4134700097973977305_n.jpg\"]', '2024-05-29 04:51:49', '2024-05-29 04:51:49'),
(694, '2022', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Дизайн офиса (концепция)', 'Ofis dizaynı (konsept)', 'Дизайн офиса (концепция)', 'Ofis dizaynı (konsept)', '1716972929_2.jpeg', '[\"1716972929_4.jpeg\",\"1716972930_8.jpg\",\"1716972931_24.jpg\",\"1716972931_25.jpg\"]', '2024-05-29 04:55:32', '2024-05-29 04:55:32'),
(698, '2024', 'https://maps.app.goo.gl/22vCvNumrwgvNPM48', 'Ширванский городской бульвар', 'Şirvan şəhər bulvarı', 'Ширванский городской бульвар', 'Şirvan şəhər bulvarı', '1718794720_25d copy.jpg', '[\"1718794722_19aaa  copy.jpg\",\"1718794723_16a copy.jpg\",\"1718794725_18a copy.jpg\",\"1718794727_15a  copy.jpg\"]', '2024-06-19 06:58:51', '2024-06-19 06:58:51'),
(699, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Пьедестал', 'Postament', 'Пьедестал', 'Postament', '1728118150_1.jpg', '[\"1728118150_4.jpg\",\"1728118151_8.jpg\"]', '2024-10-05 04:49:11', '2024-10-05 04:49:11'),
(700, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Пьедестал', 'Postament', 'Пьедестал', 'Postament', '1728118265_p1.jpg', '[\"1728118265_p3.jpg\",\"1728118266_p2.jpg\"]', '2024-10-05 04:51:07', '2024-10-05 04:51:07'),
(701, '2024', 'https://maps.app.goo.gl/MJUrCi1CkZdKqKzM7', 'Решение дизайна в белом городе в стиле неоклассика', 'Ağ şəhər neoklassika üslubda olan yataq otağının dizayn həlli', 'Решение дизайна в белом городе в стиле неоклассика', 'Ağ şəhər neoklassika üslubda olan yataq otağının dizayn həlli', '1730978741_Снимок экрана (16).png', '[\"1730978742_\\u0421\\u043d\\u0438\\u043c\\u043e\\u043a \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430 (17).png\",\"1730978743_\\u0421\\u043d\\u0438\\u043c\\u043e\\u043a \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430 (19).png\",\"1730978744_\\u0421\\u043d\\u0438\\u043c\\u043e\\u043a \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430 (21).png\",\"1730978745_\\u0421\\u043d\\u0438\\u043c\\u043e\\u043a \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430 (23).png\"]', '2024-11-07 07:25:46', '2024-11-07 07:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `service_name_az` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_az` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name_az`, `service_name_ru`, `desc_az`, `desc_ru`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Memarlıq layihəsi', 'Архитектурный проект', 'Biz memarlıq layihəsi ilə bağlı tam spektr xidmətlər təklif edirik. Bura memarlıq planlarının hazırlanması, 3D vizualizasiya, modelləmə və tikinti nəzarəti daxildir. Biz işçi layihə və keyfiyyətə xüsusi diqqət yetiririk.\r\nTəqdimatlarla paralalel, açar təslimi kompleks həllər də sizə təklif edirik. Bura planlama, koordinasiya və layihənin bütün mərhələlərinin nəzarətini əhatə edir.', 'Мы предлагаем полный спектр услуг по архитектурному проектированию. Сюда входит подготовка архитектурных планов, 3D визуализация, моделирование и надзор за строительством. Особое внимание мы уделяем рабочему дизайну и качеству.\r\nПараллельно с презентациями мы также предлагаем Вам комплексные решения «под ключ». Это включает в себя планирование, координацию и контроль всех этапов проекта.', '1718791669_Ashampoo_Snap_среда, 19 июня 2024 г._14h7m15s.png', '2024-05-27 03:47:04', '2024-06-19 06:07:49'),
(2, 'İnteryer dizayn', 'Дизайн интерьера', 'Biz müştərilərin məqsədlərinə və istəklərinə əsaslanan konsepsiyalı həllər hazırlayırıq. Komandamız müştərilərlə yaxın əməkdaşlıq edərək unikal və funksional məkanlar yaratmaq üçün çalışır.\r\nMüştərilərin ehtiyaclarını və istəklərini nəzərə alaraq funksional, erqonomik, texniki standartlara uyğun və estetik layihələr hazırlayırıq.', 'Мы разрабатываем концептуальные решения, исходя из целей и пожеланий клиентов. Наша команда тесно сотрудничает с клиентами для создания уникальных и функциональных пространств.\r\nУчитывая потребности и пожелания клиентов, мы готовим функциональные, эргономичные, технические и эстетические проекты.', '1718792905_Ashampoo_Snap_среда, 19 июня 2024 г._14h27m30s.png', '2024-05-27 03:50:51', '2024-06-19 06:28:25'),
(3, 'Landşaft dizayn', 'Ландшафтный дизайн', 'Binaların memarlığı və ətraf mühit ilə harmoniya yaratmağa diqqət edərək unikal həllər təqdim edirik. Bizim komandamız iqlim şəraitini, doğal resursları və müştəri ehtiyaclarını nəzərə alaraq Məqsədimiz, dizayn və memarlıq sahəsində innovativ və keyfiyyətli həllər yaradaraq müştərilərin gözləntilərini üstələməkdədir. Dizayn və memarlıq sahəsində professional xidmətlərə ehtiyacınız varsa, \"Alt.AY.Sel\"  şirkətinə müraciət edin və bizim komandamız sizin fikirlərinizi həyata keçirmək üçün sevinclə yardım edəcək.\r\nMüasir texnologiyalardan istifadə edilməsi daima bizim öncəliyimizdir. Biz sizə məkanınızın həm estetik , həm də keyfiyyət cəhətdən mükəmməl olmasına zəmanət veririk! Gözəllik bizdədir! Yetər ki, bizə güvənin! Biz özümüzə güvənirik, çünki, güvənmək uğurun təməlidir!', 'Мы предоставляем уникальные решения, направленные на создание гармонии с архитектурой зданий и окружающей средой. Наша команда учитывает климатические условия, природные ресурсы и потребности клиентов. Наша цель — превзойти ожидания клиентов, создавая инновационные и качественные решения в области дизайна и архитектуры. Если вам нужны профессиональные услуги в области дизайна и архитектуры, обращайтесь в компанию «Альт.АЙ.Сел» и наша команда с радостью поможет вам реализовать ваши идеи.\r\nИспользование современных технологий всегда является нашим приоритетом. Мы гарантируем, что ваше пространство будет эстетически и качественно совершенным! Красота с нами! Просто доверьтесь нам! Мы доверяем себе, ведь доверие – основа успеха!', '1718791605_Ashampoo_Snap_среда, 19 июня 2024 г._13h53m39s.png', '2024-05-27 03:53:34', '2024-06-19 06:06:45'),
(4, 'İnteryer dizayn Təlimi', 'Обучение архитектуре и дизайну', 'Alt.Ay.Sel CO nəznində AHR Design Studio-da interyer dizayn dərslərinə hamınız dəvətlisiniz!\r\nTədris paketinin müddəti 5 aydır və bu müddətdə 3 proqram memar-dizayner Aysel Hüseynova tərəfindən hərtərəfli öyrədilir. Hər proqramın sonunda öyrədilən material sorğu olunaraq sertifikat verilir.\r\n\r\nBeləliklə, siz aşağıdakı ardıcıllıq üzrə 5 ayın sonunda 3 proqramı tam mənimsəyərək öyrənirsiniz:\r\n\r\n✅1-ci ay - texniki biliklər;\r\n✅2-ci ay - AutoCad və ya Archicad proqramı\r\n✅3 -5 ci aylar- 3D Max və Photoshop, Post Production\r\n\r\nHəmçinin, təhsil aldığınız müddətdə minimum 1 və maksimum 4 layihə üzərində sərbəst işləyərək kursun sonunda peşəkar portfolioya sahib olursunuz\r\n\r\nPeşəkar tədris - peşəkar karyera!', 'Приглашаем всех на занятия по дизайну интерьера в студию дизайна AHR под управлением компании Alt.Ay.Sel CO!\r\nПродолжительность пакета обучения составляет 5 месяцев, и за этот период 3 программы тщательно преподаются архитектором-дизайнером Айсель Гусейновой. По окончании каждой программы проводится проверка пройденного материала и выдается сертификат.\r\nТаким образом, вы учитесь, полностью осваивая 3 программы по итогам 5 месяцев в следующей последовательности:\r\n\r\n✅1-й месяц – технические знания;\r\n✅ 2-й месяц – программа AutoCad или Archicad.\r\n✅ 3-5 месяцы - 3D Max и Photoshop, постпродакшн\r\n\r\nКроме того, во время учебы в конце курса у вас будет профессиональное портфолио, благодаря самостоятельной работе минимум над 1 и максимум 4 проектами.\r\n\r\nПрофессиональное преподавание – профессиональная карьера!', '1718793709_Ashampoo_Snap_среда, 19 июня 2024 г._14h40m38s.png', '2024-05-27 03:02:53', '2024-06-19 06:41:49'),
(5, 'Seminar', 'Семинар', 'Bu günün tələbəsi, sabahın peşəkar memar və dizayneridir. Komandamız seminarlar təlimlər keçirərək, öz biliklərini gənclərə ötürməyi özünə borc bilir.', 'Сегодняшний студент – завтрашний профессиональный архитектор и дизайнер. Наша команда берет на себя задачу передать свои знания молодежи путем проведения семинаров и тренингов.', '1718793857_Ashampoo_Snap_среда, 19 июня 2024 г._14h41m52s.png', '2024-05-27 04:02:10', '2024-06-19 06:44:17'),
(6, 'Memarlıq Təlimi', 'Архитектурное обучение', 'Memarlıq peşəsi gözəl səslənsə də xüsusi biliklərə və güclü tədris prosesinə ehtiyac duyur. Alt.Ay.Sel co nəznində AHR Design Studio bütün lazımi bilik və məşğələləri akademik materiallar əsasında bir paket halına gətirərək asanlaşdırmışdır. Bu proses xüsusi ardıcıllıqla həyata keçirilir.\r\nİlkin olaraq eskiz və işçi layihə öyrədilir. Bu proses zamanı tələbələr paralel olaraq ArchiCAD proqramında da sərbəst şəkildə işləməyi öyrənirlər. İşçi və eskiz layihə dərsləri zamanı memarlığa dair standartlar, planların qurulması, fasad düyünlər, fraqmentlər, detallar, tamamlama cədvəllərinin qurulması, pəncərə və qapıların təsnifatı, fundament və konstruktiv detalların analiz edilməsi tədris olunur. Bu dərslər ArchiCAD və Lumion proqramları üzərində işlənilərək tam mənimsənilir.\r\nTələbənin istəyindən asılı olaraq 3D Max proqramı da öyrədilir.\r\nAHR Design Studio - Gələcəyin Memarlarını Yetişdiririk!', 'Хотя профессия архитектора звучит великолепно, она требует специальных знаний и серьезного образовательного процесса. Под руководством компании Alt.Ay.Sel студия дизайна AHR объединила все необходимые знания и упражнения в пакете, основанном на академических материалах. Этот процесс осуществляется в особой последовательности.\r\nПервоначально преподается эскиз и рабочий проект. В ходе этого процесса студенты учатся свободно работать в программе ArchiCAD параллельно. На занятиях по рабочим и эскизным проектам изучаются архитектурные нормы, планы зданий, узлы фасадов, фрагменты, детали, построение таблиц выполнения, классификация окон и дверей, анализ фундаментов и конструктивных деталей. Эти уроки полностью осваиваются при работе в программах ArchiCAD и Lumion.\r\nПрограммное обеспечение 3D Max также преподается в зависимости от запроса ученика.\r\nСтудия дизайна AHR – подготовка архитекторов будущего!', '1718793584_Ashampoo_Snap_среда, 19 июня 2024 г._14h36m59s.png', '2024-05-27 03:07:27', '2024-06-19 06:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `image_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image_name`, `created_at`, `updated_at`) VALUES
(20, '1716547132_334036654_226193949828367_6255476128847383073_n (1).jpg', '2024-05-24 06:38:52', '2024-05-24 06:38:52'),
(24, '1716555765_18519111_1271960196249965_169188881_o.jpg', '2024-05-24 09:02:45', '2024-05-24 09:02:45'),
(25, '1716555824_DSC_8684.JPG', '2024-05-24 09:03:45', '2024-05-24 09:03:45'),
(36, '1716810492_434019242_7548115411915618_5636954148013858780_n.jpg', '2024-05-27 07:48:12', '2024-05-27 07:48:12'),
(37, '1716811860_338964521_753814046282668_3338793977170037663_n.jpg', '2024-05-27 08:11:01', '2024-05-27 08:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Altaysel Admin', 'admin@altaysel.az', '2024-05-21 02:18:49', '$2y$12$e7DW3IMGAcPaWGXRYxRaBOwtSqDXQKrONRpALbPA.o08gWinQsLJ2', 'Tm598IYA9Kg3XAhQQMpuCr0tiG6XoXA8BHHEo6evFkF8HT1X4bXBa3HxyTnX', '2024-05-21 02:18:50', '2024-05-21 02:18:50', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `future_projects`
--
ALTER TABLE `future_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_projects`
--
ALTER TABLE `main_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `map_projects`
--
ALTER TABLE `map_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `future_projects`
--
ALTER TABLE `future_projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_projects`
--
ALTER TABLE `main_projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `map_projects`
--
ALTER TABLE `map_projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=704;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
