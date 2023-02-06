#!/usr/local/Cellar/bash/5.2.15/bin/bash
# list of prefix to country from wikipedia
# search longest prefix first to find most precise match
# TODO: toupper on input
# NB mac stopped updating bash around version 3.x before associate arrays.  Use brew.

if [ $# -ne 1 ] ; then
	echo "Usage: $0 <prefix>"
	exit 1
fi
# NB we use recursion 
ORIGINAL=$1
PREFIX=${1^^}	# toupper

declare -A mapping

mapping[AA]="United States"
mapping[AB]="United States"
mapping[AC]="United States"
mapping[AD]="United States"
mapping[AE]="United States"
mapping[AF]="United States"
mapping[AG]="United States"
mapping[AH]="United States"
mapping[AI]="United States"
mapping[AJ]="United States"
mapping[AK]="United States"
mapping[AL]="United States"
mapping[AM]="Spain"
mapping[AN]="Spain"
mapping[AO]="Spain"
mapping[AP]="Pakistan"
mapping[AQ]="Pakistan"
mapping[AR]="Pakistan"
mapping[AS]="Pakistan"
mapping[AT]="India"
mapping[AU]="India"
mapping[AV]="India"
mapping[AW]="India"
mapping[AX]="Australia"
mapping[AY]="Argentina"
mapping[AZ]="Argentina"
mapping[A2]="Botswana"
mapping[A3]="Tonga"
mapping[A4]="Oman"
mapping[A5]="Bhutan"
mapping[A6]="United Arab Emirates"
mapping[A7]="Qatar"
mapping[A8]="Liberia"
mapping[A9]="Bahrain"
mapping[B]="China"
mapping[BM]="Taiwan"
mapping[BN]="Taiwan"
mapping[BO]="Taiwan"
mapping[BP]="Taiwan"
mapping[BQ]="Taiwan"
mapping[BU]="Taiwan"
mapping[BV]="Taiwan"
mapping[BW]="Taiwan"
mapping[BX]="Taiwan"
mapping[CA]="Chile"
mapping[CB]="Chile"
mapping[CC]="Chile"
mapping[CD]="Chile"
mapping[CE]="Chile"
mapping[CF]="Canada"
mapping[CG]="Canada"
mapping[CH]="Canada"
mapping[CI]="Canada"
mapping[CJ]="Canada"
mapping[CF]="Canada"
mapping[CL]="Cuba"
mapping[CM]="Cuba"
mapping[CN]="Morocco"
mapping[CO]="Cuba"
mapping[CP]="Bolivia"
mapping[CQ]="Portugal"
mapping[CS]="Portugal"
mapping[CT]="Portugal"
mapping[CU]="Portugal"
mapping[CV]="Uruguay"
mapping[CW]="Uruguay"
mapping[CX]="Uruguay"
mapping[CY]="Canada"
mapping[CZ]="Canada"
mapping[C2]="Nauru"
mapping[C3]="Andorra"
mapping[C4]="Cyprus"
mapping[C5]="The Gambia"
mapping[C6]="The Bahamas"
mapping[C7]="World Meteorological Organization[Note 2]"
mapping[C8]="Mozambique"
mapping[C9]="Mozambique"
mapping[DA]="Germany"
mapping[DB]="Germany"
mapping[DC]="Germany"
mapping[DD]="Germany"
mapping[DE]="Germany"
mapping[DF]="Germany"
mapping[DG]="Germany"
mapping[DH]="Germany"
mapping[DI]="Germany"
mapping[DJ]="Germany"
mapping[DK]="Germany"
mapping[DL]="Germany"
mapping[DM]="Germany"
mapping[DN]="Germany"
mapping[DO]="Germany"
mapping[DP]="Germany"
mapping[DQ]="Germany"
mapping[DR]="Germany"
mapping[DS]="South Korea"
mapping[DT]="South Korea"
mapping[DU]="Philippines"
mapping[DV]="Philippines"
mapping[DW]="Philippines"
mapping[DX]="Philippines"
mapping[DY]="Philippines"
mapping[DZ]="Philippines"
mapping[D2]="Angola"
mapping[D3]="Angola"
mapping[D4]="Cape Verde"
mapping[D5]="Liberia"
mapping[D6]="Comoros"
mapping[D7]="South Korea"
mapping[D8]="South Korea"
mapping[D9]="South Korea"
mapping[EA]="Spain"
mapping[EB]="Spain"
mapping[EC]="Spain"
mapping[ED]="Spain"
mapping[EE]="Spain"
mapping[EF]="Spain"
mapping[EG]="Spain"
mapping[EH]="Spain"
mapping[EI]="Ireland"
mapping[EJ]="Ireland"
mapping[EK]="Armenia"
mapping[EL]="Liberia"
mapping[EM]="Ukraine"
mapping[EN]="Ukraine"
mapping[EO]="Ukraine"
mapping[EP]="Iran"
mapping[EQ]="Iran"
mapping[ER]="Moldova"
mapping[ES]="Estonia"
mapping[ET]="Ethiopia"
mapping[EU]="Belarus"
mapping[EV]="Belarus"
mapping[EW]="Belarus"
mapping[EX]="Kyrgyzstan"
mapping[EY]="Tajikistan"
mapping[EZ]="Turkmenistan"
mapping[E2]="Thailand"
mapping[E3]="Eritrea"
mapping[E4]="Palestinian Authority"
mapping[E5]="Cook Islands"
mapping[E6]="Niue[Note 3]"
mapping[E7]="Bosnia and Herzegovina"
mapping[F]="France (and its Overseas departments/territories)"
mapping[G]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[HA]="Hungary"
mapping[HB]="Switzerland"
mapping[HB0]="Liechtenstein (uses prefixes allocated to Switzerland)"
mapping[HB3Y]="Liechtenstein (uses prefixes allocated to Switzerland)"
mapping[HBL]="Liechtenstein (uses prefixes allocated to Switzerland)"
mapping[HC]="Ecuador"
mapping[HD]="Ecuador"
mapping[HE]="Switzerland"
mapping[HF]="Poland"
mapping[HG]="Hungary"
mapping[HH]="Haiti"
mapping[HI]="Dominican Republic"
mapping[HJ]="Colombia"
mapping[HK]="Colombia"
mapping[HL]="South Korea"
mapping[HM]="North Korea"
mapping[HN]="Iraq"
mapping[HO]="Panama"
mapping[HP]="Panama"
mapping[HQ]="Honduras"
mapping[HR]="Honduras"
mapping[HS]="Thailand"
mapping[HT]="Nicaragua"
mapping[HU]="El Salvador"
mapping[HV]="Vatican City"
mapping[HW]="France (and its Overseas departments/territories)"
mapping[HX]="France (and its Overseas departments/territories)"
mapping[HY]="France (and its Overseas departments/territories)"
mapping[HZ]="Saudi Arabia"
mapping[H2]="Cyprus"
mapping[H3]="Panama"
mapping[H4]="Solomon Islands"
mapping[H6]="Nicaragua"
mapping[H7]="Nicaragua"
mapping[H8]="Panama"
mapping[H9]="Panama"
mapping[I]="Italy"
mapping[JA]="Japan"
mapping[JB]="Japan"
mapping[JC]="Japan"
mapping[JD]="Japan"
mapping[JE]="Japan"
mapping[JF]="Japan"
mapping[JG]="Japan"
mapping[JH]="Japan"
mapping[JI]="Japan"
mapping[JJ]="Japan"
mapping[JK]="Japan"
mapping[JL]="Japan"
mapping[JM]="Japan"
mapping[JN]="Japan"
mapping[JO]="Japan"
mapping[JP]="Japan"
mapping[JQ]="Japan"
mapping[JR]="Japan"
mapping[JS]="Japan"
mapping[JT]="Mongolia"
mapping[JU]="Mongolia"
mapping[JV]="Mongolia"
mapping[JW]="Norway"
mapping[JX]="Norway"
mapping[JY]="Jordan"
mapping[JZ]="Indonesia"
mapping[J2]="Djibouti"
mapping[J3]="Grenada"
mapping[J4]="Greece"
mapping[J5]="Guinea-Bissau"
mapping[J6]="Saint Lucia"
mapping[J7]="Dominica"
mapping[J8]="Saint Vincent and the Grenadines"
mapping[K]="United States"
mapping[LA]="Norway"
mapping[LB]="Norway"
mapping[LC]="Norway"
mapping[LD]="Norway"
mapping[LE]="Norway"
mapping[LF]="Norway"
mapping[LG]="Norway"
mapping[LH]="Norway"
mapping[LI]="Norway"
mapping[LJ]="Norway"
mapping[LK]="Norway"
mapping[LL]="Norway"
mapping[LM]="Norway"
mapping[LN]="Norway"
mapping[LO]="Argentina"
mapping[LP]="Argentina"
mapping[LQ]="Argentina"
mapping[LR]="Argentina"
mapping[LS]="Argentina"
mapping[LT]="Argentina"
mapping[LU]="Argentina"
mapping[LV]="Argentina"
mapping[LW]="Argentina"
mapping[LX]="Luxembourg"
mapping[LY]="Lithuania"
mapping[LZ]="Bulgaria"
mapping[L2]="Argentina"
mapping[L3]="Argentina"
mapping[L4]="Argentina"
mapping[L5]="Argentina"
mapping[L6]="Argentina"
mapping[L7]="Argentina"
mapping[L8]="Argentina"
mapping[L9]="Argentina"
mapping[M]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[N]="United States"
mapping[OA]="Peru"
mapping[OB]="Peru"
mapping[OC]="Peru"
mapping[OD]="Lebanon"
mapping[OE]="Austria"
mapping[OF]="Finland"
mapping[OG]="Finland"
mapping[OH]="Finland"
mapping[OI]="Finland"
mapping[OJ]="Finland"
mapping[OK]="Czech Republic"
mapping[OL]="Czech Republic"
mapping[OM]="Slovakia"
mapping[ON]="Belgium"
mapping[OP]="Belgium"
mapping[OQ]="Belgium"
mapping[OR]="Belgium"
mapping[OS]="Belgium"
mapping[OT]="Belgium"
mapping[OU]="Denmark"
mapping[OV]="Denmark"
mapping[OW]="Denmark"
mapping[OX]="Denmark"
mapping[OY]="Denmark"
mapping[OZ]="Denmark"
mapping[PA]="Netherlands"
mapping[PB]="Netherlands"
mapping[PC]="Netherlands"
mapping[PD]="Netherlands"
mapping[PE]="Netherlands"
mapping[PF]="Netherlands"
mapping[PG]="Netherlands"
mapping[PH]="Netherlands"
mapping[PI]="Netherlands"
mapping[PJ]="Netherlands – Former Netherlands Antilles"
mapping[PK]="Indonesia"
mapping[PL]="Indonesia"
mapping[PM]="Indonesia"
mapping[PM]="Indonesia"
mapping[PO]="Indonesia"
mapping[PP]="Brazil"
mapping[PQ]="Brazil"
mapping[PR]="Brazil"
mapping[PS]="Brazil"
mapping[PT]="Brazil"
mapping[PU]="Brazil"
mapping[PV]="Brazil"
mapping[PW]="Brazil"
mapping[PX]="Brazil"
mapping[PY]="Brazil"
mapping[PZ]="Suriname"
mapping[P2]="Papua New Guinea"
mapping[P3]="Cyprus"
mapping[P4]="Aruba"
mapping[P5]="North Korea"
mapping[P6]="North Korea"
mapping[P7]="North Korea"
mapping[P8]="North Korea"
mapping[P9]="North Korea"
mapping[R]="Russia"
mapping[SA]="Sweden"
mapping[SB]="Sweden"
mapping[SC]="Sweden"
mapping[SD]="Sweden"
mapping[SE]="Sweden"
mapping[SF]="Sweden"
mapping[SG]="Sweden"
mapping[SH]="Sweden"
mapping[SI]="Sweden"
mapping[SJ]="Sweden"
mapping[SK]="Sweden"
mapping[SL]="Sweden"
mapping[SM]="Sweden"
mapping[SN]="Poland"
mapping[SO]="Poland"
mapping[SP]="Poland"
mapping[SQ]="Poland"
mapping[SR]="Poland"
mapping[SSA]="Egypt[Note 4]"
mapping[SSB]="Egypt[Note 4]"
mapping[SSC]="Egypt[Note 4]"
mapping[SSD]="Egypt[Note 4]"
mapping[SSE]="Egypt[Note 4]"
mapping[SSF]="Egypt[Note 4]"
mapping[SSG]="Egypt[Note 4]"
mapping[SSH]="Egypt[Note 4]"
mapping[SSI]="Egypt[Note 4]"
mapping[SSJ]="Egypt[Note 4]"
mapping[SSK]="Egypt[Note 4]"
mapping[SSL]="Egypt[Note 4]"
mapping[SSM]="Egypt[Note 4]"
mapping[SSN]="Sudan[Note 4]"
mapping[SSO]="Sudan[Note 4]"
mapping[SSP]="Sudan[Note 4]"
mapping[SSQ]="Sudan[Note 4]"
mapping[SSR]="Sudan[Note 4]"
mapping[SSS]="Sudan[Note 4]"
mapping[SST]="Sudan[Note 4]"
mapping[SSU]="Sudan[Note 4]"
mapping[SSV]="Sudan[Note 4]"
mapping[SSW]="Sudan[Note 4]"
mapping[SSX]="Sudan[Note 4]"
mapping[SSY]="Sudan[Note 4]"
mapping[SSZ]="Sudan[Note 4]"
mapping[SU]="Egypt"
mapping[SV]="Greece"
mapping[SW]="Greece"
mapping[SX]="Greece"
mapping[SY]="Greece"
mapping[SZ]="Greece"
mapping[S2]="Bangladesh"
mapping[S3]="Bangladesh"
mapping[S5]="Slovenia"
mapping[S6]="Singapore"
mapping[S7]="Seychelles"
mapping[S8]="South Africa"
mapping[S9]="São Tomé and Príncipe"
mapping[TA]="Turkey"
mapping[TB]="Turkey"
mapping[TC]="Turkey"
mapping[TD]="Guatemala"
mapping[TE]="Costa Rica"
mapping[TF]="Iceland"
mapping[TG]="Guatemala"
mapping[TH]="France (and its Overseas departments/territories)"
mapping[TI]="Costa Rica"
mapping[TJ]="Cameroon"
mapping[TK]="France (and its Overseas departments/territories)"
mapping[TL]="Central African Republic"
mapping[TM]="France (and its Overseas departments/territories)"
mapping[TN]="Republic of the Congo"
mapping[TO]="France (and its Overseas departments/territories)"
mapping[TP]="France (and its Overseas departments/territories)"
mapping[TQ]="France (and its Overseas departments/territories)"
mapping[TR]="Gabon"
mapping[TS]="Tunisia"
mapping[TT]="Chad"
mapping[TU]="Ivory Coast"
mapping[TV]="France (and its Overseas departments/territories)"
mapping[TW]="France (and its Overseas departments/territories)"
mapping[TX]="France (and its Overseas departments/territories)"
mapping[TY]="Benin"
mapping[TZ]="Mali"
mapping[T2]="Tuvalu"
mapping[T3]="Kiribati"
mapping[T4]="Cuba"
mapping[T5]="Somalia"
mapping[T6]="Afghanistan"
mapping[T7]="San Marino"
mapping[T8]="Palau"
mapping[UA]="Russia"
mapping[UB]="Russia"
mapping[UC]="Russia"
mapping[UD]="Russia"
mapping[UE]="Russia"
mapping[UF]="Russia"
mapping[UG]="Russia"
mapping[UH]="Russia"
mapping[UI]="Russia"
mapping[UJ]="Uzbekistan"
mapping[UK]="Uzbekistan"
mapping[UL]="Uzbekistan"
mapping[UM]="Uzbekistan"
mapping[UN]="Kazakhstan"
mapping[UO]="Kazakhstan"
mapping[UP]="Kazakhstan"
mapping[UQ]="Kazakhstan"
mapping[UR]="Ukraine"
mapping[US]="Ukraine"
mapping[UT]="Ukraine"
mapping[UU]="Ukraine"
mapping[UV]="Ukraine"
mapping[UW]="Ukraine"
mapping[UX]="Ukraine"
mapping[UY]="Ukraine"
mapping[UZ]="Ukraine"
mapping[VA]="Canada"
mapping[VB]="Canada"
mapping[VC]="Canada"
mapping[VD]="Canada"
mapping[VE]="Canada"
mapping[VF]="Canada"
mapping[VG]="Canada"
mapping[VH]="Australia"
mapping[VI]="Australia"
mapping[VJ]="Australia"
mapping[VK]="Australia"
mapping[VL]="Australia"
mapping[VM]="Australia"
mapping[VN]="Australia"
mapping[VO]="Canada (formerly Dominion of Newfoundland)"
mapping[VP]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[VQ]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[VR]="Hong Kong (Special administrative regions of China)"
mapping[VS]="United Kingdom"
mapping[VT]="India"
mapping[VU]="India"
mapping[VV]="India"
mapping[VW]="India"
mapping[VX]="Canada"
mapping[VY]="Canada"
mapping[VZ]="Australia"
mapping[V2]="Antigua and Barbuda"
mapping[V3]="Belize"
mapping[V4]="Saint Kitts and Nevis"
mapping[V5]="Namibia"
mapping[V6]="Federated States of Micronesia"
mapping[V7]="Marshall Islands"
mapping[V8]="Brunei"
mapping[W]="United States"
mapping[XA]="Mexico"
mapping[XB]="Mexico"
mapping[XC]="Mexico"
mapping[XD]="Mexico"
mapping[XE]="Mexico"
mapping[XF]="Mexico"
mapping[XG]="Mexico"
mapping[XH]="Mexico"
mapping[XI]="Mexico"
mapping[XJ]="Canada"
mapping[XK]="Canada"
mapping[XL]="Canada"
mapping[XM]="Canada"
mapping[XN]="Canada"
mapping[XO]="Canada"
mapping[XP]="Denmark"
mapping[XQ]="Chile"
mapping[XR]="Chile"
mapping[XS]="China"
mapping[XT]="Burkina Faso"
mapping[XU]="Cambodia"
mapping[XV]="Vietnam"
mapping[XW]="Laos"
mapping[XX]="Macao (Special administrative regions of China)"
mapping[XY]="Burma"
mapping[XZ]="Burma"
mapping[YA]="Afghanistan"
mapping[YB]="Indonesia"
mapping[YC]="Indonesia"
mapping[YD]="Indonesia"
mapping[YE]="Indonesia"
mapping[YF]="Indonesia"
mapping[YF]="Indonesia"
mapping[YH]="Indonesia"
mapping[YI]="Iraq"
mapping[YJ]="Vanuatu"
mapping[YK]="Syria"
mapping[YL]="Latvia"
mapping[YM]="Turkey"
mapping[YN]="Nicaragua"
mapping[YO]="Romania"
mapping[YP]="Romania"
mapping[YQ]="Romania"
mapping[YR]="Romania"
mapping[YS]="El Salvador"
mapping[YT]="Serbia"
mapping[YU]="Serbia"
mapping[YV]="Venezuela"
mapping[YW]="Venezuela"
mapping[YX]="Venezuela"
mapping[YY]="Venezuela"
mapping[Y2]="Germany"
mapping[Y3]="Germany"
mapping[Y4]="Germany"
mapping[Y5]="Germany"
mapping[Y6]="Germany"
mapping[Y7]="Germany"
mapping[Y8]="Germany"
mapping[Y9]="Germany"
mapping[ZA]="Albania"
mapping[ZB]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[ZC]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[ZD]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[ZE]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[ZF]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[ZG]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[ZH]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[ZI]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[ZJ]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[ZK]="New Zealand"
mapping[ZL]="New Zealand"
mapping[ZM]="New Zealand"
mapping[ZN]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[ZO]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[ZP]="Paraguay"
mapping[ZQ]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[ZR]="South Africa"
mapping[ZS]="South Africa"
mapping[ZT]="South Africa"
mapping[ZU]="South Africa"
mapping[ZV]="Brazil"
mapping[ZW]="Brazil"
mapping[ZX]="Brazil"
mapping[ZY]="Brazil"
mapping[ZZ]="Brazil"
mapping[Z2]="Zimbabwe"
mapping[Z3]="North Macedonia"
mapping[Z8]="South Sudan[Note 3]"
mapping[2]="United Kingdom (and its overseas territories/Crown dependencies)"
mapping[3A]="Monaco"
mapping[3B]="Mauritius"
mapping[3C]="Equatorial Guinea"
mapping[3DA]="Eswatini[Note 4]"
mapping[3DB]="Eswatini[Note 4]"
mapping[3DC]="Eswatini[Note 4]"
mapping[3DD]="Eswatini[Note 4]"
mapping[3DE]="Eswatini[Note 4]"
mapping[3DF]="Eswatini[Note 4]"
mapping[3DG]="Eswatini[Note 4]"
mapping[3DH]="Eswatini[Note 4]"
mapping[3DI]="Eswatini[Note 4]"
mapping[3DJ]="Eswatini[Note 4]"
mapping[3DK]="Eswatini[Note 4]"
mapping[3DL]="Eswatini[Note 4]"
mapping[3DM]="Eswatini[Note 4]"
mapping[3DN]="Fiji[Note 4]"
mapping[3DO]="Fiji[Note 4]"
mapping[3DP]="Fiji[Note 4]"
mapping[3DQ]="Fiji[Note 4]"
mapping[3DR]="Fiji[Note 4]"
mapping[3DS]="Fiji[Note 4]"
mapping[3DT]="Fiji[Note 4]"
mapping[3DU]="Fiji[Note 4]"
mapping[3DV]="Fiji[Note 4]"
mapping[3DW]="Fiji[Note 4]"
mapping[3DX]="Fiji[Note 4]"
mapping[3DY]="Fiji[Note 4]"
mapping[3DZ]="Fiji[Note 4]"
# TDB 230206 - https://www.slow-journalism.com/from-the-archive/the-battle-of-bir-tawil
mapping[3D2]="Bir Tawil - unrecognized country"
mapping[3EF]="Panama"
mapping[3F]="Panama"
mapping[3G]="Chile"
mapping[3H]="China"
mapping[3I]="China"
mapping[3J]="China"
mapping[3K]="China"
mapping[3L]="China"
mapping[3M]="China"
mapping[3N]="China"
mapping[3O]="China"
mapping[3P]="China"
mapping[3Q]="China"
mapping[3R]="China"
mapping[3S]="China"
mapping[3T]="China"
mapping[3U]="China"
mapping[3V]="Tunisia"
mapping[3W]="Vietnam"
mapping[3X]="Guinea"
mapping[3Y]="Norway"
mapping[3Z]="Poland"
mapping[4A]="Mexico"
mapping[4B]="Mexico"
mapping[4C]="Mexico"
mapping[4D]="Philippines"
mapping[4E]="Philippines"
mapping[4F]="Philippines"
mapping[4G]="Philippines"
mapping[4H]="Philippines"
mapping[4I]="Philippines"
mapping[4J]="Azerbaijan"
mapping[4K]="Azerbaijan"
mapping[4L]="Georgia"
mapping[4M]="Venezuela"
mapping[4O]="Montenegro"
mapping[4P]="Sri Lanka"
mapping[4Q]="Sri Lanka"
mapping[4R]="Sri Lanka"
mapping[4S]="Sri Lanka"
mapping[4T]="Peru"
mapping[4U]="United Nations[Note 2]"
mapping[4V]="Haiti"
mapping[4W]="Timor-Leste"
mapping[4X]="Israel"
mapping[4Y]="International Civil Aviation Organization[Note 2]"
mapping[4Z]="Israel"
mapping[5A]="Libya"
mapping[5B]="Cyprus"
mapping[5C]="Morocco"
mapping[5D]="Morocco"
mapping[5E]="Morocco"
mapping[5F]="Morocco"
mapping[5G]="Morocco"
mapping[5H]="Tanzania"
mapping[5I]="Tanzania"
mapping[5J]="Colombia"
mapping[5K]="Colombia"
mapping[5L]="Liberia"
mapping[5M]="Liberia"
mapping[5N]="Nigeria"
mapping[5O]="Nigeria"
mapping[5P]="Denmark"
mapping[5Q]="Denmark"
mapping[5R]="Madagascar"
mapping[5S]="Madagascar"
mapping[5T]="Mauritania"
mapping[5U]="Niger"
mapping[5V]="Togo"
mapping[5W]="Western Samoa"
mapping[5X]="Uganda"
mapping[5Y]="Kenya"
mapping[5Z]="Kenya"
mapping[6A]="Egypt"
mapping[6B]="Egypt"
mapping[6C]="Syria"
mapping[6D]="Mexico"
mapping[6E]="Mexico"
mapping[6F]="Mexico"
mapping[6G]="Mexico"
mapping[6H]="Mexico"
mapping[6I]="Mexico"
mapping[6J]="Mexico"
mapping[6K]="South Korea"
mapping[6L]="South Korea"
mapping[6M]="South Korea"
mapping[6N]="South Korea"
mapping[6O]="Somalia"
mapping[6P]="Pakistan"
mapping[6Q]="Pakistan"
mapping[6R]="Pakistan"
mapping[6S]="Pakistan"
mapping[6T]="Sudan"
mapping[6U]="Sudan"
mapping[6V]="Senegal"
mapping[6W]="Senegal"
mapping[6X]="Madagascar"
mapping[6Y]="Jamaica"
mapping[6Z]="Liberia"
mapping[7A]="Indonesia"
mapping[7B]="Indonesia"
mapping[7C]="Indonesia"
mapping[7D]="Indonesia"
mapping[7E]="Indonesia"
mapping[7F]="Indonesia"
mapping[7G]="Indonesia"
mapping[7H]="Indonesia"
mapping[7I]="Indonesia"
mapping[7J]="Japan"
mapping[7K]="Japan"
mapping[7L]="Japan"
mapping[7M]="Japan"
mapping[7N]="Japan"
mapping[7O]="Yemen"
mapping[7P]="Lesotho"
mapping[7Q]="Malawi"
mapping[7R]="Algeria"
mapping[7S]="Sweden"
mapping[7T]="Algeria"
mapping[7U]="Algeria"
mapping[7V]="Algeria"
mapping[7W]="Algeria"
mapping[7X]="Algeria"
mapping[7Y]="Algeria"
mapping[7Z]="Saudi Arabia"
mapping[8A]="Indonesia"
mapping[8B]="Indonesia"
mapping[8C]="Indonesia"
mapping[8D]="Indonesia"
mapping[8E]="Indonesia"
mapping[8F]="Indonesia"
mapping[8G]="Indonesia"
mapping[8H]="Indonesia"
mapping[8I]="Indonesia"
mapping[8J]="Japan"
mapping[8K]="Japan"
mapping[8L]="Japan"
mapping[8M]="Japan"
mapping[8N]="Japan"
mapping[8O]="Botswana"
mapping[8P]="Barbados"
mapping[8Q]="Maldives"
mapping[8R]="Guyana"
mapping[8S]="Sweden"
mapping[8T]="India"
mapping[8U]="India"
mapping[8V]="India"
mapping[8W]="India"
mapping[8X]="India"
mapping[8Y]="India"
mapping[8Z]="Saudi Arabia"
mapping[9A]="Croatia"
mapping[9B]="Iran"
mapping[9C]="Iran"
mapping[9D]="Iran"
mapping[9E]="Ethiopia"
mapping[9F]="Ethiopia"
mapping[9G]="Ghana"
mapping[9H]="Malta"
mapping[9I]="Zambia"
mapping[9J]="Zambia"
mapping[9K]="Kuwait"
mapping[9L]="Sierra Leone"
mapping[9M]="Malaysia"
mapping[9N]="Nepal"
mapping[9O]="Democratic Republic of the Congo"
mapping[9P]="Democratic Republic of the Congo"
mapping[9Q]="Democratic Republic of the Congo"
mapping[9R]="Democratic Republic of the Congo"
mapping[9S]="Democratic Republic of the Congo"
mapping[9T]="Democratic Republic of the Congo"
mapping[9U]="Burundi"
mapping[9V]="Singapore"
mapping[9W]="Malaysia"
mapping[9X]="Rwanda"
mapping[9Y]="Trinidad and Tobago"
mapping[9Z]="Trinidad and Tobago"

if [ "${mapping[$PREFIX]}" != "" ] ; then
	echo ${mapping[$PREFIX]}
else
	# if prefix is only a single char we are done
	if [ ${#PREFIX} -eq 1 ] ; then
		echo NO MATCH
	else # shorten prefix (if possible) and try again
		PREFIX=`echo $PREFIX | sed 's/.$//'`
		$0 $PREFIX
	fi
fi
