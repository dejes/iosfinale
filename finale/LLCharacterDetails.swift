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
struct cv:Codable {
    var name:String
}
  var musecharacter = ["Hoshizora Rin","Nishikino Maki","Koizumi Hanayo","Kousaka Honoka","Sonoda Umi","Minami Kotori"," Ayase Eli","Yazawa Nico","Toujou Nozomi"]
var musecharacterapi = ["Hoshizora%20Rin","Nishikino%20Maki","Koizumi%20Hanayo","Kousaka%20Honoka","Sonoda%20Umi","Minami%20Kotori","Ayase%20Eli","Yazawa%20Nico","Toujou%20Nozomi"]
