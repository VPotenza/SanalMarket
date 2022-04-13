-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 11 Eki 2021, 07:43:37
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `base`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(8) NOT NULL,
  `c_id` int(8) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `c_id`, `name`, `code`, `image`, `price`) VALUES
(1, 5, 'FinePix Camera', '3DM0', 'productimage/camera.jpg', 1500.00),
(2, 5, 'EXP Hard Drive', 'USB02', 'productimage/external-hard-drive.jpg', 1800.00),
(3, 5, 'Luxury Ultra Watch', 'wrist', 'productimage/watch.jpg', 1300.00),
(4, 5, 'Ryzen7 Laptop', 'LPN45', 'productimage/laptop.jpg', 4800.00),
(5, 2, '15\'li Piliç Yumurtası', 'Yum15', 'productimage/15yumurta.jpg', 17.00),
(6, 2, '30\'lu Piliç Yumurtası', 'Yum30', 'productimage/30yumurta2.jpg', 32.00),
(7, 1, 'Ahenk Bisküvi ', 'AheBis', 'productimage/ahenk.jpg', 3.00),
(8, 1, 'Albeni Karamelli Bar', 'AlbBar', 'productimage/albeni.jpg', 2.00),
(9, 1, 'Altınbaşak Form Bisküvi', 'AltBis', 'productimage/altinbasak.jpg', 1.00),
(10, 1, 'Aşçı Anne Patates Cipsi ', 'Anncips', 'productimage/ascianne.jpg', 5.00),
(11, 1, 'Ayking Tahilli Bisküvi ', 'Aykbis', 'productimage/ayking.jpg', 3.00),
(13, 1, 'BlackPearl Filtre Kahve', 'BPfilt', 'productimage/blackpearlkahve.jpg', 13.00),
(14, 1, 'Eti Kakaolu Bisküvi', 'EtiBur', 'productimage/burcakkakao.jpg', 5.00),
(15, 1, 'Eti Burçak Sütlü Bisküvi', 'EtiSbis', 'productimage/burcaksutlu.jpg', 6.00),
(16, 1, 'Caffito Granül Kahve', 'Caffito', 'productimage/caffitokahve.jpg', 9.00),
(17, 1, 'Çaykur Turist Çay 1kg', 'caykcay1', 'productimage/caykurcay1L.jpg', 28.00),
(18, 1, 'Ceviz Reçeli 0.7L', 'cevrece', 'productimage/cevizrecel.jpg', 16.00),
(19, 1, 'Chado Mentollü Çay 350gr', 'chadcay', 'productimage/chadomentolcay.jpg', 19.00),
(20, 2, 'Amasya Füme 120Gr', 'AmasDF', 'productimage/dana-fume-et.jpg', 11.00),
(21, 1, 'Doğadan Bitki Çayı 20\'li', 'DogBiCay', 'productimage/dogadancay.jpg', 6.00),
(22, 3, 'Çeri Domates 400gr', 'CerDomat', 'productimage/domatesceri.jpg', 6.00),
(23, 3, 'Kuru Domates 100gr', 'KurDomat', 'productimage/domateskurusu.jpg', 12.00),
(24, 1, 'Eti Marshmallowlu Bisküvi 7li', 'EtiMarsh', 'productimage/et.jpg', 8.00),
(25, 1, 'Eti Kakaolu Bisküvi', 'etikaka', 'productimage/etikakao.jpg', 4.00),
(26, 1, 'Foreva Lüks Çikolata', 'ForCik', 'productimage/foreva.jpg', 34.00),
(27, 1, 'Form Kayısılı Bisküvi', 'FormKay', 'productimage/formbiskuvi.jpg', 2.00),
(28, 1, 'Gourmet Şekersiz Çikolata', 'GourCik', 'productimage/gourmet.jpg', 28.00),
(29, 2, 'Gündüz Taze Kaşar 350gr', 'GunKasp', 'productimage/gunduzkasar.jpg', 23.00),
(30, 1, 'Harem Krep Çikolata', 'HarCik', 'productimage/haremkrep.jpg', 32.00),
(32, 5, 'Apple X 64gb', 'Appiphx', 'productimage/iphone.jpg', 3200.00),
(33, 5, 'Apple 11 64gb', 'Appiph11', 'productimage/iphone2.jpg', 2850.00),
(34, 4, 'Lapala Islak Mendil 16lı', 'Lapisl', 'productimage/islakmendil.jpeg', 2.00),
(35, 2, 'AhmetBey Kaşar 350Gr', 'kekkas', 'productimage/kekiklikasar.jpg', 23.00),
(36, 1, 'Kido Aromalı Süt 4lu', 'Kidsut', 'productimage/kido.jpg', 12.00),
(37, 4, 'Bakır Krem Deodorant', 'kremdeo', 'productimage/kremdeo.jpg', 19.00),
(38, 1, 'Lays Patates Cipsi', 'Layscip', 'productimage/lays.jpg', 7.00),
(39, 1, 'Lotus Krema 730gr', 'Lotfind', 'productimage/lotuskrema.jpg', 17.00),
(40, 1, 'Mua Fıstıklı Çikolata', 'muacik', 'productimage/mua.jpg', 18.00),
(42, 3, 'Nature Soğan Granülü', 'natsog', 'productimage/naturesogangranul.jpg', 24.00),
(43, 1, 'Eti Negro Bisküvi', 'etineg', 'productimage/negro.jpg', 3.00),
(44, 4, 'Omo Sıvı Deterjan 1,75 lt', 'Omosivd', 'productimage/omodet.jpg', 27.00),
(45, 4, 'Orta Boy Çöp Torbası', 'ortcop', 'productimage/ortaçöp.jpg', 8.00),
(46, 2, 'Ots Kuru Erişte Makarna', 'orteriste', 'productimage/otskurueriste.jpg', 11.00),
(47, 1, 'Paprika Mısır Cipsi ', 'papcips', 'productimage/paprika.jpg', 6.00),
(48, 4, 'Porçöz Kireç Sökücü', 'porkir', 'productimage/porçöz.jpeg', 7.00),
(49, 1, 'Ülker Sandviç Bisküvi', 'probis', 'productimage/probis.jpg', 8.00),
(50, 3, 'Raya Patates 1.7kg', 'rayapat', 'productimage/rayapatates.jpg', 19.00),
(51, 4, 'Rinso Sıvı Deterjan 4lu', 'rinsodet', 'productimage/rinso4lu.jpg', 79.00),
(52, 1, 'Rio Santo Patates Cipsi', 'riosanto', 'productimage/riosanto.jpg', 11.00),
(53, 4, 'Hacı Mahir Kalıp Sabun ', 'kalsab', 'productimage/sabun.jpg', 7.00),
(54, 3, 'Çengelköy Salatalık 1,5 kg', 'censal', 'productimage/salatalik.jpg', 9.00),
(55, 5, 'Samsung Tab Tablet PC', 'samtabl', 'productimage/samsungtablet.jpg', 899.00),
(56, 5, 'Samsung Tab2 Tablet PC', 'samstab2', 'productimage/samsungtablet2.jpg', 1900.00),
(57, 2, 'Siyez Erişte Makarna', 'siyezmak', 'productimage/siyezeriste.jpeg', 19.00),
(58, 2, 'Sütiş Erişte Makarna', 'sutismak', 'productimage/sutiseriste.jpg', 14.00),
(59, 2, 'Tahsildar Kaşar Peyniri', 'tahsilk', 'productimage/tahsilkasar.jpg', 16.00),
(60, 4, 'Thalia Yüz Bakım Kremi', 'thaliab', 'productimage/thaliayuzbakim.jpg', 43.00),
(61, 1, 'Tiaroma Sütlü Kurabiye', 'tiaroma', 'productimage/tiaromakurabiye.jpg', 11.00),
(62, 2, 'Tire Eski Kaşar Peyniri', 'tirekas', 'productimage/tirekasar.jpg', 22.00),
(63, 3, 'Çanakkale Domates 2kg', 'candomat', 'productimage/tomatoes.jpg', 11.00),
(64, 1, 'Türkü Soğuk Çay ', 'turkuscay', 'productimage/turkusogukcay.jpg', 8.00),
(65, 1, 'Ülker Çift Katlı Bisküvi', 'ulkercift', 'productimage/ulkerciftkat.jpg', 8.00),
(66, 2, 'Ünal TY Peynir kg', 'unalpeyn', 'productimage/unalpeynir.jpg', 27.00),
(67, 2, 'Yeneray Kıyma 500gr', 'yenerayet', 'productimage/yenerayet.jpg', 31.00),
(68, 2, 'Yöre YY Peynir 750gr', 'yorepeyn', 'productimage/yorepeynir.jpg', 18.00),
(69, 2, 'Yöre Peynir 450gr', 'yoretuzsuz', 'productimage/yoretuzsuz.jpg', 16.00),
(70, 2, 'Akşener Kıyma 400gr', 'akskiym', 'productimage/aksenerdanakiyma.jpg', 23.00),
(71, 2, 'Akşener Dana Parmak Sucuk', 'AksSuc', 'productimage/aksenerparmak.jpg', 24.00),
(72, 2, 'Amasya Dana Bonfile 850gr', 'Amsydb', 'productimage/amasyadahatbone.jpg', 75.00),
(73, 2, 'Amasya Kuşbaşı 400gr', 'AmasyDK', 'productimage/amasyayagsizdanakusbasi.jpg', 45.00),
(74, 3, 'Ananas (400-600 gr)', 'ithAnans', 'productimage/ananas.jpg', 15.00),
(75, 3, 'İthal Avokado 2\'li paket', 'ithalAvo', 'productimage/avokado.jpg', 18.00),
(76, 2, 'Aytaç Dana Kangal Sucuk 250gr', 'Aytcdks', 'productimage/aytac.jpg', 23.00),
(77, 2, 'Balparmak Bal 850gr', 'Balsuzme', 'productimage/balparmak.jpg', 59.00),
(78, 2, 'Banvit Göğüs Bonfile 1kg', 'bnvtgogus', 'productimage/banvitgogus.jpg', 23.00),
(79, 2, 'Başyazıcı Dana Sucuk 0.5Kg', 'bsyzckngl', 'productimage/basyazici.jpg', 27.00),
(80, 2, 'Başyazıcı Sucuk 200gr', 'bsyzcozel', 'productimage/basyaziciozel.jpg', 34.00),
(81, 2, 'Beşler Dana Kıyma 400gr', 'bslrkiymada', 'productimage/beslerdanakiyma.jpg', 34.00),
(82, 2, 'Beypiliç Parmak Bonfile 700gr', 'beypilicpar', 'productimage/beypilicparmakbonf.jpg', 19.00),
(83, 2, 'Beypiliç Soslu Bonfile 1200gr', 'byplcsoslu', 'productimage/beypilicsoslubonf.jpg', 21.00),
(84, 2, 'Datça Çiçek Petek Balı 450gr', 'datcacckbal', 'productimage/datcapetekbali.jpg', 40.00),
(85, 7, 'Energy Muhabbet Kuşu Yemi', 'energyem', 'productimage/energykusyemi.jpg', 14.00),
(86, 2, 'Erpiliç Kuru Yolum Baget 750gr', 'erplcbaget', 'productimage/erpilicbaget.jpg', 16.00),
(87, 2, 'Erpiliç Bütün Piliç 1750gr', 'erplcbutun', 'productimage/erpilicbutun.jpg', 24.00),
(88, 2, 'Erpiliç Kalçalı But 800gr', 'erplcbut', 'productimage/erpilickalcalibut.jpg', 22.00),
(89, 2, 'Erpiliç Kanat 900gr', 'erplckanat', 'productimage/erpilickanat.jpg', 18.00),
(90, 2, 'Ersan Dana Sucuk 450gr', 'ersansck', 'productimage/ersandana.jpg', 30.00),
(91, 2, 'Ersan Dana Kavurma 150gr', 'ersankvrma', 'productimage/ersankavurma.jpg', 21.00),
(92, 7, 'Felicia Kedi Maması 2kg', 'feliciakmama', 'productimage/feliciakedimama.jpg', 24.00),
(93, 7, 'Formix Kuş Yemi 0.2Kg', 'formixyem', 'productimage/formixkusyemi.jpg', 23.00),
(94, 7, 'Freecat Kedi Yaş Maması', 'freeyas', 'productimage/freecatkedi.jpg', 14.00),
(95, 3, 'Göbek Marul ', 'gbkmarul', 'productimage/gobek.jpg', 7.00),
(96, 7, 'Goody Köpek Maması 3,5kg', 'goodymama', 'productimage/goodykopekmamasi.jpg', 28.00),
(97, 2, 'Hastavuk Bonfile kg', 'hastvkbonf', 'productimage/hastavukbonfile.jpg', 19.00),
(98, 2, 'Hekimzade Balı 0.9Kg', 'hkmzadebal', 'productimage/hekimzade.jpg', 32.00),
(99, 7, 'Hills Köpek Maması 5kg', 'hilssmama', 'productimage/hillsadultkopek.jpg', 30.00),
(100, 7, 'Hills Yetişkin Kedi Maması 5kg', 'hilskedimama', 'productimage/hillskedimama.jpg', 24.00),
(101, 3, 'Yaş İncir 500gr', 'yasincir', 'productimage/incir.jpg', 17.00),
(102, 3, 'Adana Karpuz 7kg', 'karpzmyve', 'productimage/karpuz.jpg', 18.00),
(103, 3, 'Kırkağaç Kavun 3kg', 'kirkkvn', 'productimage/kavun.jpg', 11.00),
(104, 7, 'Mercy Yavru Kedi Maması', 'mercymama', 'productimage/kedimama.jpg', 16.00),
(105, 7, 'Michu Yavru Kedi Maması', 'michukedimama', 'productimage/kedimama2.jpg', 14.00),
(106, 2, 'Kılıçhan Dana Sucuk 350gr', 'kilichan', 'productimage/kilichan.jpg', 34.00),
(107, 3, 'Mango 3lü Paket', 'mang3lu', 'productimage/mango.jpg', 27.00),
(108, 7, 'Massima Köpek Maması', 'massimmama', 'productimage/massimakopekmama.jpg', 19.00),
(109, 3, 'Nar 2li paket', 'nar2li', 'productimage/nar.jpg', 12.00),
(110, 2, 'Orvital Bonfile 500gr', 'orvitabonf', 'productimage/orvitalorganikbonfile.jpg', 21.00),
(111, 2, 'Pınar Mangal Sucuk 150gr', 'mnglsucuk', 'productimage/pinarillaki.jpg', 17.00),
(112, 7, 'Proline Köpek Maması ', 'prokopek', 'productimage/prolinekopekmama.jpg', 23.00),
(113, 7, 'Quik Kuş Yemi', 'productimage/quikyem.jpg', 'productimage/quikkusyem.jpg', 18.00),
(114, 3, 'Taşköprü Sarımsak 1kg', 'sarmsak', 'productimage/sarimsak.jpg', 65.00),
(115, 3, 'Tere Otu', 'tereot', 'productimage/tere.jpg', 4.00),
(118, 3, 'Yeşil Golden Elma 1kg', 'yesilelma', 'productimage/yesilelma.jpg', 1.00),
(119, 2, 'Yöre Çiçek Balı 0.8L', 'yorebal', 'productimage/yoresuzmecicek.jpg', 31.00),
(120, 5, 'Xiaomi Turbo Şarj Aleti', 'xiasar', 'productimage/xiaomiturbosarj.jpg', 90.00),
(121, 4, 'Yetiş Bulaşık Deterjanı 4kg', 'yetsdet4', 'productimage/yetis4kgbulasik.jpg', 37.00),
(122, 4, '3M Koruyucu Maske 10\'lu', '3mmask', 'productimage/3mmaske10lu.jpg', 30.00),
(123, 4, 'ABC Çamaşır Suyu 4L', 'abcsu4', 'productimage/abc4Lcamasir.jpg', 27.00),
(124, 4, 'Ace Çamaşır Suyu 4L', 'acesu4', 'productimage/ace4Lcamasir.jpg', 37.00),
(125, 4, 'ABC Bulaşık Deterjanı 1L', 'abcblsk', 'productimage/abc1300mlbulasik.jpg', 13.00),
(126, 4, 'Activex Islak Mendil 32\'li', 'activis', 'productimage/activexislak.jpg', 8.00),
(127, 4, 'Activex Islak Mendil 3x50\'li', 'activ3x50', 'productimage/activexuclu3x50islak.jpg', 24.00),
(128, 4, 'Adieu Limon Kolonyası 400ml', 'adieulim', 'productimage/adieu400mlkolonya.jpg', 13.00),
(129, 4, 'Ailem Çamaşır Suyu 2,5lt', 'ailesu25', 'productimage/ailem2.5Lcamasir.jpg', 19.00),
(130, 4, 'Akdağ Çamaşır Suyu 4L', 'akdasu4', 'productimage/akdag4Lcamasir.jpg', 28.00),
(131, 5, 'Ally Kablolu Kulaklık ', 'allykulak', 'productimage/allykablolu.jpg', 13.00),
(132, 5, 'Alsa Kablosuz Kulaklık', 'alsakblsz', 'productimage/alsakulak.jpg', 91.00),
(133, 4, 'Arkomen Kolonyası 250ml', 'arkomntrs', 'productimage/arkotras250mlerkek.jpg', 16.00),
(134, 4, 'Avansas Islak Mendil 120\'li', 'avnssislk', 'productimage/avansas120liislak.jpg', 13.00),
(135, 4, 'Bebak Kolonyası 15ml', 'bebklmn', 'productimage/bebak15mlspreykolonya.jpg', 7.00),
(136, 4, 'Berrak Kağıt Havlu 6\'lı', 'brrk6havlu', 'productimage/berrak6lihavlu.jpg', 16.00),
(137, 4, 'Borline Deterjanı 0.5L', 'borlineblsk', 'productimage/borline650mlbulasik.jpg', 9.00),
(138, 4, 'Boron Bulaşık 0.6L', 'boron600ml', 'productimage/boron650mlbulasik.jpg', 12.00),
(139, 4, 'Brid Bulaşık Deterjanı 750ml', 'bridblskd', 'productimage/brid750mlbulasik.jpg', 6.00),
(140, 4, 'Chicco Kolonya 0.1L', 'chicolmn', 'productimage/chicco100mlkolonya.jpg', 8.00),
(141, 4, 'Çiçeğim Çamaşır Suyu 4L', 'ccgmcmsr4', 'productimage/cicegim4Lcamasir.jpg', 26.00),
(142, 4, 'Confort Kağıt Havlu 6\'lı', 'cnforthvl', 'productimage/confort6lihavlu.jpg', 18.00),
(143, 4, 'Coutoo Maske 20li', 'coutomsk', 'productimage/coutoomasketurk20li.jpg', 17.00),
(144, 4, 'Dalin Islak Mendil 3x20li', 'dalnislkmnd', 'productimage/dalinislak3x20li.jpg', 24.00),
(145, 4, 'Dolce Kağıt Havlu 6lı', 'dolckgthvlu', 'productimage/dolce6lihavlu.jpg', 21.00),
(146, 4, 'Domestos Çamaşır Suyu 4L', 'dmstssu4l', 'productimage/domestos4Lcamasir.jpg', 31.00),
(147, 4, 'Duru Kolonya 150cc', 'duruspry', 'productimage/duru150cckolonya.jpg', 13.00),
(148, 5, 'Dxl Sports Kulaklık', 'dxlkulk', 'productimage/dxlsportskulaklik.jpg', 42.00),
(149, 4, 'Ecos Organik Deterjan 3,5L', 'ecosblsk', 'productimage/ecos3500mlorganikbulasik.jpg', 37.00),
(150, 4, 'Est Limon Kolonyası 1L', 'estlmnklnya', 'productimage/est1ltkolonya.jpg', 24.00),
(151, 4, 'Facemask Maske 50li', 'facemask50', 'productimage/facemask50limaske.jpg', 24.00),
(152, 4, 'Fairy Bulaşık Deterjanı 1,5L', 'fairy15ml', 'productimage/fairy1.5Lbulasik.jpg', 18.00),
(153, 4, 'Fairy Bulaşık Deterjanı 5L', 'fairyltbl', 'productimage/fairy5Llimonbulasik.jpg', 33.00),
(154, 4, 'Familia Tuvalet Kağıdı 16lı', 'familywc', 'productimage/familia16liwc.jpg', 19.00),
(155, 4, 'Forest Kağıt Havlu 18M', 'forstkgt', 'productimage/forest6adet3metrehavlu.jpg', 33.00),
(156, 4, 'G.Clean ÇamaşırSuyu 5L', 'grnclncm', 'productimage/greenclean5Lcamasir.jpg', 42.00),
(157, 5, 'Huawei Data Kablosu', 'huaweidata', 'productimage/huaweidatakablo.jpg', 34.00),
(158, 5, 'Apple Şarj Aleti', 'apllsrj', 'productimage/iphonesarj.jpg', 159.00),
(159, 5, 'JBL Kablosuz Kulaklık', 'jblred', 'productimage/jblkablosuz.jpg', 179.00),
(160, 5, 'JBLQuantum Kulaklık', 'jblklklk', 'productimage/jblquantumkulak.jpg', 219.00),
(161, 5, 'JBLtune Kablosuz Kulaklık', 'jbltuneklk', 'productimage/jbltunekalbosuz.jpg', 169.00),
(162, 4, 'Kanz Islak Mendil 90lı', 'kanzislk', 'productimage/kanz90liislak.jpg', 17.00),
(163, 4, 'Komili Tuvalet Kağıdı 16lı', 'komiliwc16', 'productimage/komili16liwc.jpg', 23.00),
(164, 4, 'Komili Islak Mendil 80li', 'komiliislk', 'productimage/komiliislak80li.jpg', 9.00),
(165, 4, 'Konfor Tuvalet Kağıdı 12li', 'knfrwc12', 'productimage/konfor12liwc.jpg', 21.00),
(166, 4, 'Konfor Kağıt Havlu 6x20mt', 'knfrhzvl', 'productimage/konforhavlu6adet20metre.jpg', 45.00),
(167, 5, 'Kuula Şarj Adaptörü 3A', 'kulasarj', 'productimage/kuulasarj.jpg', 35.00),
(168, 4, 'Lily Islak Mendil 90lı', 'llyisl', 'productimage/lily90islak.jpg', 12.00),
(169, 4, 'Mare Tuvalet Kağıdı 16lı', 'marewc16', 'productimage/mare16liwc.jpg', 24.00),
(170, 5, 'Mediacholic Şarj Aleti', 'mediasaej', 'productimage/mediacholic.jpg', 45.00),
(171, 4, 'Mojito Limon Kolonyası 5L', 'limnklnymo', 'productimage/mojito5Lkolonya.jpg', 75.00),
(172, 4, 'Nesrin Kolonya 300ml', 'nesrnlmn', 'productimage/nesrin300mlkolonya.jpg', 24.00),
(173, 4, 'Only Kağıt Havlu 60mt', 'onlyhvl60', 'productimage/onlyhavlu60metre.jpg', 47.00),
(174, 4, 'Özgün Kolonya 400ml', 'ozgnlmnk', 'productimage/ozgun400mlkolonya.jpg', 19.00),
(175, 4, 'Papia Tuvalet Kağıdı 16lı', 'papiawc16', 'productimage/papia16liwc.jpg', 28.00),
(176, 5, 'Philips Kablosuz Kulaklık', 'phikblsz', 'productimage/philipskablosuz.jpg', 179.00),
(177, 5, 'Pioneer Kablosuz Kulaklık', 'pionkblo', 'productimage/pioneerkablosuz.jpg', 145.00),
(178, 5, 'Piranha Gamer Kulaklık', 'piranhagmr', 'productimage/piranhagamerkulak.jpg', 135.00),
(179, 4, 'Pril Bulaşık Deterjanı 1.5L', 'pril15l', 'productimage/pril1.5Lbulasik.jpg', 14.00),
(180, 4, 'Rebul Kolonyası 100ml', 'rebullav', 'productimage/rebullavanda100mlkolonya.jpg', 28.00),
(181, 5, 'Samsung Şarj Aleti', 'samsngsa', 'productimage/samsungsarj.jpg', 99.00),
(182, 4, 'Selin Limon Kolonyası 5L', 'sln5ltre', 'productimage/selin5Lkolonya.jpg', 58.00),
(183, 4, 'Selin Limon Kolonyası 150ml', 'selinkolony', 'productimage/selin150mlkolonya.jpg', 15.00),
(184, 4, 'Selpak Tuvalet Kağıdı 32li', 'selpak3232', 'productimage/selpak4x32.jpg', 54.00),
(185, 5, 'Sennheiser Kablolu Kulaklık', 'sennheis', 'productimage/sennheiserkablolu.jpg', 79.00),
(186, 4, 'Senso Kağıt Havlu 6lı', 'snskgthav', 'productimage/senso6lihavlu.jpg', 14.00),
(187, 4, 'Sevgins Kolonya 1L', 'sevgnskl', 'productimage/sevgins1Lkolonya.jpg', 13.00),
(188, 4, 'Soft Kolonya 250ml', 'sftlmnklny', 'productimage/soft250mlkolonya.jpg', 19.00),
(189, 4, 'Solo Kağıt Havlu 12li', 'solo12lihavlu', 'productimage/solo12lihavlu.jpg', 27.00),
(191, 4, 'Teno Kağıt Havlu 6lı', 'tenohvl6', 'productimage/teno6lihavlu.jpg', 28.00),
(192, 4, 'Tiyrus Kolonyası 0.2L', 'tiyrs200ml', 'productimage/tiyrus200mlkolonya.jpg', 18.00),
(193, 5, 'Ttec Şarj Aleti', 'ttecsrj', 'productimage/ttecsarj.jpg', 59.00),
(194, 3, 'Maydanoz 1 Demet', 'Mydnz1', 'productimage/maydanoz.jpg', 4.00),
(195, 3, 'Ayva Kg', 'ayv', 'productimage/ayva.jpg', 11.00),
(196, 3, 'Dereotu Bir Demet', 'drt1', 'productimage/dereotu.jpg', 6.00),
(197, 2, 'Efsane Baldo Pirin. 1Kg', 'ebp1', 'productimage/pirinc.jpg', 28.00),
(198, 4, 'Vichy Bulaşık Süngeri 3\'lü', 'vbss3', 'productimage/vichysihirlibulasik.jpg', 11.00),
(200, 7, 'AHM Balık Yemi 200Gr', 'ahmby', 'productimage/balik1.jpg', 25.99),
(201, 7, 'Cichlid Algde Balık Yemi 50gr', 'caby50', 'productimage/balik2.jpg', 10.99),
(202, 7, 'AHM Balık Yemi 150gr', 'ahmslby150', 'productimage/balik3.jpg', 27.99),
(203, 6, 'Deniz Çipura Kg', 'dc1', 'productimage/1cipura.jpg', 75.00),
(204, 6, 'Olta Dişli Kg', 'disli', 'productimage/1cinekoptoplu.jpg', 120.00),
(205, 6, 'Granyöz Kg', 'granyoz', 'productimage/1granyoz.jpg', 225.99),
(206, 6, 'İskorpit Kg', 'isk', 'productimage/1iskorpit.jpg', 54.99),
(207, 6, 'İğne 4:No 2 Adet ', 'igne', 'productimage/1kalp.jpg', 34.99),
(208, 6, 'Levrek 800-700 Gr', 'levro', 'productimage/1levrek.jpg', 99.99),
(209, 6, 'Zargana Kg', 'garfish', 'productimage/1zargana.jpg', 39.99),
(210, 6, 'Levrek Olta Kg', 'levkg', 'productimage/1levro.jpg', 149.99),
(213, 6, 'Boğazın Sultanı Kg', 'lufer', 'productimage/1lufer.jpg', 149.99),
(215, 6, 'Sarışın Kanat Kg', 'kralsmall', 'productimage/1sari.jpg', 109.99);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
