//
//  AssetDefinitionXML.swift
//  AlphaWallet
//
//  Created by James Sangalli on 11/4/18.
//

import Foundation

class AssetDefinitionXML {
    
    // swiftlint:disable:next line_length
    public static let assetDefinition = "<?xml version=\"1.0\" encoding=\"UTF-8\"?> <asset> <contract> <address type=\"issuing\">0xa3347C8ED134444C25169872c90a6360D42b3691</address> </contract> <tokenFeatures> <trade method=\"market-queue\" version=\"0.1\"> <gateway>https://482kdh4npg.execute-api.ap-southeast-1.amazonaws.com/dev/</gateway> </trade> <trade method=\"universal-link\" version=\"9\"> <prefix>https://app.awallet.io/</prefix> </trade> <redeem> <method name=\"QR\"/> <!-- <method name=\"Aztec\"/> <method name=\"Bluetooth\"/> --> </redeem> </tokenFeatures> <!-- token UI definition can happen here --> <fields> <!-- There are 64 matches (1-64), each has up to 16 ticket classes, within each class, there are less than 65536 tickets. A compact format identifier would consist of 26 bits: [6] [4] [16] Representing: Match ID: 1-64 Class: 1-16 Seat: 0-65536 These are represented by 7 hex codes. Therefore 0x40F0481 means the final match (64th), class F (highest) ticket number 1153. But we didn't end up using this compatct form. Information about a match, like Venue, City, Date, which team against which, can all be looked up by MatchID. There are advantages and disadvantages in encoding them by a look up table or by a bit field. The advantage of storing them as a bit field is that one can enquiry the range of it in the market queue server without the server kowing the meaning of the bitfields. Furthermore it make the android and ios library which accesses the XML file a bit easier to write, but at the cost that the ticket issuing (authorisation) server is a bit more complicated. For now we decide to use bit-fields. The fields, together with its bitwidth or byte-width are represented in this table: Fields: City, Venue, Date, TeamA, TeamB, Match, Category Maximum, 2018: 11, 12, 32, 32, 32, 64, 16 Maximum, all time:64, 64, 64, 32, 32, 64, 64 Bitwidth: 6, 6, 6, 5, 5, 6, 6 Bytewidth: 1, 1, 4, 3, 3, 1, 1, In practise, because this XML file is used in 3 to 4 places (authorisation server, ios, android, potentially market-queue), Weiwu thought that it helps the developers if we use byte-fields instead of bit-fields. --> <field bitmask=\"FF000000000000000000000000000000\" id=\"locality\" type=\"Enumeration\"> <name lang=\"ru\">город</name> <name lang=\"en\">City</name> <name lang=\"zh\">城市</name> <name lang=\"es\">Ciudad</name> <mapping> <entity key=\"1\"> <name lang=\"ru\">Москва́</name> <name lang=\"en\">Moscow</name> <name lang=\"zh\">莫斯科</name> <name lang=\"es\">Moscú</name> </entity> <entity key=\"2\"> <name lang=\"ru\">Санкт-Петербу́рг</name> <name lang=\"en\">Saint Petersburg</name> <name lang=\"zh\">圣彼得堡</name> <name lang=\"es\">San Petersburgo</name> </entity> <entity key=\"3\"> <name lang=\"ru\">сочи</name> <name lang=\"en\">Sochi</name> <name lang=\"zh\">索契</name> <name lang=\"es\">Sochi</name> </entity> <entity key=\"4\"> <name lang=\"ru\">екатеринбург</name> <name lang=\"en\">Ekaterinburg</name> <name lang=\"zh\">叶卡捷琳堡</name> <name lang=\"es\">Ekaterinburg</name> </entity> <entity key=\"5\"> <name lang=\"ru\">Саранск</name> <name lang=\"en\">Saransk</name> <name lang=\"zh\">萨兰斯克</name> <name lang=\"es\">Saransk</name> </entity> <entity key=\"6\"> <name lang=\"ru\">казань</name> <name lang=\"en\">Kazan</name> <name lang=\"zh\">喀山</name> <name lang=\"es\">Kazan</name> </entity> <entity key=\"7\"> <name lang=\"ru\">Нижний Новгород</name> <name lang=\"en\">Nizhny Novgorod</name> <name lang=\"zh\">下诺夫哥罗德</name> <name lang=\"es\">Nizhny Novgorod</name> </entity> <entity key=\"8\"> <name lang=\"ru\">Ростов-на-Дону</name> <name lang=\"en\">Rostov-on-Don</name> <name lang=\"zh\">顿河畔罗斯托夫</name> <name lang=\"es\">Rostov-on-Don</name> </entity> <entity key=\"9\"> <name lang=\"ru\">Самара</name> <name lang=\"en\">Samara</name> <name lang=\"zh\">翅果</name> <name lang=\"es\">Samara</name> </entity> <entity key=\"10\"> <name lang=\"ru\">Волгоград</name> <name lang=\"en\">Volgograd</name> <name lang=\"zh\">伏尔加格勒</name> <name lang=\"es\">Volgogrado</name> </entity> <entity key=\"11\"> <name lang=\"ru\">Калининград</name> <name lang=\"en\">Kaliningrad</name> <name lang=\"zh\">加里宁格勒</name> <name lang=\"es\">Kaliningrad</name> </entity> </mapping> </field> <field bitmask=\"00FF0000000000000000000000000000\" id=\"venue\" type=\"Enumeration\"> <name lang=\"ru\">место встречи</name> <name lang=\"en\">Venue</name> <name lang=\"zh\">场馆</name> <name lang=\"es\">Lugar</name> <mapping> <entity key=\"1\"> <name lang=\"ru\">Стадион Калининград</name> <name lang=\"en\">Kaliningrad Stadium</name> <name lang=\"zh\">加里寧格勒體育場</name> <name lang=\"es\">Estadio de Kaliningrado</name> </entity> <entity key=\"2\"> <name lang=\"ru\">Екатеринбург Арена</name> <name lang=\"en\">Volgograd Arena</name> <name lang=\"zh\">伏爾加格勒體育場</name> <name lang=\"es\">Volgogrado Arena</name> </entity> <entity key=\"3\"> <name lang=\"ru\">Казань Арена</name> <name lang=\"en\">Ekaterinburg Arena</name> <name lang=\"zh\">加里宁格勒体育场</name> <name lang=\"es\">Ekaterimburgo Arena</name> </entity> <entity key=\"2\"> <name lang=\"ru\">Мордовия Арена</name> <name lang=\"en\">Fisht Stadium</name> <name lang=\"zh\">菲什特奧林匹克體育場</name> <name lang=\"es\">Estadio Fisht</name> </entity> <entity key=\"5\"> <name lang=\"ru\">Ростов Арена</name> <name lang=\"en\">Kazan Arena</name> <name lang=\"zh\">喀山體育場</name> <name lang=\"es\">Kazan Arena</name> </entity> <entity key=\"6\"> <name lang=\"ru\">Самара Арена</name> <name lang=\"en\">Nizhny Novgorod Stadium</name> <name lang=\"zh\">下諾夫哥羅德體育場</name> <name lang=\"es\">Estadio de Nizhni Novgorod</name> </entity> <entity key=\"7\"> <name lang=\"ru\">Стадион Калининград</name> <name lang=\"en\">Luzhniki Stadium</name> <name lang=\"zh\">卢日尼基体育场</name> <name lang=\"es\">Estadio Luzhniki</name> </entity> <entity key=\"8\"> <name lang=\"ru\">Стадион Лужники</name> <name lang=\"en\">Samara Arena</name> <name lang=\"zh\">薩馬拉體育場</name> <name lang=\"es\">Samara Arena</name> </entity> <entity key=\"9\"> <name lang=\"ru\">Стадион Нижний Новгород</name> <name lang=\"en\">Rostov Arena</name> <name lang=\"zh\">羅斯托夫體育場</name> <name lang=\"es\">Rostov Arena</name> </entity> <entity key=\"10\"> <name lang=\"ru\">Стадион Спартак</name> <name lang=\"en\">Spartak Stadium</name> <name lang=\"zh\">斯巴達克體育場</name> <name lang=\"es\">Estadio del Spartak</name> </entity> <entity key=\"11\"> <name lang=\"ru\">Стадион Санкт-Петербург</name> <name lang=\"en\">Saint Petersburg Stadium</name> <name lang=\"zh\">十字架體育場</name> <name lang=\"es\">Estadio de San Petersburgo</name> </entity> <entity key=\"12\"> <name lang=\"ru\">Стадион Фишт</name> <name lang=\"en\">Mordovia Arena</name> <name lang=\"zh\">莫爾多維亞體育場</name> <name lang=\"es\">Mordovia Arena</name> </entity> </mapping> </field> <field bitmask=\"0000FFFFFFFF00000000000000000000\" id=\"time\" type=\"BinaryTime\"> <name lang=\"es\">время</name> <name lang=\"en\">Time</name> <name lang=\"zh\">时间</name> <name lang=\"es\">Tiempo</name> </field> <field bitmask=\"000000000000FFFFFF00000000000000\" id=\"countryA\" type=\"IA5String\"> <name lang=\"en\">Team A</name> <name lang=\"zh\">甲队</name> <name lang=\"es\">Equipo A</name> </field> <field bitmask=\"000000000000000000FFFFFF00000000\" id=\"countryB\" type=\"IA5String\"> <name lang=\"en\">Team B</name> <name lang=\"zh\">乙队</name> <name lang=\"es\">Equipo B</name> </field> <field bitmask=\"000000000000000000000000FF000000\" id=\"match\" type=\"Integer\"> <name lang=\"en\">Match</name> <name lang=\"zh\">场次</name> <name lang=\"es\">Evento</name> </field> <field bitmask=\"00000000000000000000000000FF0000\" id=\"category\" type=\"Integer\"> <name lang=\"en\">Cat</name> <name lang=\"zh\">等级</name> <name lang=\"es\">Cat</name> </field> <field bitmask=\"0000000000000000000000000000FFFF\" id=\"number\" type=\"Integer\"> <name lang=\"en\">Number</name> <name lang=\"zh\">票号</name> <name lang=\"es\">Número</name> </field> </fields> </asset>"
    
}
