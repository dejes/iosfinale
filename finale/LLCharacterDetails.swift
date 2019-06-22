//
//  LLCharacterDetails.swift
//  finale
//
//  Created by User23 on 2019/6/13.
//  Copyright © 2019 jackliu. All rights reserved.
//

import Foundation

struct RoleDetail:Codable{
    var chibi:URL
    var chibi_small:URL
    var name:String
    var japanese_name:String
    var age:Int
    var birthday:String
    var main_unit:String
    var sub_unit:String
    var height:Int
    var year : String
    var cv:cv
}
struct AqoursRoleDetail:Codable{
    var chibi:URL
    var chibi_small:URL
    var name:String
    var japanese_name:String
    var measurements:String
    var birthday:String
    var main_unit:String
    var sub_unit:String
    var height:Int
    var year : String
    var cv:cv
}
struct cv:Codable {
    var name:String
}
var SaveTracks=[Tracks]()
var gener=["μ's","Aqours"]
var musecharacter = ["Hoshizora Rin","Nishikino Maki","Koizumi Hanayo","Kousaka Honoka","Sonoda Umi","Minami Kotori"," Ayase Eli","Yazawa Nico","Toujou Nozomi"]
var musecharacterapi = ["Hoshizora%20Rin","Nishikino%20Maki","Koizumi%20Hanayo","Kousaka%20Honoka","Sonoda%20Umi","Minami%20Kotori","Ayase%20Eli","Yazawa%20Nico","Toujou%20Nozomi"]
var aqourscharacter=["Kurosawa Ruby","Tsushima Yoshiko","Kunikida Hanamaru","Takami Chika","Sakurauchi Riko","Watanabe You","Ohara Mari","Kurosawa Dia","Matsuura Kanan"]
var aqourscharacterapi=["Kurosawa%20Ruby","Tsushima%20Yoshiko","Kunikida%20Hanamaru","Takami%20Chika","Sakurauchi%20Riko","Watanabe%20You","Ohara%20Mari","Kurosawa%20Dia","Matsuura%20Kanan"]
struct SongResults:Codable{
    var resultCount:Int
    var results:[Songs]
}
struct Songs:Codable {
    var wrapperType:String?
    var artistName:String?
    var collectionName:String?
    var artworkUrl100:URL?
    var releaseDate:String?
    var previewUrl:URL?
    var collectionId:Int?
}
var UnitsArtistID=["411582529","1045917820"]//muse,aqours
struct TrackResults:Codable {
    var resultCount:Int
    var results:[Tracks]
}
struct Tracks:Codable {
    var wrapperType:String?
    var trackName:String?
    var artistName:String?
    var previewUrl:URL?
    var trackId:Int?
    var artworkUrl100:URL?
    var releaseDate:String?
    var currency:String?
    var trackPrice:Int?
    var trackViewUrl:URL?
    var Saveimagename:String?
    static let documentsDirectory=FileManager.default.urls(for: .documentDirectory , in: .userDomainMask).first!
    
    static func saveToFile(track: [Tracks]) {
        let propertyEncoder = PropertyListEncoder()
        if let data = try? propertyEncoder.encode(track) {
            let url = Tracks.documentsDirectory.appendingPathComponent("track").appendingPathExtension("plist")
            try? data.write(to: url)
        }
    }
    static func readLoversFromFile() -> [Tracks]? {
        let propertyDecoder = PropertyListDecoder()
        let url = Tracks.documentsDirectory.appendingPathComponent("track").appendingPathExtension("plist")
        if let data = try? Data(contentsOf: url), let track = try? propertyDecoder.decode([Tracks].self, from: data) {
            return track
        }
        else {
            return nil
        }
    }
  
    ///Users/user18/Library/Developer/CoreSimulator/Devices/AE0DD0E8-166D-431B-AA7C-C3173A97B451/data/Containers/Data/Application/86CDE463-437E-4573-A3EE-5E04E7898C19/Documents/track.plist
}
var ytvid=["Jz6OX8cYUFA","eVwdeIDjXeM"]
var ytmvname=["夏色えがおで1,2,Jump!","HAPPY PARTY TRAIN"]
//https://www.youtube.com/watch?v=Jz6OX8cYUFA natsuiro egao de 1,2,jump
//https://www.youtube.com/watch?v=eVwdeIDjXeM happypartytrain





