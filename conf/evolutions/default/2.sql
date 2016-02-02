# --- !Ups

create table VEHICLES ("license" CHAR(10) NOT NULL PRIMARY KEY,"model" INTEGER NOT NULL,"registration-date" DATE NOT NULL,"mot-date" DATE NOT NULL);
create table MODELS ("id" INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL PRIMARY KEY,"model" VARCHAR NOT NULL);
alter table VEHICLES add constraint "model" foreign key("model") references MODELS("id") on update NO ACTION on delete NO ACTION;

insert into MODELS ("model") values ('TEST');
insert into MODELS ("model") values ('ABARTH');

insert into VEHICLES("license","model","registration-date","mot-date") values ('ABIGCAR', 1, '2004-01-01', '2016-03-01');

insert into MODELS ("model") values ('AC');
insert into MODELS ("model") values ('AC (ELECTRIC)');
insert into MODELS ("model") values ('ACCESS');
insert into MODELS ("model") values ('ACURA');
insert into MODELS ("model") values ('ADLY');
insert into MODELS ("model") values ('AEBI');
insert into MODELS ("model") values ('AEON');
insert into MODELS ("model") values ('AGCO ALLIS');
insert into MODELS ("model") values ('AGRIFAC');
insert into MODELS ("model") values ('AIE');
insert into MODELS ("model") values ('AIXAM');
insert into MODELS ("model") values ('AJP');
insert into MODELS ("model") values ('AJS');
insert into MODELS ("model") values ('ALBION');
insert into MODELS ("model") values ('ALEXANDER DENNIS');
insert into MODELS ("model") values ('ALFA ROMEO');
insert into MODELS ("model") values ('ALFER');
insert into MODELS ("model") values ('ALL WHEEL DRIVE');
insert into MODELS ("model") values ('APEX');
insert into MODELS ("model") values ('APPLIED SWEEPER');
insert into MODELS ("model") values ('APRILIA');
insert into MODELS ("model") values ('ARIX ROTARY');
insert into MODELS ("model") values ('ARO');
insert into MODELS ("model") values ('ASIA');
insert into MODELS ("model") values ('ASQUITH');
insert into MODELS ("model") values ('ASTON MARTIN');
insert into MODELS ("model") values ('ATALA');
insert into MODELS ("model") values ('ATLAS');
insert into MODELS ("model") values ('AUDI');
insert into MODELS ("model") values ('AUSTIN');
insert into MODELS ("model") values ('AUSTIN HEALEY');
insert into MODELS ("model") values ('AUSTIN MORRIS');
insert into MODELS ("model") values ('AUSTIN-MORRIS');
insert into MODELS ("model") values ('AUTOSAN');
insert into MODELS ("model") values ('AUTO-TRAIL');
insert into MODELS ("model") values ('AVANTI');
insert into MODELS ("model") values ('AVELING BARFORD');
insert into MODELS ("model") values ('AVIA');
insert into MODELS ("model") values ('AXR');
insert into MODELS ("model") values ('BABETTA');
insert into MODELS ("model") values ('BAIMO');
insert into MODELS ("model") values ('BAJAJ');
insert into MODELS ("model") values ('BAOTIAN');
insert into MODELS ("model") values ('BARON');
insert into MODELS ("model") values ('BARONI');
insert into MODELS ("model") values ('BAROSSA');
insert into MODELS ("model") values ('BASHAN');
insert into MODELS ("model") values ('BATAVUS');
insert into MODELS ("model") values ('BATISTINIS');
insert into MODELS ("model") values ('BCS');
insert into MODELS ("model") values ('BEDFORD');
insert into MODELS ("model") values ('BEELINE');
insert into MODELS ("model") values ('BELARUS');
insert into MODELS ("model") values ('BENELLI');
insert into MODELS ("model") values ('BENFORD');
insert into MODELS ("model") values ('BENTLEY');
insert into MODELS ("model") values ('BENYE');
insert into MODELS ("model") values ('BETA');
insert into MODELS ("model") values ('BETTER');
insert into MODELS ("model") values ('BIMOTA');
insert into MODELS ("model") values ('BITELLI');
insert into MODELS ("model") values ('BLATA');
insert into MODELS ("model") values ('BLAW KNOX');
insert into MODELS ("model") values ('BMC');
insert into MODELS ("model") values ('BMW');
insert into MODELS ("model") values ('BOB CAT');
insert into MODELS ("model") values ('BOMAG');
insert into MODELS ("model") values ('BOMBARDIER');
insert into MODELS ("model") values ('BOND');
insert into MODELS ("model") values ('BONSER');
insert into MODELS ("model") values ('BOOM');
insert into MODELS ("model") values ('BOVA');
insert into MODELS ("model") values ('BRA');
insert into MODELS ("model") values ('BRANSON');
insert into MODELS ("model") values ('BREMACH');
insert into MODELS ("model") values ('BRISTOL');
insert into MODELS ("model") values ('BRISTOL (BLMC)');
insert into MODELS ("model") values ('BRIT JEFFREY DIAMOND');
insert into MODELS ("model") values ('BRITISH TRACKSTAR');
insert into MODELS ("model") values ('BRP');
insert into MODELS ("model") values ('BSA');
insert into MODELS ("model") values ('BTM');
insert into MODELS ("model") values ('BUELL');
insert into MODELS ("model") values ('BUGATTI');
insert into MODELS ("model") values ('BUICK');
insert into MODELS ("model") values ('BULTACO');
insert into MODELS ("model") values ('BZR');
insert into MODELS ("model") values ('CADILLAC');
insert into MODELS ("model") values ('CAETANO');
insert into MODELS ("model") values ('CAGIVA');
insert into MODELS ("model") values ('CAN-AM');
insert into MODELS ("model") values ('CAPRI');
insert into MODELS ("model") values ('CARBODIES');
insert into MODELS ("model") values ('CASAL');
insert into MODELS ("model") values ('CASE');
insert into MODELS ("model") values ('CASE IH');
insert into MODELS ("model") values ('CATERHAM');
insert into MODELS ("model") values ('CATERPILLAR');
insert into MODELS ("model") values ('CCM');
insert into MODELS ("model") values ('CCS');
insert into MODELS ("model") values ('CECTEK');
insert into MODELS ("model") values ('CELCO PROFIL');
insert into MODELS ("model") values ('CF MOTO');
insert into MODELS ("model") values ('CH RACING');
insert into MODELS ("model") values ('CHAMP');
insert into MODELS ("model") values ('CHANG MING');
insert into MODELS ("model") values ('CHAUSSON');
insert into MODELS ("model") values ('CHEVROLET');
insert into MODELS ("model") values ('CHEVROLET GMC');
insert into MODELS ("model") values ('CHITUMA');
insert into MODELS ("model") values ('CHONGQING');
insert into MODELS ("model") values ('CHRYSLER');
insert into MODELS ("model") values ('CHUNLAN');
insert into MODELS ("model") values ('CI MOTORHOME');
insert into MODELS ("model") values ('CITROEN');
insert into MODELS ("model") values ('CKR');
insert into MODELS ("model") values ('CLAAS');
insert into MODELS ("model") values ('CLARK');
insert into MODELS ("model") values ('CLASSIC CUSTOM');
insert into MODELS ("model") values ('CLASSIC REPLICAS');
insert into MODELS ("model") values ('CLAYTON');
insert into MODELS ("model") values ('COLEMAN MILNE');
insert into MODELS ("model") values ('COLT');
insert into MODELS ("model") values ('COMMER');
insert into MODELS ("model") values ('CORVETTE');
insert into MODELS ("model") values ('COSSACK');
insert into MODELS ("model") values ('COUNTY COMM CARS');
insert into MODELS ("model") values ('COVENTRY CLIMAX');
insert into MODELS ("model") values ('CPI');
insert into MODELS ("model") values ('CROMPTON (LEYLAND)');
insert into MODELS ("model") values ('CSR');
insert into MODELS ("model") values ('CTM');
insert into MODELS ("model") values ('CZ');
insert into MODELS ("model") values ('DACIA');
insert into MODELS ("model") values ('DAELIM');
insert into MODELS ("model") values ('DAEWOO');
insert into MODELS ("model") values ('DAF');
insert into MODELS ("model") values ('DAF TRUCKS');
insert into MODELS ("model") values ('DAIFO');
insert into MODELS ("model") values ('DAIHATSU');
insert into MODELS ("model") values ('DAIMLER');
insert into MODELS ("model") values ('DAJIANG');
insert into MODELS ("model") values ('DAKAR');
insert into MODELS ("model") values ('DATSUN');
insert into MODELS ("model") values ('DAVID BROWN');
insert into MODELS ("model") values ('DAYANG');
insert into MODELS ("model") values ('DAYUN');
insert into MODELS ("model") values ('DE TOMASO');
insert into MODELS ("model") values ('DEMM');
insert into MODELS ("model") values ('DENNIS');
insert into MODELS ("model") values ('DENNIS FIRE');
insert into MODELS ("model") values ('DERBI');
insert into MODELS ("model") values ('DETHLEFFS');
insert into MODELS ("model") values ('DEUTZ FAHR');
insert into MODELS ("model") values ('DFSK');
insert into MODELS ("model") values ('DI BLASI');
insert into MODELS ("model") values ('DIECI');
insert into MODELS ("model") values ('DINLI');
insert into MODELS ("model") values ('DIRT PRO');
insert into MODELS ("model") values ('DODGE');
insert into MODELS ("model") values ('DODGE (USA)');
insert into MODELS ("model") values ('DOUGLAS');
insert into MODELS ("model") values ('DUCATI');
insert into MODELS ("model") values ('DUPLE');
insert into MODELS ("model") values ('EAGLE');
insert into MODELS ("model") values ('EASY RIDER');
insert into MODELS ("model") values ('EBRO');
insert into MODELS ("model") values ('ECO');
insert into MODELS ("model") values ('EGO');
insert into MODELS ("model") values ('ELECTRICARS');
insert into MODELS ("model") values ('ENTERPRISE BUS');
insert into MODELS ("model") values ('EOS');
insert into MODELS ("model") values ('EPC');
insert into MODELS ("model") values ('ERF');
insert into MODELS ("model") values ('ERIDER');
insert into MODELS ("model") values ('ERIK BUELL RACING');
insert into MODELS ("model") values ('ETON');
insert into MODELS ("model") values ('EUCLID');
insert into MODELS ("model") values ('EUROLINER');
insert into MODELS ("model") values ('EUROTRAC');
insert into MODELS ("model") values ('EVT');
insert into MODELS ("model") values ('EXPLORER');
insert into MODELS ("model") values ('FACTORY');
insert into MODELS ("model") values ('FANTIC MOTOR');
insert into MODELS ("model") values ('FARBOUD');
insert into MODELS ("model") values ('FEIYING');
insert into MODELS ("model") values ('FENDT');
insert into MODELS ("model") values ('FERRARI');
insert into MODELS ("model") values ('FIAT');
insert into MODELS ("model") values ('FMC');
insert into MODELS ("model") values ('FODEN');
insert into MODELS ("model") values ('FORD');
insert into MODELS ("model") values ('FORD NEW HOLLAND');
insert into MODELS ("model") values ('FORDSON');
insert into MODELS ("model") values ('FOREST RIVER');
insert into MODELS ("model") values ('FOSTI');
insert into MODELS ("model") values ('FREIGHT ROVER');
insert into MODELS ("model") values ('FSO CARS');
insert into MODELS ("model") values ('FUTONG');
insert into MODELS ("model") values ('FYM');
insert into MODELS ("model") values ('GAMAX');
insert into MODELS ("model") values ('GARELLI');
insert into MODELS ("model") values ('GAS GAS');
insert into MODELS ("model") values ('GEELY');
insert into MODELS ("model") values ('GEM');
insert into MODELS ("model") values ('GENERIC');
insert into MODELS ("model") values ('GIANTCO');
insert into MODELS ("model") values ('GILERA');
insert into MODELS ("model") values ('GINETTA');
insert into MODELS ("model") values ('GOKA');
insert into MODELS ("model") values ('GO-KART');
insert into MODELS ("model") values ('GOUPIL');
insert into MODELS ("model") values ('GOVECS');
insert into MODELS ("model") values ('GREAT WALL');
insert into MODELS ("model") values ('GREEVES');
insert into MODELS ("model") values ('GRINNALL');
insert into MODELS ("model") values ('GROVE');
insert into MODELS ("model") values ('GSMOON');
insert into MODELS ("model") values ('GUY');
insert into MODELS ("model") values ('HAMMERHEAD');
insert into MODELS ("model") values ('HANWAY');
insert into MODELS ("model") values ('HAOTIAN');
insert into MODELS ("model") values ('HARBILT ELECTRIC');
insert into MODELS ("model") values ('HARLEY-DAVIDSON');
insert into MODELS ("model") values ('HARTFORD');
insert into MODELS ("model") values ('HER CHE');
insert into MODELS ("model") values ('HERALD MOTOR COMPANY');
insert into MODELS ("model") values ('HERO PUCH');
insert into MODELS ("model") values ('HERTFORD');
insert into MODELS ("model") values ('HILLMAN');
insert into MODELS ("model") values ('HIMO');
insert into MODELS ("model") values ('HINO');
insert into MODELS ("model") values ('HOLDEN');
insert into MODELS ("model") values ('HOLMER EXXACT');
insert into MODELS ("model") values ('HONCHING');
insert into MODELS ("model") values ('HONDA');
insert into MODELS ("model") values ('HONGDOU');
insert into MODELS ("model") values ('HONGYANG');
insert into MODELS ("model") values ('HONGYI');
insert into MODELS ("model") values ('HONLEY');
insert into MODELS ("model") values ('HUASHA');
insert into MODELS ("model") values ('HUATIAN');
insert into MODELS ("model") values ('HUMBER');
insert into MODELS ("model") values ('HUMMER');
insert into MODELS ("model") values ('HUONIAO');
insert into MODELS ("model") values ('HURLIMANN');
insert into MODELS ("model") values ('HUSABERG');
insert into MODELS ("model") values ('HUSQVARNA');
insert into MODELS ("model") values ('HY-MAC LTD');
insert into MODELS ("model") values ('HYMER');
insert into MODELS ("model") values ('HYOSUNG');
insert into MODELS ("model") values ('HYSTER');
insert into MODELS ("model") values ('HYUNDAI');
insert into MODELS ("model") values ('INDIAN');
insert into MODELS ("model") values ('INFINITI');
insert into MODELS ("model") values ('INT. HARVESTER');
insert into MODELS ("model") values ('INVACAR');
insert into MODELS ("model") values ('IRIS.BUS');
insert into MODELS ("model") values ('IRIZAR');
insert into MODELS ("model") values ('ISEKI');
insert into MODELS ("model") values ('ISUZU');
insert into MODELS ("model") values ('ISUZU TRUCKS');
insert into MODELS ("model") values ('ITALJET');
insert into MODELS ("model") values ('IVECO');
insert into MODELS ("model") values ('IVECO FORD');
insert into MODELS ("model") values ('IVECO-FORD');
insert into MODELS ("model") values ('JACOBSEN');
insert into MODELS ("model") values ('JAGUAR');
insert into MODELS ("model") values ('JAMES');
insert into MODELS ("model") values ('JAWA');
insert into MODELS ("model") values ('JAXIN');
insert into MODELS ("model") values ('JCB');
insert into MODELS ("model") values ('JCM');
insert into MODELS ("model") values ('JEEP');
insert into MODELS ("model") values ('JENSEN');
insert into MODELS ("model") values ('JIALING');
insert into MODELS ("model") values ('JIANSHE');
insert into MODELS ("model") values ('JINCHENG');
insert into MODELS ("model") values ('JINLUN');
insert into MODELS ("model") values ('JM STAR');
insert into MODELS ("model") values ('JOHN ALLEN');
insert into MODELS ("model") values ('JOHN DEERE');
insert into MODELS ("model") values ('JOHNSTON SWEEPERS');
insert into MODELS ("model") values ('JONWAY');
insert into MODELS ("model") values ('JORDAN');
insert into MODELS ("model") values ('JUNGHEINRICH');
insert into MODELS ("model") values ('KAISAR');
insert into MODELS ("model") values ('KANGDA');
insert into MODELS ("model") values ('KANUNI');
insert into MODELS ("model") values ('KARRIER');
insert into MODELS ("model") values ('KASEA');
insert into MODELS ("model") values ('KASSBOHRER');
insert into MODELS ("model") values ('KATO');
insert into MODELS ("model") values ('KAWASAKI');
insert into MODELS ("model") values ('KAWATA');
insert into MODELS ("model") values ('KAZUMA');
insert into MODELS ("model") values ('KEEN');
insert into MODELS ("model") values ('KEEWAY');
insert into MODELS ("model") values ('KIA');
insert into MODELS ("model") values ('KINETIC');
insert into MODELS ("model") values ('KING LONG');
insert into MODELS ("model") values ('KINGTON');
insert into MODELS ("model") values ('KINLON');
insert into MODELS ("model") values ('KINROAD');
insert into MODELS ("model") values ('KIOTI');
insert into MODELS ("model") values ('KNAUS');
insert into MODELS ("model") values ('KOMATSU');
insert into MODELS ("model") values ('KSR MOTO');
insert into MODELS ("model") values ('KTM');
insert into MODELS ("model") values ('KUBOTA');
insert into MODELS ("model") values ('KYMCO');
insert into MODELS ("model") values ('LADA');
insert into MODELS ("model") values ('LAMBORGHINI');
insert into MODELS ("model") values ('LAMBRETTA');
insert into MODELS ("model") values ('LANCIA');
insert into MODELS ("model") values ('LAND ROVER');
insert into MODELS ("model") values ('LANDINI');
insert into MODELS ("model") values ('LANSING LINDE');
insert into MODELS ("model") values ('LAVERDA');
insert into MODELS ("model") values ('LDV');
insert into MODELS ("model") values ('LEIKE');
insert into MODELS ("model") values ('LEXMOTO');
insert into MODELS ("model") values ('LEXUS');
insert into MODELS ("model") values ('LEYLAND');
insert into MODELS ("model") values ('LEYLAND AEC');
insert into MODELS ("model") values ('LEYLAND AM');
insert into MODELS ("model") values ('LEYLAND CARS');
insert into MODELS ("model") values ('LEYLAND DAF');
insert into MODELS ("model") values ('LEYLAND NATIONAL');
insert into MODELS ("model") values ('LEYLAND REDLINE');
insert into MODELS ("model") values ('LEYLAND SCOTSTOUN');
insert into MODELS ("model") values ('LIEBHERR');
insert into MODELS ("model") values ('LIFAN');
insert into MODELS ("model") values ('LIGIER');
insert into MODELS ("model") values ('LINCOLN');
insert into MODELS ("model") values ('LINER');
insert into MODELS ("model") values ('LINHAI');
insert into MODELS ("model") values ('LINMAX');
insert into MODELS ("model") values ('LML');
insert into MODELS ("model") values ('LONCIN');
insert into MODELS ("model") values ('LONDON TAXIS INT');
insert into MODELS ("model") values ('LONGJIA');
insert into MODELS ("model") values ('LONSDALE');
insert into MODELS ("model") values ('LOTUS');
insert into MODELS ("model") values ('LUCKY');
insert into MODELS ("model") values ('MAGIRUS DEUTZ');
insert into MODELS ("model") values ('MAGNI');
insert into MODELS ("model") values ('MAHINDRA');
insert into MODELS ("model") values ('MALAGUTI');
insert into MODELS ("model") values ('MAN');
insert into MODELS ("model") values ('MAN/VW');
insert into MODELS ("model") values ('MANET');
insert into MODELS ("model") values ('MANITOU');
insert into MODELS ("model") values ('MARCOS');
insert into MODELS ("model") values ('MARSHALL');
insert into MODELS ("model") values ('MARTIN CONQUEST');
insert into MODELS ("model") values ('MASERATI');
insert into MODELS ("model") values ('MASH');
insert into MODELS ("model") values ('MASSEY FERGUSON');
insert into MODELS ("model") values ('MATBRO');
insert into MODELS ("model") values ('MATCHLESS');
insert into MODELS ("model") values ('MATHIEU');
insert into MODELS ("model") values ('MAXUS');
insert into MODELS ("model") values ('MAYBACH');
insert into MODELS ("model") values ('MAZDA');
insert into MODELS ("model") values ('MBK');
insert into MODELS ("model") values ('MCC');
insert into MODELS ("model") values ('MCCORMICK');
insert into MODELS ("model") values ('MCW');
insert into MODELS ("model") values ('MEGELLI');
insert into MODELS ("model") values ('MERCEDES');
insert into MODELS ("model") values ('MERCEDES-BENZ');
insert into MODELS ("model") values ('MERCURY');
insert into MODELS ("model") values ('MERLO');
insert into MODELS ("model") values ('METROCAB');
insert into MODELS ("model") values ('MG');
insert into MODELS ("model") values ('MGXPOWER');
insert into MODELS ("model") values ('MIA');
insert into MODELS ("model") values ('MICROCAR');
insert into MODELS ("model") values ('MIG');
insert into MODELS ("model") values ('MINI');
insert into MODELS ("model") values ('MITSUBISHI');
insert into MODELS ("model") values ('MITSUBISHI FUSO');
insert into MODELS ("model") values ('MOBYLETTE');
insert into MODELS ("model") values ('MODEC');
insert into MODELS ("model") values ('MODENAS');
insert into MODELS ("model") values ('MOKE AUTOMIBILI');
insert into MODELS ("model") values ('MONIKA');
insert into MODELS ("model") values ('MONTESA');
insert into MODELS ("model") values ('MORGAN');
insert into MODELS ("model") values ('MORINI');
insert into MODELS ("model") values ('MORRIS');
insert into MODELS ("model") values ('MOSKVICH');
insert into MODELS ("model") values ('MOTO AUPA');
insert into MODELS ("model") values ('MOTO GUZZI');
insert into MODELS ("model") values ('MOTO MORINI');
insert into MODELS ("model") values ('MOTO ROMA');
insert into MODELS ("model") values ('MOTO ZETA');
insert into MODELS ("model") values ('MOTOBECANE');
insert into MODELS ("model") values ('MOTOBI');
insert into MODELS ("model") values ('MOTOMEL');
insert into MODELS ("model") values ('MOTOR HISPANIA');
insert into MODELS ("model") values ('MOTOR JIKOV');
insert into MODELS ("model") values ('MOTRON');
insert into MODELS ("model") values ('MOXY');
insert into MODELS ("model") values ('MUIR-HILL');
insert into MODELS ("model") values ('MULTIDRIVE');
insert into MODELS ("model") values ('MV AGUSTA');
insert into MODELS ("model") values ('MZ');
insert into MODELS ("model") values ('NECHT');
insert into MODELS ("model") values ('NECO');
insert into MODELS ("model") values ('NEOPLAN');
insert into MODELS ("model") values ('NEVAL');
insert into MODELS ("model") values ('NEW HOLLAND');
insert into MODELS ("model") values ('NFM');
insert into MODELS ("model") values ('NIESMANN + BISCHOFF');
insert into MODELS ("model") values ('NIPPI');
insert into MODELS ("model") values ('NIPPONIA');
insert into MODELS ("model") values ('NISSAN');
insert into MODELS ("model") values ('NOBLE');
insert into MODELS ("model") values ('NORTON');
insert into MODELS ("model") values ('NORTON VILL. TRIUMPH');
insert into MODELS ("model") values ('NORTON VILLIERS');
insert into MODELS ("model") values ('NSU');
insert into MODELS ("model") values ('NUFFIELD');
insert into MODELS ("model") values ('OLDSMOBILE');
insert into MODELS ("model") values ('OPEL');
insert into MODELS ("model") values ('OPTARE');
insert into MODELS ("model") values ('ORION');
insert into MODELS ("model") values ('OSSA');
insert into MODELS ("model") values ('OXYGEN');
insert into MODELS ("model") values ('PANTHER');
insert into MODELS ("model") values ('PEGASO');
insert into MODELS ("model") values ('PENTA');
insert into MODELS ("model") values ('PERODUA');
insert into MODELS ("model") values ('PEUGEOT');
insert into MODELS ("model") values ('PGO');
insert into MODELS ("model") values ('PHOENIX');
insert into MODELS ("model") values ('PIAGGIO');
insert into MODELS ("model") values ('PINZGAUER');
insert into MODELS ("model") values ('PIONEER');
insert into MODELS ("model") values ('PLYMOUTH');
insert into MODELS ("model") values ('POCLAIN');
insert into MODELS ("model") values ('POLARIS');
insert into MODELS ("model") values ('POLSKI-FIAT');
insert into MODELS ("model") values ('PONTIAC');
insert into MODELS ("model") values ('POR');
insert into MODELS ("model") values ('PORSCHE');
insert into MODELS ("model") values ('PORTARO');
insert into MODELS ("model") values ('PRAGA');
insert into MODELS ("model") values ('PROTON');
insert into MODELS ("model") values ('PS MOTOR MANET');
insert into MODELS ("model") values ('PUCH');
insert into MODELS ("model") values ('PULSE');
insert into MODELS ("model") values ('QINGQI');
insert into MODELS ("model") values ('QUADZILLA');
insert into MODELS ("model") values ('RAIDER');
insert into MODELS ("model") values ('RALEIGH');
insert into MODELS ("model") values ('RANSOME');
insert into MODELS ("model") values ('REDROCK');
insert into MODELS ("model") values ('REGENT');
insert into MODELS ("model") values ('RELIANT');
insert into MODELS ("model") values ('RENAULT');
insert into MODELS ("model") values ('RENAULT TRUCKS');
insert into MODELS ("model") values ('RENEGADE');
insert into MODELS ("model") values ('REVA');
insert into MODELS ("model") values ('REWACO');
insert into MODELS ("model") values ('RHON');
insert into MODELS ("model") values ('RIEJU');
insert into MODELS ("model") values ('RILEY');
insert into MODELS ("model") values ('ROADLESS');
insert into MODELS ("model") values ('ROLLS ROYCE');
insert into MODELS ("model") values ('ROVER');
insert into MODELS ("model") values ('ROVIGO');
insert into MODELS ("model") values ('ROYAL ENFIELD');
insert into MODELS ("model") values ('R-VISION');
insert into MODELS ("model") values ('SAAB');
insert into MODELS ("model") values ('SACHS');
insert into MODELS ("model") values ('SAITING');
insert into MODELS ("model") values ('SAME');
insert into MODELS ("model") values ('SAN');
insert into MODELS ("model") values ('SANBEN');
insert into MODELS ("model") values ('SANILI');
insert into MODELS ("model") values ('SANLI');
insert into MODELS ("model") values ('SANTANA');
insert into MODELS ("model") values ('SANYA');
insert into MODELS ("model") values ('SANYANG');
insert into MODELS ("model") values ('SAO');
insert into MODELS ("model") values ('SAVIEM');
insert into MODELS ("model") values ('SAXON');
insert into MODELS ("model") values ('SCAMMELL');
insert into MODELS ("model") values ('SCANIA');
insert into MODELS ("model") values ('SCARAB');
insert into MODELS ("model") values ('SCHMIDT');
insert into MODELS ("model") values ('SCORPA');
insert into MODELS ("model") values ('SD');
insert into MODELS ("model") values ('SEAT');
insert into MODELS ("model") values ('SECMA');
insert into MODELS ("model") values ('SEDDON/ATKINSON');
insert into MODELS ("model") values ('SETRA');
insert into MODELS ("model") values ('SFM');
insert into MODELS ("model") values ('SFMM');
insert into MODELS ("model") values ('SHE LUNG');
insert into MODELS ("model") values ('SHENKE');
insert into MODELS ("model") values ('SHERCO');
insert into MODELS ("model") values ('SHIBAURA');
insert into MODELS ("model") values ('SHINERAY');
insert into MODELS ("model") values ('SHIRE');
insert into MODELS ("model") values ('SIAMOTO');
insert into MODELS ("model") values ('SIMCA');
insert into MODELS ("model") values ('SIMSON');
insert into MODELS ("model") values ('SINGER');
insert into MODELS ("model") values ('SINNIS');
insert into MODELS ("model") values ('SINSKI');
insert into MODELS ("model") values ('SIROMER');
insert into MODELS ("model") values ('SITCAR');
insert into MODELS ("model") values ('SKODA');
insert into MODELS ("model") values ('SKYGO');
insert into MODELS ("model") values ('SKYJET');
insert into MODELS ("model") values ('SKYTEAM');
insert into MODELS ("model") values ('SKYWING');
insert into MODELS ("model") values ('SMART');
insert into MODELS ("model") values ('SMC');
insert into MODELS ("model") values ('SMITHS');
insert into MODELS ("model") values ('SONIK');
insert into MODELS ("model") values ('SP MOTO');
insert into MODELS ("model") values ('SSANGYONG');
insert into MODELS ("model") values ('STARWAY');
insert into MODELS ("model") values ('STEYR');
insert into MODELS ("model") values ('STOTHERT AND PITT');
insert into MODELS ("model") values ('STRATHCARRON');
insert into MODELS ("model") values ('STUART TAYLOR');
insert into MODELS ("model") values ('SUBARU');
insert into MODELS ("model") values ('SUKIDA');
insert into MODELS ("model") values ('SUMOTO');
insert into MODELS ("model") values ('SUNBEAM');
insert into MODELS ("model") values ('SUNDIRO');
insert into MODELS ("model") values ('SUPERBYKE');
insert into MODELS ("model") values ('SUPERMOTO');
insert into MODELS ("model") values ('SUZUKI');
insert into MODELS ("model") values ('SUZUKO');
insert into MODELS ("model") values ('SWAP');
insert into MODELS ("model") values ('SYM');
insert into MODELS ("model") values ('TAFE');
insert into MODELS ("model") values ('TAISHAN');
insert into MODELS ("model") values ('TAIWAN GOLDEN BEE');
insert into MODELS ("model") values ('TALBOT');
insert into MODELS ("model") values ('TAM');
insert into MODELS ("model") values ('TAMORETTI');
insert into MODELS ("model") values ('TATA');
insert into MODELS ("model") values ('TAYAKO');
insert into MODELS ("model") values ('TEC');
insert into MODELS ("model") values ('TEMSA');
insert into MODELS ("model") values ('TESLA');
insert into MODELS ("model") values ('THINK');
insert into MODELS ("model") values ('THUMPSTAR');
insert into MODELS ("model") values ('THWAITES');
insert into MODELS ("model") values ('TIANJIN');
insert into MODELS ("model") values ('TIPPEN DELTA');
insert into MODELS ("model") values ('TM');
insert into MODELS ("model") values ('TOMOS');
insert into MODELS ("model") values ('TONG YANG');
insert into MODELS ("model") values ('TOYOTA');
insert into MODELS ("model") values ('TRANSBUS INT');
insert into MODELS ("model") values ('TRIGANO');
insert into MODELS ("model") values ('TRIUMPH');
insert into MODELS ("model") values ('TVR');
insert into MODELS ("model") values ('TYM');
insert into MODELS ("model") values ('UMM');
insert into MODELS ("model") values ('UNIMOG');
insert into MODELS ("model") values ('UNIVERSAL');
insert into MODELS ("model") values ('URAL');
insert into MODELS ("model") values ('URBAN');
insert into MODELS ("model") values ('URSUS');
insert into MODELS ("model") values ('UVM');
insert into MODELS ("model") values ('VALMET');
insert into MODELS ("model") values ('VALPADANA');
insert into MODELS ("model") values ('VALTRA');
insert into MODELS ("model") values ('VAN HOOL');
insert into MODELS ("model") values ('VANDEN PLAS');
insert into MODELS ("model") values ('VAUXHALL');
insert into MODELS ("model") values ('VDL');
insert into MODELS ("model") values ('VDL BOVA');
insert into MODELS ("model") values ('VECTRIX');
insert into MODELS ("model") values ('VELOCETTE');
insert into MODELS ("model") values ('VELOSOLEX');
insert into MODELS ("model") values ('VENTURI');
insert into MODELS ("model") values ('VERTEMATI');
insert into MODELS ("model") values ('VESPA (DOUGLAS)');
insert into MODELS ("model") values ('VICTORY');
insert into MODELS ("model") values ('VOLGA');
insert into MODELS ("model") values ('VOLKSWAGEN');
insert into MODELS ("model") values ('VOLVO');
insert into MODELS ("model") values ('VONROAD');
insert into MODELS ("model") values ('VOR');
insert into MODELS ("model") values ('VOXAN');
insert into MODELS ("model") values ('VULCAN');
insert into MODELS ("model") values ('W+E');
insert into MODELS ("model") values ('WANGYE');
insert into MODELS ("model") values ('WARRIOR');
insert into MODELS ("model") values ('WARTBURG');
insert into MODELS ("model") values ('WESTFIELD');
insert into MODELS ("model") values ('WHITE KNUCKLE');
insert into MODELS ("model") values ('WHITLOCK BROS');
insert into MODELS ("model") values ('WINGATE + ROGERS');
insert into MODELS ("model") values ('WINGET');
insert into MODELS ("model") values ('WK BIKES');
insert into MODELS ("model") values ('WOLSELEY');
insert into MODELS ("model") values ('WRIGHTBUS');
insert into MODELS ("model") values ('WUYANG');
insert into MODELS ("model") values ('XGJAO');
insert into MODELS ("model") values ('XINGYUE');
insert into MODELS ("model") values ('XINLING');
insert into MODELS ("model") values ('XINTIAN');
insert into MODELS ("model") values ('X-SPORT');
insert into MODELS ("model") values ('YALE');
insert into MODELS ("model") values ('YAMAHA');
insert into MODELS ("model") values ('YAMATI');
insert into MODELS ("model") values ('YAMOTO');
insert into MODELS ("model") values ('YANMAR');
insert into MODELS ("model") values ('YIBEN MEIDUC');
insert into MODELS ("model") values ('YIYING');
insert into MODELS ("model") values ('YUAN');
insert into MODELS ("model") values ('YUTONG');
insert into MODELS ("model") values ('Z Y MOTOR');
insert into MODELS ("model") values ('ZASTAVA');
insert into MODELS ("model") values ('ZENNCO');
insert into MODELS ("model") values ('ZENOS');
insert into MODELS ("model") values ('ZETOR');
insert into MODELS ("model") values ('ZHENHUA');
insert into MODELS ("model") values ('ZHONGNENG');
insert into MODELS ("model") values ('ZNEN');
insert into MODELS ("model") values ('ZONGSHEN');
insert into MODELS ("model") values ('ZONTES');


# --- !Downs

drop table MODELS if exists;
drop table VEHICLES if exists;
