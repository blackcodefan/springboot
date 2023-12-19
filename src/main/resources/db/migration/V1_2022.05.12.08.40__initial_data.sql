delete from payment_currency;
delete from pricing_plan;
delete from billing_product;
delete from country;
delete from data_center;
delete from email_label;
delete from email_label_order;
delete from language;
delete from timezone;


INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Macedonia, Republic of','+389',0.00,'MK',9,false),
	 (false,'USD','Madagascar','+261',0.00,'MG',9,false),
	 (false,'USD','Malawi','+265',0.00,'MW',9,false),
	 (false,'USD','Malaysia','+60',0.00,'MY',9,false),
	 (false,'USD','Maldives','+960',0.00,'MV',9,false),
	 (false,'USD','Mali','+223',0.00,'ML',9,false),
	 (false,'USD','Malta','+356',18.00,'MT',9,true),
	 (false,'USD','Marshall Islands','+692',0.00,'MH',9,false),
	 (false,'USD','Martinique','+596',0.00,'MQ',9,false),
	 (false,'USD','Mauritania','+222',0.00,'MR',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Mauritius','+230',0.00,'MU',9,false),
	 (false,'USD','Mayotte','+262',0.00,'YT',9,false),
	 (false,'USD','Mexico','+52',0.00,'MX',9,false),
	 (false,'USD','Micronesia, Federated States of','+691',0.00,'FM',9,false),
	 (false,'USD','Moldova','+373',0.00,'MD',9,false),
	 (false,'USD','Monaco','+377',0.00,'MC',9,true),
	 (false,'USD','Mongolia','+976',0.00,'MN',9,false),
	 (false,'USD','Montenegro','+382',0.00,'ME',9,false),
	 (false,'USD','Montserrat','+1',0.00,'MS',9,false),
	 (false,'USD','Morocco and Western Sahara','+212',0.00,'MA',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Mozambique','+258',0.00,'MZ',9,false),
	 (false,'USD','Myanmar','+95',0.00,'MM',9,false),
	 (false,'USD','Namibia','+264',0.00,'NA',9,false),
	 (false,'USD','Nauru','+674',0.00,'NR',9,false),
	 (false,'USD','Nepal','+977',0.00,'NP',9,false),
	 (false,'USD','Netherlands','+31',21.00,'NL',9,true),
	 (false,'USD','Netherlands Antilles','+599',0.00,'AN',9,false),
	 (false,'USD','New Caledonia','+687',0.00,'NC',9,false),
	 (false,'USD','New Zealand','+64',0.00,'NZ',9,false),
	 (false,'USD','Nicaragua','+505',0.00,'NI',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Niger','+227',0.00,'NE',9,false),
	 (false,'USD','Nigeria','+234',0.00,'NG',9,false),
	 (false,'USD','Niue','+683',0.00,'NU',9,false),
	 (false,'USD','Norfolk Island','+672',0.00,'NF',9,false),
	 (false,'USD','Northern Mariana Islands','+1',0.00,'MP',9,false),
	 (false,'USD','Norway','+47',0.00,'NO',9,true),
	 (false,'USD','Oman','+968',0.00,'OM',9,false),
	 (false,'USD','Pakistan','+92',0.00,'PK',9,false),
	 (false,'USD','Palau','+680',0.00,'PW',9,false),
	 (false,'USD','Palestinian Territory, Occupied','+970',0.00,'PS',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Panama','+507',0.00,'PA',9,false),
	 (false,'USD','Papua New Guinea','+675',0.00,'PG',9,false),
	 (false,'USD','Paraguay','+595',0.00,'PY',9,false),
	 (false,'USD','Peru','+51',0.00,'PE',9,false),
	 (false,'USD','Philippines','+63',0.00,'PH',9,false),
	 (false,'USD','Pitcairn','+870',0.00,'PN',9,false),
	 (false,'USD','Poland','+48',23.00,'PL',9,true),
	 (false,'USD','Portugal','+351',23.00,'PT',9,true),
	 (false,'USD','Puerto Rico','+1',0.00,'PR',9,false),
	 (false,'USD','Qatar','+974',0.00,'QA',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Réunion and Mayotte','+262',0.00,'RE',9,false),
	 (false,'USD','Romania','+40',19.00,'RO',9,true),
	 (false,'USD','Russian Federation','+7',0.00,'RU',9,false),
	 (false,'USD','Rwanda','+250',0.00,'RW',9,false),
	 (false,'USD','Saint Helena and also Tristan Da Cunha','+290',0.00,'SH',9,false),
	 (false,'USD','Saint Kitts and Nevis','+1',0.00,'KN',9,false),
	 (false,'USD','Saint Lucia','+1',0.00,'LC',9,false),
	 (false,'USD','Saint Pierre and Miquelon','+508',0.00,'PM',9,false),
	 (false,'USD','Saint Vincent and the Grenadines','+1',0.00,'VC',9,false),
	 (false,'USD','Samoa','+685',0.00,'WS',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','San Marino','+378',0.00,'SM',9,true),
	 (false,'USD','São Tomé and Principe','+239',0.00,'ST',9,false),
	 (false,'USD','Saudi Arabia','+966',0.00,'SA',9,false),
	 (false,'USD','Senegal','+221',0.00,'SN',9,false),
	 (false,'USD','Serbia','+381',0.00,'RS',9,false),
	 (false,'USD','Seychelles','+248',0.00,'SC',9,false),
	 (false,'USD','Sierra Leone','+232',0.00,'SL',9,false),
	 (false,'USD','Singapore','+65',0.00,'SG',9,false),
	 (false,'USD','Slovakia','+421',20.00,'SK',9,false),
	 (false,'USD','Slovenia','+386',22.00,'SI',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Solomon Islands','+677',0.00,'SB',9,false),
	 (false,'USD','Somalia','+252',0.00,'SO',9,false),
	 (false,'USD','South Africa','+27',0.00,'ZA',9,false),
	 (false,'USD','Spain','+34',21.00,'ES',9,true),
	 (false,'USD','Sri Lanka','+94',0.00,'LK',9,false),
	 (false,'USD','Sudan','+249',0.00,'SD',9,false),
	 (false,'USD','Suriname','+597',0.00,'SR',9,false),
	 (false,'USD','Svalbard and Jan Mayen Islands','+47',0.00,'SJ',9,false),
	 (false,'USD','Swaziland','+268',0.00,'SZ',9,false),
	 (false,'USD','Sweden','+46',25.00,'SE',9,true);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Switzerland','+41',8.00,'CH',9,true),
	 (false,'USD','Syrian Arab Republic (Syria)','+963',0.00,'SY',9,false),
	 (false,'USD','Taiwan, Republic of China','+886',0.00,'TW',9,false),
	 (false,'USD','Tajikistan','+992',0.00,'TJ',9,false),
	 (false,'USD','Tanzania, United Republic of','+255',0.00,'TZ',9,false),
	 (false,'USD','Thailand','+66',0.00,'TH',9,false),
	 (false,'USD','Timor-Leste','+670',0.00,'TL',9,false),
	 (false,'USD','Togo','+228',0.00,'TG',9,false),
	 (false,'USD','Tokelau','+690',0.00,'TK',9,false),
	 (false,'USD','Tonga','+676',0.00,'TO',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Trinidad and Tobago','+1',0.00,'TT',9,false),
	 (false,'USD','Tunisia','+216',0.00,'TN',9,false),
	 (false,'USD','Turkey','+90',0.00,'TR',9,false),
	 (false,'USD','Turkmenistan','+993',0.00,'TM',9,false),
	 (false,'USD','Turks and Caicos Islands','+1',0.00,'TC',9,false),
	 (false,'USD','Tuvalu','+688',0.00,'TV',9,false),
	 (false,'USD','Uganda','+256',0.00,'UG',9,false),
	 (false,'USD','Ukraine','+380',0.00,'UA',9,false),
	 (false,'USD','Afghanistan','+93',0.00,'AF',9,false),
	 (false,'USD','Albania','+355',0.00,'AL',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Algeria','+213',0.00,'DZ',9,false),
	 (false,'USD','American Samoa','+1',0.00,'AS',9,false),
	 (false,'USD','Andorra','+376',0.00,'AD',9,true),
	 (false,'USD','Angola','+244',0.00,'AO',9,false),
	 (false,'USD','Anguilla','+1',0.00,'AI',9,false),
	 (false,'USD','Antigua and Barbuda','+1',0.00,'AG',9,false),
	 (false,'USD','Argentina','+54',0.00,'AR',9,false),
	 (false,'USD','Armenia','+374',0.00,'AM',9,false),
	 (false,'USD','Aruba','+297',0.00,'AW',9,false),
	 (false,'USD','Australia','+61',0.00,'AU',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Austria','+43',20.00,'AT',9,true),
	 (false,'USD','Azerbaijan','+994',0.00,'AZ',9,false),
	 (false,'USD','Bahamas','+1',0.00,'BS',9,false),
	 (false,'USD','Bahrain','+973',0.00,'BH',9,false),
	 (false,'USD','Bangladesh','+880',0.00,'BD',9,false),
	 (false,'USD','Barbados','+1',0.00,'BB',9,false),
	 (false,'USD','Belarus','+375',0.00,'BY',9,false),
	 (false,'USD','Belgium','+32',21.00,'BE',9,true),
	 (false,'USD','Belize','+501',0.00,'BZ',9,false),
	 (false,'USD','Benin','+229',0.00,'BJ',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Bermuda','+1',0.00,'BM',9,false),
	 (false,'USD','Bhutan','+975',0.00,'BT',9,false),
	 (false,'USD','Bolivia','+591',0.00,'BO',9,false),
	 (false,'USD','Bosnia and Herzegovina','+387',0.00,'BA',9,false),
	 (false,'USD','Botswana','+267',0.00,'BW',9,false),
	 (false,'USD','Brazil','+55',0.00,'BR',9,false),
	 (false,'USD','Brunei Darussalam','+673',0.00,'BN',9,false),
	 (false,'USD','Bulgaria','+359',20.00,'BG',9,true),
	 (false,'USD','Burkina Faso','+226',0.00,'BF',9,false),
	 (false,'USD','Burundi','+257',0.00,'BI',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Cambodia','+855',0.00,'KH',9,false),
	 (false,'USD','Cameroon','+237',0.00,'CM',9,false),
	 (false,'USD','Canada','+1',0.00,'CA',9,true),
	 (false,'USD','Cape Verde','+238',0.00,'CV',9,false),
	 (false,'USD','Cayman Islands','+1',0.00,'KY',9,false),
	 (false,'USD','Central African Republic','+236',0.00,'CF',9,false),
	 (false,'USD','Chad','+235',0.00,'TD',9,false),
	 (false,'USD','Chile','+56',0.00,'CL',9,false),
	 (false,'USD','China','+86',0.00,'CN',9,false),
	 (false,'USD','Christmas Island','+61',0.00,'CX',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Cocos (Keeling) Islands','+61',0.00,'CC',9,false),
	 (false,'USD','Colombia','+57',0.00,'CO',9,false),
	 (false,'USD','Comoros','+269',0.00,'KM',9,false),
	 (false,'USD','Congo (Brazzaville)','+242',0.00,'CG',9,false),
	 (false,'USD','Congo (Kinshasa)','+243',0.00,'CD',9,false),
	 (false,'USD','Cook Islands','+682',0.00,'CK',9,false),
	 (false,'USD','Costa Rica','+506',0.00,'CR',9,false),
	 (false,'USD','Côte D''Ivoire (Ivory Coast)','+225',0.00,'CI',9,false),
	 (false,'USD','Croatia (Hrvatska)','+385',25.00,'HR',9,true),
	 (false,'USD','Cuba','+53',0.00,'CU',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Cyprus','+357',19.00,'CY',9,true),
	 (false,'USD','Czech Republic','+420',0.00,'CZ',9,true),
	 (false,'USD','Denmark','+45',25.00,'DK',9,true),
	 (false,'USD','Djibouti','+253',0.00,'DJ',9,false),
	 (false,'USD','Dominica','+1',0.00,'DM',9,false),
	 (false,'USD','Dominican Republic','+1',0.00,'DO',9,false),
	 (false,'USD','Ecuador','+593',0.00,'EC',9,false),
	 (false,'USD','Egypt','+20',0.00,'EG',9,false),
	 (false,'USD','El Salvador','+503',0.00,'SV',9,false),
	 (false,'USD','Equatorial Guinea','+240',0.00,'GQ',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Eritrea','+291',0.00,'ER',9,false),
	 (false,'USD','Estonia','+372',20.00,'EE',9,false),
	 (false,'USD','Ethiopia','+251',0.00,'ET',9,false),
	 (false,'USD','Falkland Islands (Malvinas)','+500',0.00,'FK',9,false),
	 (false,'USD','Faroe Islands','+298',0.00,'FO',9,false),
	 (false,'USD','Fiji','+679',0.00,'FJ',9,false),
	 (false,'USD','Finland','+358',24.00,'FI',9,true),
	 (false,'USD','France','+33',20.00,'FR',9,true),
	 (false,'USD','French Guiana','+594',0.00,'GF',9,false),
	 (false,'USD','French Polynesia','+689',0.00,'PF',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Gabon','+241',0.00,'GA',9,false),
	 (false,'USD','Gambia','+220',0.00,'GM',9,false),
	 (false,'USD','Georgia','+995',0.00,'GE',9,false),
	 (false,'USD','Germany','+49',19.00,'DE',9,true),
	 (false,'USD','Ghana','+233',0.00,'GH',9,false),
	 (false,'USD','Gibraltar','+350',0.00,'GI',9,true),
	 (false,'USD','Greece','+30',24.00,'GR',9,true),
	 (false,'USD','Greenland','+299',0.00,'GL',9,true),
	 (false,'USD','Grenada','+1',0.00,'GD',9,false),
	 (false,'USD','Guadeloupe','+590',0.00,'GP',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Guam','+1',0.00,'GM',9,false),
	 (false,'USD','Guatemala','+502',0.00,'GT',9,false),
	 (false,'USD','Guinea','+224',0.00,'GN',9,false),
	 (false,'USD','Guinea-Bissau','+245',0.00,'GW',9,false),
	 (false,'USD','Guyana','+592',0.00,'GY',9,false),
	 (false,'USD','Haiti','+509',0.00,'HT',9,false),
	 (false,'USD','Holy See (Vatican City State)','+379',0.00,'',9,false),
	 (false,'USD','Honduras','+504',0.00,'HN',9,false),
	 (false,'USD','Hong Kong, SAR','+852',0.00,'HK',9,false),
	 (false,'USD','Hungary','+36',27.00,'HU',9,true);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Iceland','+354',0.00,'IS',9,true),
	 (false,'USD','India','+91',0.00,'IN',9,false),
	 (false,'USD','Indonesia','+62',0.00,'ID',9,false),
	 (false,'USD','Iran, Islamic Republic of','+98',0.00,'IR',9,false),
	 (false,'USD','Iraq','+964',0.00,'IQ',9,false),
	 (false,'USD','Ireland','+353',23.00,'IE',9,true),
	 (false,'USD','Israel','+972',0.00,'IL',9,true),
	 (false,'USD','Italy','+39',22.00,'IT',9,true),
	 (false,'USD','Jamaica','+1',0.00,'JM',9,false),
	 (false,'USD','Japan','+81',0.00,'JP',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Jordan','+962',0.00,'JO',9,false),
	 (false,'USD','Kazakhstan','+7',0.00,'KZ',9,false),
	 (false,'USD','Kenya','+254',0.00,'KE',9,false),
	 (false,'USD','Kiribati','+686',0.00,'KI',9,false),
	 (false,'USD','Korea, Democratic People''s Republic of(North)','+850',0.00,'KP',9,false),
	 (false,'USD','Korea, Republic of (South)','+82',0.00,'KR',9,false),
	 (false,'USD','Kuwait','+965',0.00,'KW',9,false),
	 (false,'USD','Kyrgyzstan','+996',0.00,'KG',9,false),
	 (false,'USD','Laos (Lao PDR)','+856',0.00,'LA',9,false),
	 (false,'USD','Latvia','+371',21.00,'LV',9,true);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Lebanon','+961',0.00,'LB',9,true),
	 (false,'USD','Lesotho','+266',0.00,'LS',9,false),
	 (false,'USD','Liberia','+231',0.00,'LR',9,false),
	 (false,'USD','Libya','+218',0.00,'LY',9,false),
	 (false,'USD','Liechtenstein','+423',0.00,'LI',9,true),
	 (false,'USD','Lithuania','+370',21.00,'LT',9,true),
	 (false,'USD','Luxembourg','+352',17.00,'LU',9,true),
	 (false,'USD','Macao (SAR China)','+853',0.00,'MO',9,false),
	 (false,'USD','United Arab Emirates','+971',0.00,'AE',9,false),
	 (false,'USD','United Kingdom','+44',20.00,'GB',10,true);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','United States of America','+1',0.00,'US',9,true),
	 (false,'USD','Uruguay','+598',0.00,'UY',9,false),
	 (false,'USD','Uzbekistan','+998',0.00,'UZ',9,false),
	 (false,'USD','Vanuatu','+678',0.00,'VU',9,false),
	 (false,'USD','Vatican','+379',0.00,'VA',9,true),
	 (false,'USD','Venezuela (Bolivarian Republic of)','+58',0.00,'VE',9,false),
	 (false,'USD','Viet Nam','+84',0.00,'VN',9,false),
	 (false,'USD','Virgin Islands, British','+1',0.00,'VG',9,false),
	 (false,'USD','Virgin Islands, US','+1',0.00,'VI',9,false),
	 (false,'USD','Wallis and Futuna Islands','+681',0.00,'WF',9,false);
INSERT INTO country (always_vat,currency_code,name,prefix_number,vat_value,country_code,digits,allowed) VALUES
	 (false,'USD','Yemen','+967',0.00,'YE',9,false),
	 (false,'USD','Zambia','+260',0.00,'ZM',9,false),
	 (false,'USD','Zimbabwe','+263',0.00,'ZW',9,false);



INSERT INTO timezone (value,abbr,"offset",isdst,"text",utc) VALUES
	 ('Dateline Standard Time','DST',-12,false,'(UTC-12:00) International Date Line West','Etc/GMT+12'),
	 ('UTC-11','U',-11,false,'(UTC-11:00) Coordinated Universal Time-11','Etc/GMT+11,Pacific/Midway,Pacific/Niue,Pacific/Pago_Pago'),
	 ('Hawaiian Standard Time','HST',-10,false,'(UTC-10:00) Hawaii','Etc/GMT+10,Pacific/Honolulu,Pacific/Johnston,Pacific/Rarotonga,Pacific/Tahiti'),
	 ('Alaskan Standard Time','AKDT',-8,true,'(UTC-09:00) Alaska','America/Anchorage,America/Juneau,America/Nome,America/Sitka,America/Yakutat'),
	 ('Pacific Standard Time (Mexico)','PDT',-7,true,'(UTC-08:00) Baja California','America/Santa_Isabel'),
	 ('Pacific Daylight Time','PDT',-7,true,'(UTC-07:00) Pacific Time (US & Canada)','America/Dawson,America/Los_Angeles,America/Tijuana,America/Vancouver,America/Whitehorse'),
	 ('Pacific Standard Time','PST',-8,false,'(UTC-08:00) Pacific Time (US & Canada)','America/Dawson,America/Los_Angeles,America/Tijuana,America/Vancouver,America/Whitehorse,PST8PDT'),
	 ('US Mountain Standard Time','UMST',-7,false,'(UTC-07:00) Arizona','America/Creston,America/Dawson_Creek,America/Hermosillo,America/Phoenix,Etc/GMT+7'),
	 ('Mountain Standard Time (Mexico)','MDT',-6,true,'(UTC-07:00) Chihuahua, La Paz, Mazatlan','America/Chihuahua,America/Mazatlan'),
	 ('Mountain Standard Time','MDT',-6,true,'(UTC-07:00) Mountain Time (US & Canada)','America/Boise,America/Cambridge_Bay,America/Denver,America/Edmonton,America/Inuvik,America/Ojinaga,America/Yellowknife,MST7MDT');
INSERT INTO timezone (value,abbr,"offset",isdst,"text",utc) VALUES
	 ('Central America Standard Time','CAST',-6,false,'(UTC-06:00) Central America','America/Belize,America/Costa_Rica,America/El_Salvador,America/Guatemala,America/Managua,America/Tegucigalpa,Etc/GMT+6,Pacific/Galapagos'),
	 ('Central Standard Time','CDT',-5,true,'(UTC-06:00) Central Time (US & Canada)','America/Chicago,America/Indiana/Knox,America/Indiana/Tell_City,America/Matamoros,America/Menominee,America/North_Dakota/Beulah,America/North_Dakota/Center,America/North_Dakota/New_Salem,America/Rainy_River,America/Rankin_Inlet,America/Resolute,America/Winnipeg,CST6CDT'),
	 ('Central Standard Time (Mexico)','CDT',-5,true,'(UTC-06:00) Guadalajara, Mexico City, Monterrey','America/Bahia_Banderas,America/Cancun,America/Merida,America/Mexico_City,America/Monterrey'),
	 ('Canada Central Standard Time','CCST',-6,false,'(UTC-06:00) Saskatchewan','America/Regina,America/Swift_Current'),
	 ('SA Pacific Standard Time','SPST',-5,false,'(UTC-05:00) Bogota, Lima, Quito','America/Bogota,America/Cayman,America/Coral_Harbour,America/Eirunepe,America/Guayaquil,America/Jamaica,America/Lima,America/Panama,America/Rio_Branco,Etc/GMT+5'),
	 ('Eastern Standard Time','EDT',-4,true,'(UTC-05:00) Eastern Time (US & Canada)','America/Detroit,America/Havana,America/Indiana/Petersburg,America/Indiana/Vincennes,America/Indiana/Winamac,America/Iqaluit,America/Kentucky/Monticello,America/Louisville,America/Montreal,America/Nassau,America/New_York,America/Nipigon,America/Pangnirtung,America/Port-au-Prince,America/Thunder_Bay,America/Toronto,EST5EDT'),
	 ('US Eastern Standard Time','UEDT',-4,true,'(UTC-05:00) Indiana (East)','America/Indiana/Marengo,America/Indiana/Vevay,America/Indianapolis'),
	 ('Venezuela Standard Time','VST',-5,false,'(UTC-04:30) Caracas','America/Caracas'),
	 ('Paraguay Standard Time','PYT',-4,false,'(UTC-04:00) Asuncion','America/Asuncion'),
	 ('Atlantic Standard Time','ADT',-3,true,'(UTC-04:00) Atlantic Time (Canada)','America/Glace_Bay,America/Goose_Bay,America/Halifax,America/Moncton,America/Thule,Atlantic/Bermuda');
INSERT INTO timezone (value,abbr,"offset",isdst,"text",utc) VALUES
	 ('Central Brazilian Standard Time','CBST',-4,false,'(UTC-04:00) Cuiaba','America/Campo_Grande,America/Cuiaba'),
	 ('SA Western Standard Time','SWST',-4,false,'(UTC-04:00) Georgetown, La Paz, Manaus, San Juan','America/Anguilla,America/Antigua,America/Aruba,America/Barbados,America/Blanc-Sablon,America/Boa_Vista,America/Curacao,America/Dominica,America/Grand_Turk,America/Grenada,America/Guadeloupe,America/Guyana,America/Kralendijk,America/La_Paz,America/Lower_Princes,America/Manaus,America/Marigot,America/Martinique,America/Montserrat,America/Port_of_Spain,America/Porto_Velho,America/Puerto_Rico,America/Santo_Domingo,America/St_Barthelemy,America/St_Kitts,America/St_Lucia,America/St_Thomas,America/St_Vincent,America/Tortola,Etc/GMT+4'),
	 ('Pacific SA Standard Time','PSST',-4,false,'(UTC-04:00) Santiago','America/Santiago,Antarctica/Palmer'),
	 ('Newfoundland Standard Time','NDT',-3,true,'(UTC-03:30) Newfoundland','America/St_Johns'),
	 ('E. South America Standard Time','ESAST',-3,false,'(UTC-03:00) Brasilia','America/Sao_Paulo'),
	 ('Argentina Standard Time','AST',-3,false,'(UTC-03:00) Buenos Aires','America/Argentina/La_Rioja,America/Argentina/Rio_Gallegos,America/Argentina/Salta,America/Argentina/San_Juan,America/Argentina/San_Luis,America/Argentina/Tucuman,America/Argentina/Ushuaia,America/Buenos_Aires,America/Catamarca,America/Cordoba,America/Jujuy,America/Mendoza'),
	 ('SA Eastern Standard Time','SEST',-3,false,'(UTC-03:00) Cayenne, Fortaleza','America/Araguaina,America/Belem,America/Cayenne,America/Fortaleza,America/Maceio,America/Paramaribo,America/Recife,America/Santarem,Antarctica/Rothera,Atlantic/Stanley,Etc/GMT+3'),
	 ('Greenland Standard Time','GDT',-3,true,'(UTC-03:00) Greenland','America/Godthab'),
	 ('Montevideo Standard Time','MST',-3,false,'(UTC-03:00) Montevideo','America/Montevideo'),
	 ('Bahia Standard Time','BST',-3,false,'(UTC-03:00) Salvador','America/Bahia');
INSERT INTO timezone (value,abbr,"offset",isdst,"text",utc) VALUES
	 ('UTC-02','U',-2,false,'(UTC-02:00) Coordinated Universal Time-02','America/Noronha,Atlantic/South_Georgia,Etc/GMT+2'),
	 ('Mid-Atlantic Standard Time','MDT',-1,true,'(UTC-02:00) Mid-Atlantic - Old',''),
	 ('Azores Standard Time','ADT',0,true,'(UTC-01:00) Azores','America/Scoresbysund,Atlantic/Azores'),
	 ('Cape Verde Standard Time','CVST',-1,false,'(UTC-01:00) Cape Verde Is.','Atlantic/Cape_Verde,Etc/GMT+1'),
	 ('Morocco Standard Time','MDT',1,true,'(UTC) Casablanca','Africa/Casablanca,Africa/El_Aaiun'),
	 ('UTC','UTC',0,false,'(UTC) Coordinated Universal Time','America/Danmarkshavn,Etc/GMT'),
	 ('GMT Standard Time','GMT',0,false,'(UTC) Edinburgh, London','Europe/Isle_of_Man,Europe/Guernsey,Europe/Jersey,Europe/London'),
	 ('British Summer Time','BST',1,true,'(UTC+01:00) Edinburgh, London','Europe/Isle_of_Man,Europe/Guernsey,Europe/Jersey,Europe/London'),
	 ('GMT Standard Time','GDT',1,true,'(UTC) Dublin, Lisbon','Atlantic/Canary,Atlantic/Faeroe,Atlantic/Madeira,Europe/Dublin,Europe/Lisbon'),
	 ('Greenwich Standard Time','GST',0,false,'(UTC) Monrovia, Reykjavik','Africa/Abidjan,Africa/Accra,Africa/Bamako,Africa/Banjul,Africa/Bissau,Africa/Conakry,Africa/Dakar,Africa/Freetown,Africa/Lome,Africa/Monrovia,Africa/Nouakchott,Africa/Ouagadougou,Africa/Sao_Tome,Atlantic/Reykjavik,Atlantic/St_Helena');
INSERT INTO timezone (value,abbr,"offset",isdst,"text",utc) VALUES
	 ('W. Europe Standard Time','WEDT',2,true,'(UTC+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna','Arctic/Longyearbyen,Europe/Amsterdam,Europe/Andorra,Europe/Berlin,Europe/Busingen,Europe/Gibraltar,Europe/Luxembourg,Europe/Malta,Europe/Monaco,Europe/Oslo,Europe/Rome,Europe/San_Marino,Europe/Stockholm,Europe/Vaduz,Europe/Vatican,Europe/Vienna,Europe/Zurich'),
	 ('Tasmania Standard Time','TST',10,false,'(UTC+10:00) Hobart','Australia/Currie,Australia/Hobart'),
	 ('Central Europe Standard Time','CEDT',2,true,'(UTC+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague','Europe/Belgrade,Europe/Bratislava,Europe/Budapest,Europe/Ljubljana,Europe/Podgorica,Europe/Prague,Europe/Tirane'),
	 ('Romance Standard Time','RDT',2,true,'(UTC+01:00) Brussels, Copenhagen, Madrid, Paris','Africa/Ceuta,Europe/Brussels,Europe/Copenhagen,Europe/Madrid,Europe/Paris'),
	 ('Central European Standard Time','CEDT',2,true,'(UTC+01:00) Sarajevo, Skopje, Warsaw, Zagreb','Europe/Sarajevo,Europe/Skopje,Europe/Warsaw,Europe/Zagreb'),
	 ('W. Central Africa Standard Time','WCAST',1,false,'(UTC+01:00) West Central Africa','Africa/Algiers,Africa/Bangui,Africa/Brazzaville,Africa/Douala,Africa/Kinshasa,Africa/Lagos,Africa/Libreville,Africa/Luanda,Africa/Malabo,Africa/Ndjamena,Africa/Niamey,Africa/Porto-Novo,Africa/Tunis,Etc/GMT-1'),
	 ('Namibia Standard Time','NST',1,false,'(UTC+01:00) Windhoek','Africa/Windhoek'),
	 ('GTB Standard Time','GDT',3,true,'(UTC+02:00) Athens, Bucharest','Asia/Nicosia,Europe/Athens,Europe/Bucharest,Europe/Chisinau'),
	 ('Middle East Standard Time','MEDT',3,true,'(UTC+02:00) Beirut','Asia/Beirut'),
	 ('Egypt Standard Time','EST',2,false,'(UTC+02:00) Cairo','Africa/Cairo');
INSERT INTO timezone (value,abbr,"offset",isdst,"text",utc) VALUES
	 ('Syria Standard Time','SDT',3,true,'(UTC+02:00) Damascus','Asia/Damascus'),
	 ('E. Europe Standard Time','EEDT',3,true,'(UTC+02:00) E. Europe','Asia/Nicosia,Europe/Athens,Europe/Bucharest,Europe/Chisinau,Europe/Helsinki,Europe/Kiev,Europe/Mariehamn,Europe/Nicosia,Europe/Riga,Europe/Sofia,Europe/Tallinn,Europe/Uzhgorod,Europe/Vilnius,Europe/Zaporozhye'),
	 ('South Africa Standard Time','SAST',2,false,'(UTC+02:00) Harare, Pretoria','Africa/Blantyre,Africa/Bujumbura,Africa/Gaborone,Africa/Harare,Africa/Johannesburg,Africa/Kigali,Africa/Lubumbashi,Africa/Lusaka,Africa/Maputo,Africa/Maseru,Africa/Mbabane,Etc/GMT-2'),
	 ('FLE Standard Time','FDT',3,true,'(UTC+02:00) Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius','Europe/Helsinki,Europe/Kiev,Europe/Mariehamn,Europe/Riga,Europe/Sofia,Europe/Tallinn,Europe/Uzhgorod,Europe/Vilnius,Europe/Zaporozhye'),
	 ('Turkey Standard Time','TDT',3,false,'(UTC+03:00) Istanbul','Europe/Istanbul'),
	 ('Israel Standard Time','JDT',3,true,'(UTC+02:00) Jerusalem','Asia/Jerusalem'),
	 ('Libya Standard Time','LST',2,false,'(UTC+02:00) Tripoli','Africa/Tripoli'),
	 ('Jordan Standard Time','JST',3,false,'(UTC+03:00) Amman','Asia/Amman'),
	 ('Arabic Standard Time','AST',3,false,'(UTC+03:00) Baghdad','Asia/Baghdad'),
	 ('Kaliningrad Standard Time','KST',3,false,'(UTC+03:00) Kaliningrad, Minsk','Europe/Kaliningrad,Europe/Minsk');
INSERT INTO timezone (value,abbr,"offset",isdst,"text",utc) VALUES
	 ('Arab Standard Time','AST',3,false,'(UTC+03:00) Kuwait, Riyadh','Asia/Aden,Asia/Bahrain,Asia/Kuwait,Asia/Qatar,Asia/Riyadh'),
	 ('E. Africa Standard Time','EAST',3,false,'(UTC+03:00) Nairobi','Africa/Addis_Ababa,Africa/Asmera,Africa/Dar_es_Salaam,Africa/Djibouti,Africa/Juba,Africa/Kampala,Africa/Khartoum,Africa/Mogadishu,Africa/Nairobi,Antarctica/Syowa,Etc/GMT-3,Indian/Antananarivo,Indian/Comoro,Indian/Mayotte'),
	 ('Moscow Standard Time','MSK',3,false,'(UTC+03:00) Moscow, St. Petersburg, Volgograd','Europe/Kirov,Europe/Moscow,Europe/Simferopol,Europe/Volgograd'),
	 ('Samara Time','SAMT',4,false,'(UTC+04:00) Samara, Ulyanovsk, Saratov','Europe/Astrakhan,Europe/Samara,Europe/Ulyanovsk'),
	 ('Iran Standard Time','IDT',5,true,'(UTC+03:30) Tehran','Asia/Tehran'),
	 ('Arabian Standard Time','AST',4,false,'(UTC+04:00) Abu Dhabi, Muscat','Asia/Dubai,Asia/Muscat,Etc/GMT-4'),
	 ('Azerbaijan Standard Time','ADT',5,true,'(UTC+04:00) Baku','Asia/Baku'),
	 ('Mauritius Standard Time','MST',4,false,'(UTC+04:00) Port Louis','Indian/Mahe,Indian/Mauritius,Indian/Reunion'),
	 ('Georgian Standard Time','GET',4,false,'(UTC+04:00) Tbilisi','Asia/Tbilisi'),
	 ('Caucasus Standard Time','CST',4,false,'(UTC+04:00) Yerevan','Asia/Yerevan');
INSERT INTO timezone (value,abbr,"offset",isdst,"text",utc) VALUES
	 ('Afghanistan Standard Time','AST',5,false,'(UTC+04:30) Kabul','Asia/Kabul'),
	 ('West Asia Standard Time','WAST',5,false,'(UTC+05:00) Ashgabat, Tashkent','Antarctica/Mawson,Asia/Aqtau,Asia/Aqtobe,Asia/Ashgabat,Asia/Dushanbe,Asia/Oral,Asia/Samarkand,Asia/Tashkent,Etc/GMT-5,Indian/Kerguelen,Indian/Maldives'),
	 ('Yekaterinburg Time','YEKT',5,false,'(UTC+05:00) Yekaterinburg','Asia/Yekaterinburg'),
	 ('Pakistan Standard Time','PKT',5,false,'(UTC+05:00) Islamabad, Karachi','Asia/Karachi'),
	 ('India Standard Time','IST',6,false,'(UTC+05:30) Chennai, Kolkata, Mumbai, New Delhi','Asia/Kolkata'),
	 ('Sri Lanka Standard Time','SLST',6,false,'(UTC+05:30) Sri Jayawardenepura','Asia/Colombo'),
	 ('Nepal Standard Time','NST',6,false,'(UTC+05:45) Kathmandu','Asia/Kathmandu'),
	 ('Central Asia Standard Time','CAST',6,false,'(UTC+06:00) Astana','Antarctica/Vostok,Asia/Almaty,Asia/Bishkek,Asia/Qyzylorda,Asia/Urumqi,Etc/GMT-6,Indian/Chagos'),
	 ('Bangladesh Standard Time','BST',6,false,'(UTC+06:00) Dhaka','Asia/Dhaka,Asia/Thimphu'),
	 ('Myanmar Standard Time','MST',7,false,'(UTC+06:30) Yangon (Rangoon)','Asia/Rangoon,Indian/Cocos');
INSERT INTO timezone (value,abbr,"offset",isdst,"text",utc) VALUES
	 ('SE Asia Standard Time','SAST',7,false,'(UTC+07:00) Bangkok, Hanoi, Jakarta','Antarctica/Davis,Asia/Bangkok,Asia/Hovd,Asia/Jakarta,Asia/Phnom_Penh,Asia/Pontianak,Asia/Saigon,Asia/Vientiane,Etc/GMT-7,Indian/Christmas'),
	 ('N. Central Asia Standard Time','NCAST',7,false,'(UTC+07:00) Novosibirsk','Asia/Novokuznetsk,Asia/Novosibirsk,Asia/Omsk'),
	 ('China Standard Time','CST',8,false,'(UTC+08:00) Beijing, Chongqing, Hong Kong, Urumqi','Asia/Hong_Kong,Asia/Macau,Asia/Shanghai'),
	 ('North Asia Standard Time','NAST',8,false,'(UTC+08:00) Krasnoyarsk','Asia/Krasnoyarsk'),
	 ('Singapore Standard Time','MPST',8,false,'(UTC+08:00) Kuala Lumpur, Singapore','Asia/Brunei,Asia/Kuala_Lumpur,Asia/Kuching,Asia/Makassar,Asia/Manila,Asia/Singapore,Etc/GMT-8'),
	 ('W. Australia Standard Time','WAST',8,false,'(UTC+08:00) Perth','Antarctica/Casey,Australia/Perth'),
	 ('Taipei Standard Time','TST',8,false,'(UTC+08:00) Taipei','Asia/Taipei'),
	 ('Ulaanbaatar Standard Time','UST',8,false,'(UTC+08:00) Ulaanbaatar','Asia/Choibalsan,Asia/Ulaanbaatar'),
	 ('North Asia East Standard Time','NAEST',8,false,'(UTC+08:00) Irkutsk','Asia/Irkutsk'),
	 ('Japan Standard Time','JST',9,false,'(UTC+09:00) Osaka, Sapporo, Tokyo','Asia/Dili,Asia/Jayapura,Asia/Tokyo,Etc/GMT-9,Pacific/Palau');
INSERT INTO timezone (value,abbr,"offset",isdst,"text",utc) VALUES
	 ('Korea Standard Time','KST',9,false,'(UTC+09:00) Seoul','Asia/Pyongyang,Asia/Seoul'),
	 ('Cen. Australia Standard Time','CAST',10,false,'(UTC+09:30) Adelaide','Australia/Adelaide,Australia/Broken_Hill'),
	 ('AUS Central Standard Time','ACST',10,false,'(UTC+09:30) Darwin','Australia/Darwin'),
	 ('E. Australia Standard Time','EAST',10,false,'(UTC+10:00) Brisbane','Australia/Brisbane,Australia/Lindeman'),
	 ('AUS Eastern Standard Time','AEST',10,false,'(UTC+10:00) Canberra, Melbourne, Sydney','Australia/Melbourne,Australia/Sydney'),
	 ('West Pacific Standard Time','WPST',10,false,'(UTC+10:00) Guam, Port Moresby','Antarctica/DumontDUrville,Etc/GMT-10,Pacific/Guam,Pacific/Port_Moresby,Pacific/Saipan,Pacific/Truk'),
	 ('Yakutsk Standard Time','YST',9,false,'(UTC+09:00) Yakutsk','Asia/Chita,Asia/Khandyga,Asia/Yakutsk'),
	 ('Central Pacific Standard Time','CPST',11,false,'(UTC+11:00) Solomon Is., New Caledonia','Antarctica/Macquarie,Etc/GMT-11,Pacific/Efate,Pacific/Guadalcanal,Pacific/Kosrae,Pacific/Noumea,Pacific/Ponape'),
	 ('Vladivostok Standard Time','VST',11,false,'(UTC+11:00) Vladivostok','Asia/Sakhalin,Asia/Ust-Nera,Asia/Vladivostok'),
	 ('New Zealand Standard Time','NZST',12,false,'(UTC+12:00) Auckland, Wellington','Antarctica/McMurdo,Pacific/Auckland');
INSERT INTO timezone (value,abbr,"offset",isdst,"text",utc) VALUES
	 ('UTC+12','U',12,false,'(UTC+12:00) Coordinated Universal Time+12','Etc/GMT-12,Pacific/Funafuti,Pacific/Kwajalein,Pacific/Majuro,Pacific/Nauru,Pacific/Tarawa,Pacific/Wake,Pacific/Wallis'),
	 ('Fiji Standard Time','FST',12,false,'(UTC+12:00) Fiji','Pacific/Fiji'),
	 ('Magadan Standard Time','MST',12,false,'(UTC+12:00) Magadan','Asia/Anadyr,Asia/Kamchatka,Asia/Magadan,Asia/Srednekolymsk'),
	 ('Kamchatka Standard Time','KDT',13,true,'(UTC+12:00) Petropavlovsk-Kamchatsky - Old','Asia/Kamchatka'),
	 ('Tonga Standard Time','TST',13,false,'(UTC+13:00) Nuku''alofa','Etc/GMT-13,Pacific/Enderbury,Pacific/Fakaofo,Pacific/Tongatapu'),
	 ('Samoa Standard Time','SST',13,false,'(UTC+13:00) Samoa','Pacific/Apia');



INSERT INTO billing_product (id, capacity,code,external_id,name,product_type) VALUES
	 (1,1,'BSC',NULL,'License per month','service'),
	 (2,1,'KEYS_1',NULL,'1 Key per month','service'),
	 (3,1,'GB_1',NULL,'1 GB per month','service'),
	 (4,1,'BSP',NULL,'License per month','service');


INSERT INTO pricing_plan (id, base_package,billing_interval,enabled,external_id,interval_count,name,billing_product_id,price_type,unit_amount) VALUES
	 (1,true,'month',true,NULL,1,'License per month - USD',1,NULL,NULL),
	 (2,true,'year',true,NULL,1,'License per year - USD',1,NULL,NULL),
	 (3,false,'month',true,NULL,1,'1 key per month - USD',2,NULL,NULL),
	 (4,false,'month',true,NULL,1,'1GB per month - USD',3,NULL,NULL),
	 (5,false,'year',true,NULL,1,'1 key per year - USD',2,NULL,NULL),
	 (6,false,'year',true,NULL,1,'1GB per year - USD',3,NULL,NULL),
	 (7,true,'month',true,NULL,1,'License per month personal - USD',4,NULL,NULL),
	 (8,true,'year',true,NULL,1,'License per year personal - USD',4,NULL,NULL);


INSERT INTO payment_currency (amount,currency_code,pricing_plan_id) VALUES
	 (1.00,'USD',1),
	 (11.00,'USD',2),
	 (1.00,'USD',3),
	 (1.00,'USD',4),
	 (11.00,'USD',5),
	 (11.00,'USD',6),
	 (1.00,'USD',7),
	 (11.00,'USD',8);



INSERT INTO "language" (default_name,iso_code,dir,enabled) VALUES
	 ('Dutch','nl','ltr',false),
	 ('Russian','ru','ltr',false),
	 ('English','en','ltr',true),
	 ('عربى','ar','rtl',true),
	 ('Română ','ro','ltr',true),
	 ('한국어','ko','ltr',true),
	 ('Português','pt','ltr',false),
	 ('Deutsch','de','ltr',true),
	 ('Türkçe','tr','ltr',false),
	 ('Italiano','it','ltr',true);
INSERT INTO "language" (default_name,iso_code,dir,enabled) VALUES
	 ('中文(简体)','zh','ltr',true),
	 ('日本語','ja','ltr',true),
	 ('Hebrew','he','rtl',true),
	 ('Français','fr','ltr',true),
	 ('Español','es','ltr',true);



INSERT INTO data_center (dc_name,code,dc_path,"valid") VALUES
	 ('US - Dallas','DC1','dc1',true),
	 ('Europe - Frankfurt','DC2','dc2',true),
	 ('UK - London','DC3','dc3',true),
	 ('Asia - Tokio','DC4','dc4',true);


INSERT INTO email_label (id,name,created,created_by) VALUES
	 ('03445c6d-c82b-4669-8434-02cd8c48fccb','EMAIL.Inbox','2022-04-01 08:58:05.552032',NULL),
	 ('03445c6d-c82b-4669-8434-02cd8c48fccc','EMAIL.Draft','2022-04-01 08:58:05.552032',NULL),
	 ('03445c6d-c82b-4669-8434-02cd8c48fccd','EMAIL.Sent','2022-04-01 08:58:05.552032',NULL),
	 ('03445c6d-c82b-4669-8434-02cd8c48fcce','EMAIL.Scheduled','2022-04-01 08:58:05.552032',NULL),
	 ('03445c6d-c82b-4669-8434-02cd8c48fccf','EMAIL.Trash','2022-04-01 08:58:05.552032',NULL),
	 ('03445c6d-c82b-4669-8434-02cd8c48fccg','EMAIL.Archive','2022-04-01 08:58:05.552032',NULL);


INSERT INTO email_label_order (id,email_label_id,account_id,"order") VALUES
	 ('13445c6d-c82b-4669-8434-02cd8c48fccb','03445c6d-c82b-4669-8434-02cd8c48fccb',NULL,1),
	 ('13445c6d-c82b-4669-8434-02cd8c48fccc','03445c6d-c82b-4669-8434-02cd8c48fccc',NULL,2),
	 ('13445c6d-c82b-4669-8434-02cd8c48fccd','03445c6d-c82b-4669-8434-02cd8c48fccd',NULL,3),
	 ('13445c6d-c82b-4669-8434-02cd8c48fcce','03445c6d-c82b-4669-8434-02cd8c48fcce',NULL,4),
	 ('13445c6d-c82b-4669-8434-02cd8c48fccf','03445c6d-c82b-4669-8434-02cd8c48fccf',NULL,5),
	 ('13445c6d-c82b-4669-8434-02cd8c48fccg','03445c6d-c82b-4669-8434-02cd8c48fccg',NULL,6);

