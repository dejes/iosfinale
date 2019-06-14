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
var gener=["μ's","Aqours"]
var musecharacter = ["Hoshizora Rin","Nishikino Maki","Koizumi Hanayo","Kousaka Honoka","Sonoda Umi","Minami Kotori"," Ayase Eli","Yazawa Nico","Toujou Nozomi"]
var musecharacterapi = ["Hoshizora%20Rin","Nishikino%20Maki","Koizumi%20Hanayo","Kousaka%20Honoka","Sonoda%20Umi","Minami%20Kotori","Ayase%20Eli","Yazawa%20Nico","Toujou%20Nozomi"]
var aqourscharacter=["Kurosawa Ruby","Tsushima Yoshiko","Kunikida Hanamaru","Takami Chika","Sakurauchi Riko","Watanabe You","Ohara Mari","Kurosawa Dia","Matsuura Kanan"]
var aqourscharacterapi=["Kurosawa%20Ruby","Tsushima%20Yoshiko","Kunikida%20Hanamaru","Takami%20Chika","Sakurauchi%20Riko","Watanabe%20You","Ohara%20Mari","Kurosawa%20Dia","Matsuura%20Kanan"]
