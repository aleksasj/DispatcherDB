IF NOT EXISTS(SELECT * FROM dbo.[User])
BEGIN  
	INSERT INTO dbo.[Address] (Title, Latitude, Longitude) 
	VALUES 
		('Smolensko g. 31, 03201 Vilnius', 54.67466055372043, 25.25920651915098),
		('Vytauto g. 23, 08119 Vilnius', 54.691144792341746, 25.257381885247835),
		('Latvių g. 43, 08113 Vilnius', 54.694739037317746, 25.245589616421988),
		('Bebrų g. 10, 08112 Vilnius', 54.69574820663389, 25.24907598107207),
		('Saltoniškių g. 34, 08105 Vilnius', 54.69798568910168, 25.258818535087805),
		('Krokuvos g. 6A, 09314 Vilnius', 54.696551466891876, 25.28392181617451),
		('Kazliškių g. 13-5, 09204 Vilnius', 54.69771021780521, 25.29090658866728),
		('Širvintų g. 54, 08215 Vilnius', 54.7079931272092, 25.27843007228767),
		('Raitininkų g. 6, 09232 Vilnius', 54.69291287618337, 25.29449370244596),
		('Aukštaičių g. 30, 11341 Vilnius', 54.67881544759504, 25.308925010403822),
		('Liepkalnio g. 46a, 02105 Vilnius', 54.66304652209033, 25.300337109527405),
		('A15 75, 02120 Vilnius', 54.652591398485335, 25.302385857532126),
		('Dariaus ir Girėno g. 19, 02189 Vilnius', 54.654077899379594, 25.26762424862903),
		('Eišiškių pl. 27, 02184 Vilnius', 54.64480191520702, 25.26209035308856),
		('Rodūnios Sodų 11-oji g. 11, 02191 Vilnius', 54.62770021860784, 25.27513388985258),
		('Gariūnų g. 68, 02300 Vilnius', 54.660966508624035, 25.1588123222244),
		('Upės g. 9, 09308 Vilnius', 54.67507228433082, 25.17006740022722),
		('Ukmergės g. 373, 12107 Vilnius', 54.74357907680331, 25.227307878241046),
		('Gariūnų g. 70, 02300 Vilnius', 54.66034958699497, 25.159240670756297),
		('Žaliųjų Ežerų g. 49, 08406 Vilnius', 54.74868219691851, 25.292929758843435);


	INSERT INTO dbo.[User] (Username, [Password], [Role]) 
	VALUES 
		('PetrasR.', 'pswd', 'Driver'), -- WORKING 0 ORDER COULD ACCEPT NEW ONE
		('PetrasT.', 'pswd', 'Driver'), -- WORKING 1 ACTIVE ORDER
		('PetrasA.', 'pswd', 'Driver'), -- WORKING BUT OUT OF RANGE NEW ORDER (at Grigiškėse)
		('PetrasV.', 'pswd', 'Driver'), -- NOT WORKING BUT HAS WORK LOG
		('PetrasD.', 'pswd', 'Driver'), -- NOT WORKING AND NO WORKING LOG
		('PetrasC.', 'pswd', 'Driver'); -- WORKING 0 ORDER COULD ACCEPT NEW ONE


	INSERT INTO dbo.[Location] (DriverId, Latitude, Longitude) 
	VALUES 
		(1, 54.69291287618337, 25.1588123222244), 
		(2, 54.694739037317746, 25.292929758843435), 
		(3, 54.687054937322756, 25.054033227611466),
		(6, 54.660966508624035, 25.258818535087805);

	INSERT INTO dbo.[WorkLog] (UserId, Working) 
	VALUES 
		(1, 1),
		(1, 0),
		(1, 1),
		(2, 1),
		(2, 0),
		(2, 1),
		(2, 0),
		(2, 1),
		(3, 1),
		(4, 1),
		(4, 0),
		(4, 1),
		(4, 0),
		(6, 1),
		(6, 0),
		(6, 1);

	INSERT INTO dbo.[Order] (DriverId, [Name], Phone, PickupId, DestinationId, Comment, [Status]) 
	VALUES 
		(1, 'Tomas', '+370635465132', 1, 5, 'Pajamk mane nuo durų', -1),
		(1, 'Mantas', '+370635461231', 8, 16, '', 3),
		(1, 'Povilas', '+3706352', 12, 3, 'Pajamk mane nuo durų', 3),
		(2, 'Zigmas', '+3706352', 5, 9, 'Privažiuok iš galo', 1),
        (null, 'Antanas', '85464134687', 10, 15, 'Atvežam bananų', 0);
END