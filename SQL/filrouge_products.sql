SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products`(
   `pro_id` INT NOT NULL auto_increment,
   `pro_name` VARCHAR(50) NOT NULL,
   `pro_label` VARCHAR(50) NOT NULL,
   `pro_desc` VARCHAR(50) NOT NULL,
   `pro_price` DECIMAL(5,2) NOT NULL,
   `pro_pic` VARCHAR(50) NOT NULL,
   `subcat_id` INT NOT NULL,
   `sup_id` INT NOT NULL,
   PRIMARY KEY (`pro_id`),
   FOREIGN KEY (subcat_id) REFERENCES Categories (`subcat_id`),
   FOREIGN KEY (sup_id) REFERENCES Suppliers (`sup_id`)
);


INSERT INTO `products` (`pro_id`, `pro_name`, `pro_label`, `pro_desc`, `pro_price`, `pro_pic`, `subcat_id`, `sup_id`) VALUES
(1, "vulputate, risus", "a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, ", "odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim", "€1994,66", "DEC06E16-2679-04DF-3595-B1459040C86B", 50, 13),
(2, "risus", "erat eget ipsum. Suspendisse sagittis. Nullam", "Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem.", "€1402,58", "33470BC2-B7D9-CFCB-714E-A5E33243EA45",35,33),
(3, "magnis dis parturient montes, nascetur", "consequat enim diam", "egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, ", "€1439,61", "D1C103CD-A4E8-F242-89D6-2AB0FE3AA872", 27, 78),
(4, "Vivamus", "magna sed dui. Fusce aliquam, enim nec tempus scelerisque, ", "eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac", "€1415,31", "D533F4FD-ED3D-D90F-B58C-AF194B0A0576", 54, 19),
(5, "nisl elementum purus, accumsan", "lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non", "Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut", "€1919,34", "EEC17910-9654-F581-F29D-68DD9C392D40", 25, 66),
(6, "natoque penatibus", "quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat", "amet ornare lectus justo eu arcu. Morbi sit amet massa.", "€988,32", "5A63AE2C-3801-0F49-7FE4-AD95096FDA5A", 23, 44),
(7, "Donec vitae erat vel", "sagittis placerat. Cras dictum ultricies ligula. Nullam enim.", "eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis", "€1834,30", "A745D0D2-174A-D524-0425-FE1FCBBDD265",23,77),
(8, "Quisque libero lacus, ", "lorem, vehicula et, rutrum eu, ", "est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus", "€144,21", "CB735DF5-4ACA-488C-BF61-365853216A6F", 3, 79),
(9, "nibh vulputate mauris", "sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae", "Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod", "€1798,64", "58D8BAE3-4F4B-28C7-A9CE-A9BDA6D233B0", 18, 24),
(10, "in", "in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet", "gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat", "€108,95", "C33A9002-9A4B-53B2-FE62-BBD699BB110D", 48, 99),
(11, "erat, eget tincidunt", "urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula", "non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris", "€1658,78", "29F9BE04-A57B-17C3-19A0-831DF89BE6E2", 54, 8),
(12, "Integer in magna. Phasellus", "nec", "et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla", "€764,50", "6CB3156E-A547-325C-2A8A-C65A06257B13", 46, 35),
(13, "sociosqu ad litora torquent", "metus.", "euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc", "€946,67", "1EC899B8-B6F2-2045-A67A-B2A48B40318D", 24, 88),
(14, "non quam.", "elementum at, egestas", "dui nec urna suscipit nonummy.", "€1278,23", "51076BC2-177C-B523-5B14-93A152371C39", 7, 68),
(15, "odio, auctor vitae, aliquet", "dui", "ipsum. Donec sollicitudin adipiscing ligula.", "€1624,49", "08C4322F-47D7-A18A-2C95-6E2BD54CA257", 42, 8),
(16, "Proin dolor. Nulla semper tellus", "eget metus eu erat semper rutrum. Fusce", "vulputate, risus a ultricies adipiscing, enim", "€1636,23", "51EB1C8C-F94F-7F95-B524-B77B8D4DCDC4", 34, 13),
(17, "erat, eget tincidunt", "imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla", "sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis", "€1749,98", "22459796-557F-92ED-BD44-207FEEE39643", 22, 57),
(18, "aliquam", "Fusce fermentum fermentum arcu. Vestibulum ante ipsum", "vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum.", "€111,61", "72CB0C29-7771-28AB-89F7-85B24C9C81C9", 17, 58),
(19, "Phasellus elit pede, ", "a odio semper cursus. Integer mollis. Integer", "eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis", "€431,97", "7D8B248F-2731-B8AD-DD08-06FD0C5FE4A2", 17, 60),
(20, "eu dui.", "sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, ", "adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget", "€1352,59", "4ABC2C35-1565-AD2C-40E9-AF5682FF3E23", 9, 92),
(21, "ipsum cursus vestibulum.", "egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, ", "lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris", "€519,17", "0BC09632-98B5-13E1-BAC3-FE5FD4E5DD95", 44, 100),
(22, "congue. In scelerisque scelerisque dui.", "metus. Vivamus euismod urna. Nullam lobortis quam", "Phasellus elit pede, malesuada vel, venenatis", "€1458,40", "47140D86-1821-E0F9-C335-9B978FE386AD", 53, 89),
(23, "nec, euismod in, ", "est ac mattis semper, dui lectus rutrum", "sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies", "€1931,57", "256B37A7-9143-15FC-CE50-11F44D9628D2", 13, 41),
(24, "justo nec ante. Maecenas mi", "ac", "ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at", "€1620,14", "4CAD2B56-EEB6-F6EC-D84F-73A5DB9837FF", 32, 53),
(25, "venenatis vel, faucibus", "Mauris magna. Duis dignissim tempor arcu. Vestibulum ut", "orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula", "€173,57", "B1B4530F-7A60-2E0B-6848-DBC868C75A7A", 20, 62),
(26, "Donec", "orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et", "varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse", "€45,34", "13715803-1D79-A5ED-7BB9-145904B14E24", 34, 65),
(27, "penatibus", "mattis. Cras", "odio. Nam interdum enim non nisi. Aenean eget metus. In nec", "€1818,64", "CF65C3E9-976E-72A4-37B8-4DCB1CDE7EBE", 14, 71),
(28, "Integer vitae nibh. Donec", "eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, ", "ante. Nunc", "€631,24", "F71DBFE3-F3B0-21EF-8BF9-00C28CF5CCB2", 26, 48),
(29, "dolor.", "cursus luctus, ipsum leo elementum sem, vitae aliquam eros", "fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus.", "€1674,88", "1A6DF260-672C-A1B2-7C83-2E13BD4E0AC8", 31, 60),
(30, "luctus et", "nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi.", "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis.", "€1928,71", "B687FAFE-84A7-0BFE-5F01-EAAF95AE0817", 11, 24),
(31, "mattis.", "suscipit nonummy. Fusce fermentum fermentum arcu.", "a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer", "€398,58", "FDC683F3-8BF5-05AE-B418-6D821EA6D89A", 24, 24),
(32, "nulla. Cras eu tellus", "ornare.", "magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum", "€912,37", "C719A18C-28B5-601F-DADE-122DE0F3BA9D",40,76),
(33, "semper egestas, urna justo", "mauris blandit mattis. Cras eget nisi", "Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor", "€851,38", "25D1285B-43CB-3CDF-DB92-65D59980A958", 50, 56),
(34, "Nunc", "in faucibus orci luctus", "porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu", "€217,90", "42AB1AE4-3EF4-4FF6-FC9D-DE31543D6E2D", 37, 39),
(35, "pede sagittis", "non, lobortis quis, pede. Suspendisse dui.", "id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, ", "€1076,91", "2034800B-3769-436C-04A2-3EA500DF7491", 2, 71),
(36, "sociosqu ad litora torquent per", "tristique ac, eleifend vitae, erat. Vivamus", "rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad", "€1931,98", "FAFDC6C8-A1A5-6576-9692-36AEDB26EB94", 31, 76),
(37, "Duis at lacus. Quisque purus", "nisi magna sed dui. Fusce aliquam, ", "odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, ", "€1677,79", "AA417E99-A6EA-A34A-880B-7DDBD5102B39", 14, 55),
(38, "penatibus et magnis dis", "feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus", "ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem", "€1028,05", "2647F4EE-8AC8-B5F0-8280-138D145C3EE4", 2, 56),
(39, "a ultricies adipiscing, ", "nunc est, mollis non, cursus non, ", "urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce", "€777,40", "6C9347E5-23F6-9411-27E5-AD869E4C23C4", 14, 19),
(40, "orci, consectetuer", "dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti", "amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non", "€1699,91", "46D1C741-EF36-4A41-962B-160DFB05DC03", 55, 51),
(41, "aliquet nec, imperdiet nec, leo.", "mollis. Duis sit amet", "auctor ullamcorper, nisl arcu iaculis enim, sit", "€1307,27", "D04D358B-78BE-F36B-49AE-B50C10532FBC", 39, 13),
(42, "luctus ut, pellentesque eget, ", "risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum", "ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus.", "€1570,40", "7491F8E9-B844-3661-7EA5-707F50201050", 5, 32),
(43, "Praesent eu dui. Cum sociis", "metus. Aliquam erat volutpat.", "pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi.", "€1328,40", "B93DEBBA-62DB-4748-8E34-14A286577194", 44, 23),
(44, "nisi a", "erat. Sed nunc", "auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit.", "€897,07", "8E8E89A5-EF14-0EBA-217E-03C00A9C19A9", 21, 60),
(45, "magnis dis parturient montes, nascetur", "Vivamus nibh", "penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis", "€557,46", "E4BB701D-EA52-8951-9786-C5588AD3014B", 38, 96),
(46, "erat. Vivamus", "lorem, eget mollis", "hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, ", "€1635,91", "618D6141-E69A-EE72-E5EB-6969C7D76593", 30, 62),
(47, "libero", "eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero.", "risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum", "€673,31", "9DF9C0C4-4FC3-7153-223D-01C8B80CBAC5", 44, 14),
(48, "pretium neque. Morbi", "nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis", "tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum", "€599,16", "2AB3C788-CEA9-C675-A054-C453641C3FE3",33,10),
(49, "neque.", "arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, ", "et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, ", "€808,72", "6A0C87E7-95C8-CCE8-B88A-E58D7FA7966D", 38, 24),
(50, "a tortor.", "metus. Aenean sed pede nec", "purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque.", "€1713,33", "08F517DC-0754-EAA0-B7A0-B197EECFC2C3", 16, 12),
(51, "tempor augue", "egestas. Sed pharetra, felis", "diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris", "€65,72", "29A06A76-3C09-A1D2-4627-97D9276610AF", 49, 9),
(52, "et", "congue, ", "mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus", "€1049,43", "767EF3CF-6023-DB52-B6F0-7A9E1A14266E", 55, 69),
(53, "Cum", "id nunc interdum feugiat. Sed nec metus facilisis lorem", "ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et", "€511,32", "1D6B1956-AD67-451B-D34E-2D5A7C7420DB", 15, 67),
(54, "tempus non, lacinia at, ", "ipsum. Curabitur consequat, lectus", "tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique", "€1622,29", "FAE85906-9927-2E20-7ACB-7FC8DE6C7D08", 8, 83),
(55, "dolor vitae", "elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec", "nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus", "€1937,08", "AD0FD0F3-C0F6-588E-3947-BAF61D651934", 18, 90),
(56, "quam, elementum", "tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus", "Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget", "€262,45", "0EA359E3-B031-7AF3-34C4-50A60050DCD5", 43, 65),
(57, "consequat", "risus. Donec egestas. Aliquam nec", "Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam", "€1254,04", "A4B61873-18B1-6EA1-8DED-807EE7DAE743", 1, 83),
(58, "posuere", "libero. Integer in magna. Phasellus", "enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus.", "€1126,12", "5D6AB96C-EF3E-8BCC-6AF0-3C2DA355A530", 18, 20),
(59, "Aliquam gravida mauris", "Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero dui", "amet, ", "€426,71", "F46E4B3F-96A0-8B5C-8F66-A9F4AC9F1449", 28, 10),
(60, "nec urna et arcu", "sapien, gravida non, sollicitudin", "enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non", "€1751,59", "F4B09254-F817-03F6-CF0F-9BD3A9E9020A", 5, 53),
(61, "consectetuer mauris id", "vitae dolor. Donec fringilla. Donec feugiat metus sit", "dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae", "€1344,82", "CAEF0342-0823-A4E2-C1B3-3E3A844AC4DA", 35, 19),
(62, "Donec fringilla. Donec", "euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris", "In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget", "€1727,32", "8C264FE7-9941-E956-5936-27B5688B7253", 44, 20),
(63, "per inceptos hymenaeos. Mauris ut", "tempus non, lacinia at, iaculis quis, pede. Praesent", "Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla.", "€328,08", "3E4849A2-4E02-0E05-F805-A53D96B7F447", 9, 13),
(64, "Morbi quis urna. Nunc", "ipsum dolor sit amet, consectetuer adipiscing elit. Etiam", "penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed", "€1711,70", "B4253998-F334-DBFF-4B97-7E4BD5E33E9E", 25, 38),
(65, "felis, adipiscing", "lorem ac", "Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas", "€290,16", "C6BEC45F-E789-1E10-8374-BD5B123CB439", 12, 39),
(66, "pede, ultrices a, auctor non, ", "Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum", "turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim", "€1218,21", "DF94E239-AC88-1094-5EA4-7FB2F7E2DAB6", 52, 84),
(67, "montes, nascetur ridiculus mus. Proin", "dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris", "augue id ante dictum cursus. Nunc mauris elit, dictum", "€1200,62", "699332FE-F00C-240F-4763-C7FF9BCB04B4", 18, 98),
(68, "dolor vitae", "nec, malesuada ut, sem. Nulla interdum.", "luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, ", "€248,84", "81920722-B81C-3A07-7B05-691D6A8EF431", 52, 33),
(69, "nec tempus", "vitae diam. Proin dolor. Nulla semper tellus id", "a, malesuada id, erat. Etiam vestibulum", "€561,58", "132C867A-34B1-E8A0-9A53-2327A3663904", 15, 72),
(70, "diam", "pharetra ut, pharetra", "turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem", "€879,93", "CB093978-9436-1680-E6AA-46EB7C469CEC", 18, 90),
(71, "erat", "Suspendisse aliquet molestie tellus. Aenean egestas", "magna. Nam ligula elit, pretium et, rutrum non, ", "€316,41", "609F317F-3351-AE0C-7484-0105FD4F3A8B", 46, 26),
(72, "nibh vulputate", "amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, ", "ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et", "€1738,36", "ACA7B33F-709B-8777-9FDC-32E42A3F37C7", 5, 38),
(73, "porttitor vulputate, posuere vulputate, ", "tristique neque venenatis", "lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl.", "€1521,42", "B71F008E-404F-EF40-7BCB-87D74EBE649A", 52, 49),
(74, "bibendum", "eu eros. Nam consequat dolor vitae dolor. Donec", "euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed", "€43,59", "DE5131EB-4177-57BB-B048-55DDE55F77C6", 5, 93),
(75, "purus", "fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem", "quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum.", "€1367,60", "73DEB5DB-9B95-ED33-04CA-51AA65B5DE47", 20, 24),
(76, "orci lacus vestibulum lorem, sit", "in consequat", "Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam", "€1133,27", "5F7A8DD6-5656-2A4B-FAAB-56168D5B60A5", 12, 4),
(77, "lacus. Nulla tincidunt, ", "erat vitae risus. Duis a mi fringilla mi lacinia mattis.", "venenatis", "€1765,89", "AE63753D-B933-8BA6-8A96-D8CD54401D03", 19,  59),
(78, "lobortis, nisi nibh lacinia", "Vestibulum", "nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis", "€941,36", "96A4A0EB-D4D1-9C5C-4A09-9A823EEE378F", 35, 43),
(79, "porttitor scelerisque neque. Nullam nisl.", "urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula.", "ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant", "€736,83", "AE2E14F6-1B59-1146-2E62-A8605D4E5C4B", 36, 18),
(80, "vestibulum nec, ", "parturient montes, nascetur ridiculus mus. Proin", "vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut", "€226,13", "5F75B182-4B05-0448-B3A9-9CCB107459F9", 1, 51),
(81, "vitae aliquam eros turpis non", "lorem eu metus. In", "enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet", "€1803,46", "22050C6B-75A3-3317-8762-D4E6D2FF1209", 47, 76),
(82, "Aliquam gravida mauris", "parturient montes, nascetur ridiculus mus. Donec dignissim", "quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet", "€266,63", "5EEB98AA-AA48-DD94-B76F-20961F6A0F86", 31, 78),
(83, "hendrerit a, ", "nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ", "mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse", "€228,42", "3E13AA97-CBA5-14E0-A998-21BAEA9401C9", 8, 6),
(84, "ultrices, mauris ipsum porta elit, ", "pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus", "dolor, nonummy ac, feugiat non, lobortis quis, pede.", "€432,05", "E2FB65F3-35F3-8229-8F72-89A668A6FCD1", 37, 78),
(85, "molestie. Sed id risus quis", "Cras eget nisi dictum augue malesuada malesuada. Integer id magna", "in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec", "€1335,91", "6154F703-44F7-336C-9169-3C115E245EEF", 43, 97),
(86, "pede blandit", "sed pede nec", "enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin", "€1188,60", "2BED1A37-FE37-B556-A776-5A22A94B3989", 12, 77),
(87, "amet orci. Ut sagittis", "nec metus facilisis lorem", "leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras", "€716,31", "3C1B18F9-4022-2053-D68F-A6092CE4810F", 5, 82),
(88, "ac libero nec ligula", "elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum.", "dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur", "€1670,78", "A4E0BEFC-D262-F622-1BBB-73BB7218618C", 37, 23),
(89, "ac, eleifend", "quam a felis ullamcorper viverra. Maecenas", "tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, ", "€1848,02", "13FA7D08-6475-6ECC-7F77-DE14EBF0536D", 5, 21),
(90, "Mauris blandit enim", "et magnis dis parturient montes, nascetur ridiculus mus.", "Integer vulputate, ", "€891,70", "1075E9C7-7DC2-280F-BE81-C4ECC7D48F70", 54, 38),
(91, "In condimentum.", "velit dui, semper et, lacinia vitae, sodales", "cursus et, magna. Praesent interdum ligula eu enim.", "€695,94", "701D0A4C-78B7-1900-B11C-73F1C44ED575", 5, 64),
(92, "odio. Etiam ligula tortor, dictum", "ullamcorper. Duis cursus, diam at", "et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices", "€104,56", "6DE7BF10-E430-6AC3-3005-E5955FE0E733", 43, 76),
(93, "quam. Pellentesque", "mi lorem, vehicula et, rutrum eu, ultrices sit", "dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui.", "€805,76", "AB867CBE-0F8C-2522-ED84-20E897B0C04E", 26, 34),
(94, "Ut", "nulla vulputate dui, nec tempus mauris erat eget", "eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus", "€338,16", "E3D77002-71AF-579D-52DD-16268C7BE115", 55, 69),
(95, "elit. Nulla", "nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, ", "mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor", "€93,61", "4896F954-EBE6-5AD0-FFFA-D9C48E15288F", 2, 58),
(96, "mi.", "erat, in consectetuer ipsum nunc id enim.", "Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed", "€688,66", "8668145A-B635-DA7F-0D9A-5BDD6D662A1D", 40, 66),
(97, "mus. Aenean eget magna.", "luctus sit amet, faucibus ut, nulla. Cras eu tellus", "volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, ", "€1525,48", "C4C439FF-E5CA-E7A5-8688-BFE19054C203", 31, 70),
(98, "ac, fermentum vel, mauris. Integer", "auctor velit. Aliquam nisl. Nulla eu", "facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur", "€1516,19", "6BE0EECA-8E82-B985-283C-CC0D1E62F069", 44, 25),
(99, "Nunc", "Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet", "tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus", "€1431,91", "DE3982ED-86AD-8E7F-3E0A-BA5C2BA7C0DD", 26, 36),
(100, "erat, in consectetuer ipsum nunc", "ornare. Fusce mollis. Duis sit amet", "varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem", "€289,74", "74A747BA-DCAE-7BD1-872A-BCC4C6226D26", 38, 77);
