-- Active: 1706263855272@@127.0.0.1@3306@bookstore
CREATE TABLE countries (
    id_country INT AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(100) NOT NULL,
    iso_code CHAR(2) NOT NULL
);

INSERT INTO countries (id_country, country, iso_code) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Albania', 'AL'),
(3, 'Algeria', 'DZ'),
(4, 'Andorra', 'AD'),
(5, 'Angola', 'AO'),
(6, 'Antigua and Barbuda', 'AG'),
(7, 'Argentina', 'AR'),
(8, 'Armenia', 'AM'),
(9, 'Australia', 'AU'),
(10, 'Austria', 'AT'),
(11, 'Azerbaijan', 'AZ'),
(12, 'Bahamas', 'BS'),
(13, 'Bahrain', 'BH'),
(14, 'Bangladesh', 'BD'),
(15, 'Barbados', 'BB'),
(16, 'Belarus', 'BY'),
(17, 'Belgium', 'BE'),
(18, 'Belize', 'BZ'),
(19, 'Benin', 'BJ'),
(20, 'Bhutan', 'BT'),
(21, 'Bolivia', 'BO'),
(22, 'Bosnia and Herzegovina', 'BA'),
(23, 'Botswana', 'BW'),
(24, 'Brazil', 'BR'),
(25, 'Brunei', 'BN'),
(26, 'Bulgaria', 'BG'),
(27, 'Burkina Faso', 'BF'),
(28, 'Burundi', 'BI'),
(29, 'Cabo Verde', 'CV'),
(30, 'Cambodia', 'KH'),
(31, 'Cameroon', 'CM'),
(32, 'Canada', 'CA'),
(33, 'Central African Republic', 'CF'),
(34, 'Chad', 'TD'),
(35, 'Chile', 'CL'),
(36, 'China', 'CN'),
(37, 'Colombia', 'CO'),
(38, 'Comoros', 'KM'),
(39, 'Congo (Congo-Brazzaville)', 'CG'),
(40, 'Costa Rica', 'CR'),
(41, 'Croatia', 'HR'),
(42, 'Cuba', 'CU'),
(43, 'Cyprus', 'CY'),
(44, 'Czech Republic', 'CZ'),
(45, 'Denmark', 'DK'),
(46, 'Djibouti', 'DJ'),
(47, 'Dominica', 'DM'),
(48, 'Dominican Republic', 'DO'),
(49, 'Ecuador', 'EC'),
(50, 'Egypt', 'EG'),
(51, 'El Salvador', 'SV'),
(52, 'Equatorial Guinea', 'GQ'),
(53, 'Eritrea', 'ER'),
(54, 'Estonia', 'EE'),
(55, 'Eswatini', 'SZ'),
(56, 'Ethiopia', 'ET'),
(57, 'Fiji', 'FJ'),
(58, 'Finland', 'FI'),
(59, 'France', 'FR'),
(60, 'Gabon', 'GA'),
(61, 'Gambia', 'GM'),
(62, 'Georgia', 'GE'),
(63, 'Germany', 'DE'),
(64, 'Ghana', 'GH'),
(65, 'Greece', 'GR'),
(66, 'Grenada', 'GD'),
(67, 'Guatemala', 'GT'),
(68, 'Guinea', 'GN'),
(69, 'Guinea-Bissau', 'GW'),
(70, 'Guyana', 'GY'),
(71, 'Haiti', 'HT'),
(72, 'Honduras', 'HN'),
(73, 'Hungary', 'HU'),
(74, 'Iceland', 'IS'),
(75, 'India', 'IN'),
(76, 'Indonesia', 'ID'),
(77, 'Iran', 'IR'),
(78, 'Iraq', 'IQ'),
(79, 'Ireland', 'IE'),
(80, 'Israel', 'IL'),
(81, 'Italy', 'IT'),
(82, 'Jamaica', 'JM'),
(83, 'Japan', 'JP'),
(84, 'Jordan', 'JO'),
(85, 'Kazakhstan', 'KZ'),
(86, 'Kenya', 'KE'),
(87, 'Kiribati', 'KI'),
(88, 'Kuwait', 'KW'),
(89, 'Kyrgyzstan', 'KG'),
(90, 'Laos', 'LA'),
(91, 'Latvia', 'LV'),
(92, 'Lebanon', 'LB'),
(93, 'Lesotho', 'LS'),
(94, 'Liberia', 'LR'),
(95, 'Libya', 'LY'),
(96, 'Liechtenstein', 'LI'),
(97, 'Lithuania', 'LT'),
(98, 'Luxembourg', 'LU'),
(99, 'Madagascar', 'MG'),
(100, 'Malawi', 'MW'),
(101, 'Malaysia', 'MY'),
(102, 'Maldives', 'MV'),
(103, 'Mali', 'ML'),
(104, 'Malta', 'MT'),
(105, 'Marshall Islands', 'MH'),
(106, 'Mauritania', 'MR'),
(107, 'Mauritius', 'MU'),
(108, 'Mexico', 'MX'),
(109, 'Micronesia', 'FM'),
(110, 'Moldova', 'MD'),
(111, 'Monaco', 'MC'),
(112, 'Mongolia', 'MN'),
(113, 'Montenegro', 'ME'),
(114, 'Morocco', 'MA'),
(115, 'Mozambique', 'MZ'),
(116, 'Myanmar', 'MM'),
(117, 'Namibia', 'NA'),
(118, 'Nauru', 'NR'),
(119, 'Nepal', 'NP'),
(120, 'Netherlands', 'NL'),
(121, 'New Zealand', 'NZ'),
(122, 'Nicaragua', 'NI'),
(123, 'Niger', 'NE'),
(124, 'Nigeria', 'NG'),
(125, 'North Korea', 'KP'),
(126, 'North Macedonia', 'MK'),
(127, 'Norway', 'NO'),
(128, 'Oman', 'OM'),
(129, 'Pakistan', 'PK'),
(130, 'Palau', 'PW'),
(131, 'Palestine', 'PS'),
(132, 'Panama', 'PA'),
(133, 'Papua New Guinea', 'PG'),
(134, 'Paraguay', 'PY'),
(135, 'Peru', 'PE'),
(136, 'Philippines', 'PH'),
(137, 'Poland', 'PL'),
(138, 'Portugal', 'PT'),
(139, 'Qatar', 'QA'),
(140, 'Romania', 'RO'),
(141, 'Russia', 'RU'),
(142, 'Rwanda', 'RW'),
(143, 'Saint Kitts and Nevis', 'KN'),
(144, 'Saint Lucia', 'LC'),
(145, 'Saint Vincent and the Grenadines', 'VC'),
(146, 'Samoa', 'WS'),
(147, 'San Marino', 'SM'),
(148, 'Sao Tome and Principe', 'ST'),
(149, 'Saudi Arabia', 'SA'),
(150, 'Senegal', 'SN'),
(151, 'Serbia', 'RS'),
(152, 'Seychelles', 'SC'),
(153, 'Sierra Leone', 'SL'),
(154, 'Singapore', 'SG'),
(155, 'Slovakia', 'SK'),
(156, 'Slovenia', 'SI'),
(157, 'Solomon Islands', 'SB'),
(158, 'Somalia', 'SO'),
(159, 'South Africa', 'ZA'),
(160, 'South Korea', 'KR'),
(161, 'South Sudan', 'SS'),
(162, 'Spain', 'ES'),
(163, 'Sri Lanka', 'LK'),
(164, 'Sudan', 'SD'),
(165, 'Suriname', 'SR'),
(166, 'Sweden', 'SE'),
(167, 'Switzerland', 'CH'),
(168, 'Syria', 'SY'),
(169, 'Tajikistan', 'TJ'),
(170, 'Tanzania', 'TZ'),
(171, 'Thailand', 'TH'),
(172, 'Timor-Leste', 'TL'),
(173, 'Togo', 'TG'),
(174, 'Tonga', 'TO'),
(175, 'Trinidad and Tobago', 'TT'),
(176, 'Tunisia', 'TN'),
(177, 'Turkey', 'TR'),
(178, 'Turkmenistan', 'TM'),
(179, 'Tuvalu', 'TV'),
(180, 'Uganda', 'UG'),
(181, 'Ukraine', 'UA'),
(182, 'United Arab Emirates', 'AE'),
(183, 'United Kingdom', 'GB'),
(184, 'United States', 'US'),
(185, 'Uruguay', 'UY'),
(186, 'Uzbekistan', 'UZ'),
(187, 'Vanuatu', 'VU'),
(188, 'Venezuela', 'VE'),
(189, 'Vietnam', 'VN'),
(190, 'Yemen', 'YE'),
(191, 'Zambia', 'ZM'),
(192, 'Zimbabwe', 'ZW');
