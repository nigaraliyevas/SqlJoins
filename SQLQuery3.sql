Create Database Turboaz
Use Turboaz

Create Table Elan
(
 Id int Primary Key Identity,
 ElanName nvarchar(50) Not Null,
 Kredit bit,
 Barter bit,
 Vinkod nvarchar(20),
 Foto image,
 Details1Id int Foreign Key References Avtomobilintechizatı(Id),
 Details2Id int Foreign Key References MasinVeziyyeti(Id),
 BazarId int Foreign Key References Bazar(Id),
 SahibId int Foreign Key References Sahiblik(Id),
 ElaqeId int Foreign Key References Elaqe(Id),
 ModelId int Foreign Key References Model(Id)
)

Create Table Marka
(
 Id int Primary Key Identity,
 MarkaName nvarchar(50) Not Null
 )

 Create Table Model
(
 Id int Primary Key Identity,
 ModelName nvarchar(50) Not Null,
 MuherrikinGucu int Not Null,
 MuherrikId int Foreign Key References MuherrikinHecmi(Id),
 IlId int Foreign Key References Il(Id),
 QutuId int Foreign Key References SuretlerQutusu(Id),
 OturucuId int Foreign Key References Oturucu(Id),
 YanacaqId int Foreign Key References YanacaqNovu(Id),
 RengId int Foreign Key References Reng(Id),
 BanId int Foreign Key References BanNovu(Id),
 DetailsId int Foreign Key References ModelDetails(Id),
 MarkaId int Foreign Key References Marka(Id)
 )

  Create Table ModelDetails
(
 Id int Primary Key Identity,
 Yurus int,
 YurusVahidi nvarchar(10) Not Null,
 Qiymet int,
 Valyuta nvarchar(10) Not Null,
 )

 Create Table BanNovu
(
 Id int Primary Key Identity,
 BanName nvarchar(50) Not Null
 )

 Create Table Reng
(
 Id int Primary Key Identity,
 ColorName nvarchar(50) Not Null
 )

 Create Table Sahiblik
(
 Id int Primary Key Identity,
 Nomresi nvarchar(50) Not Null
 )

 Create Table YanacaqNovu
(
 Id int Primary Key Identity,
 YanacaqName nvarchar(50) Not Null
 )

 Create Table Oturucu
(
 Id int Primary Key Identity,
 OturucuName nvarchar(50) Not Null
 )

 Create Table SuretlerQutusu
(
 Id int Primary Key Identity,
 QutuName nvarchar(50) Not Null
 )

 Create Table Il
(
 Id int Primary Key Identity,
 Ilinnomresi nvarchar(50) Not Null
 )

 Create Table MuherrikinHecmi
(
 Id int Primary Key Identity,
 MHecmi nvarchar(50) Not Null
 )

 Create Table Bazar
(
 Id int Primary Key Identity,
 BazarName nvarchar(50) Not Null
 )

 Create Table MasinVeziyyeti
(
 Id int Primary Key Identity,
 Vuruğu bit,
 Rengi bit,
 QezaorEhtiyatHissesi bit
 )

 Create Table Avtomobilintechizatı
(
 Id int Primary Key Identity,
 Yüngüllehimlidisklər bit,
 [ABS] bit,
 Lyuk bit,
 Yağışsensoru bit,
 Mərkəziqapanma bit,
 Parkradarı bit,
 Kondisioner bit,
 Oturacaqlarınisidilməsi bit,
 Dərisalon bit,
 Ksenonlampalar bit,
 Arxagörüntükamerası bit,
 Yanpərdələr bit,
 Oturacaqlarınventilyasiyası bit
 )

  Create Table Elaqe
(
 Id int Primary Key Identity,
 FullName nvarchar(50) Not Null,
 Email nvarchar(50) Not Null,
 PhoneNumber nvarchar(20) Not Null,
 SeherId int Foreign Key References Seher(Id)
 )

 Create Table Seher
(
 Id int Primary Key Identity,
 SeherName nvarchar(50) Not Null
 )