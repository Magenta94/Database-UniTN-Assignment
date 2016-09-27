\c db2016;
SET search_path TO assignment2,public;

/* Country(code: Str, name: Str, capital: Str, area: int) */
INSERT INTO "Country" VALUES ('I', 'Italy', 'Rome', 301338);
INSERT INTO "Country" VALUES ('USA', 'United States', 'Washington D.C.', 9857306);
INSERT INTO "Country" VALUES ('AUS', 'Australia', 'Sydney', 7692024);
INSERT INTO "Country" VALUES ('BR', 'Brazil', 'Brasilia', 8515767);
INSERT INTO "Country" VALUES ('J', 'Japan', 'Tokyo', 377944);
INSERT INTO "Country" VALUES ('JA', 'Jamaica', 'Kingston', 10991);
INSERT INTO "Country" VALUES ('KZ', 'Kazakhstan', 'Astana', 2724900);
INSERT INTO "Country" VALUES ('MEX', 'Mexico', 'Mexico City', 1972550);
INSERT INTO "Country" VALUES ('NZ', 'New Zealand', 'Wellington', 268021);
INSERT INTO "Country" VALUES ('RCB', 'Republic of the Congo', 'Brazzaville', 342000);
INSERT INTO "Country" VALUES ('CDN', 'Canada', 'Ottawa', 9984670);
INSERT INTO "Country" VALUES ('K', 'Cambodia', 'Phnom Penh', 181035);
INSERT INTO "Country" VALUES ('D', 'Germany', 'Berlin', 357168);
INSERT INTO "Country" VALUES ('GB', 'United Kingdom', 'London', 242495);
INSERT INTO "Country" VALUES ('PA', 'Panama', 'Panama City', 75517);

/* Population(country: Str, population: int, children: int, adult: int, birth_rate: int, death_rate: int, sex_ratio: int) */
INSERT INTO "Population" VALUES ('I', 61855120, 14, 66, 9, 10, 93);
INSERT INTO "Population" VALUES ('USA', 321368864, 19, 67, 13, 8, 97);
INSERT INTO "Population" VALUES ('AUS', 22751014, 18, 67, 12, 7, 101);
INSERT INTO "Population" VALUES ('BR', 204259812, 23, 69, 14, 7, 97);
INSERT INTO "Population" VALUES ('J', 126919659, 13, 60, 8, 10, 94);
INSERT INTO "Population" VALUES ('JA', 2950210, 28, 64, 18, 7, 98);
INSERT INTO "Population" VALUES ('KZ', 18157122, 25, 68, 19, 8, 92);
INSERT INTO "Population" VALUES ('MEX', 121736809, 28, 57, 19, 5, 96);
INSERT INTO "Population" VALUES ('NZ', 4438393, 20, 66, 13, 7, 99);
INSERT INTO "Population" VALUES ('RCB', 4755097, 41, 55, 36, 10, 101);
INSERT INTO "Population" VALUES ('CDN', 35099836, 15, 67, 10, 8, 98);
INSERT INTO "Population" VALUES ('K', 15708756, 31, 65, 24, 8, 94);
INSERT INTO "Population" VALUES ('D', 80854408, 13, 67, 8, 11, 97);
INSERT INTO "Population" VALUES ('GB', 64511000, 17, 65, 12, 9, 99);
INSERT INTO "Population" VALUES ('PA', 3608431, 27, 65, 18, 5, 101);

/* Economy (country: Str, GDP: int, inflation: int, military: int, poverty: int) */
INSERT INTO "Economy" VALUES ('I', 2174000, 1, 2, 30);
INSERT INTO "Economy" VALUES ('USA', 17420000, 2, 4, 15);
INSERT INTO "Economy" VALUES ('AUS', 1095000, 3, 2, 9);
INSERT INTO "Economy" VALUES ('BR', 3264000, 6, 1, 21);
INSERT INTO "Economy" VALUES ('J', 4751000, 3, 1, 16);
INSERT INTO "Economy" VALUES ('JA', 24100, 7, 1, 17);
INSERT INTO "Economy" VALUES ('KZ', 418500, 7, 1, 5);
INSERT INTO "Economy" VALUES ('MEX', 2141000, 4, 1, 52);
INSERT INTO "Economy" VALUES ('NZ', 158900, 1, 1, 1);
INSERT INTO "Economy" VALUES ('RCB', 28040, 1, 1, 47);
INSERT INTO "Economy" VALUES ('CDN', 1592000, 2, 1, 9);
INSERT INTO "Economy" VALUES ('K', 418500, 7, 1, 5);
INSERT INTO "Economy" VALUES ('D', 3722000, 1, 1, 16);
INSERT INTO "Economy" VALUES ('GB', 2549000, 2, 3, 15);
INSERT INTO "Economy" VALUES ('PA', 7642040, 3, 1, 26);

/* Language (country: Str, language: Str, percentage: int) */
INSERT INTO "Language" VALUES ('I', 'Italian', 50);
INSERT INTO "Language" VALUES ('I', 'German', 10);
INSERT INTO "Language" VALUES ('I', 'French', 4);
INSERT INTO "Language" VALUES ('USA', 'English', 79);
INSERT INTO "Language" VALUES ('USA', 'Spanish', 13);
INSERT INTO "Language" VALUES ('AUS', 'English', 77);
INSERT INTO "Language" VALUES ('AUS', 'Italian', 1);
INSERT INTO "Language" VALUES ('BR', 'Portuguese', 90);
INSERT INTO "Language" VALUES ('J', 'Japanese', 100);
INSERT INTO "Language" VALUES ('JA', 'English', 100);
INSERT INTO "Language" VALUES ('KZ', 'Kazakh', 64);
INSERT INTO "Language" VALUES ('MEX', 'Spanish', 93);
INSERT INTO "Language" VALUES ('MEX', 'Indigenous', 1);
INSERT INTO "Language" VALUES ('NZ', 'English', 90);
INSERT INTO "Language" VALUES ('NZ', 'Maori', 4);
INSERT INTO "Language" VALUES ('RCB', 'French', 65);
INSERT INTO "Language" VALUES ('CDN', 'English', 59);
INSERT INTO "Language" VALUES ('CDN', 'French', 22);
INSERT INTO "Language" VALUES ('K', 'Khmer', 96);
INSERT INTO "Language" VALUES ('D', 'German', 80);
INSERT INTO "Language" VALUES ('GB', 'English', 60);
INSERT INTO "Language" VALUES ('GB', 'Scotts', 30);
INSERT INTO "Language" VALUES ('PA', 'Spanish', 70);