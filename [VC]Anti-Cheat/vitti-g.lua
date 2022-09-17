--[[

    :::     ::: ::::::::::: ::::::::::: ::::::::::: :::::::::::
    :+:     :+:     :+:         :+:         :+:         :+:    
    +:+     +:+     +:+         +:+         +:+         +:+    
    +#+     +:+     +#+         +#+         +#+         +#+    
     +#+   +#+      +#+         +#+         +#+         +#+    
      #+#+#+#       #+#         #+#         #+#         #+#    
        ###     ###########     ###         ###     ###########

        Todos os direitos reservados a Vitti Codes ©
]]--

Config = {
    ["Anti-Cheat"] = {
        ["name"] = "Vitti Anti-Cheat",
        ["webhook"] = "https://discord.com/api/webhooks/1020523430728183909/o2eANea2XxEI-YTngXkTXGX0LRlo0NR-YpWBd4BkYB5PAOTBIsC8TD4S3WTyy8fKB0kz",
    
        ["Explosion"] = {
            ["explosion-ids"] = { -- ID-LIST : https://wiki.multitheftauto.com/wiki/OnClientExplosion
                0,
                1,
                2,
                3,
                8,
                9,
                10,
                11,
                12
            },

            ["explosion-acls-allowed"] = { -- Acls allowed to explode
                "Console",
                "Admin"
            }
        },
        ["Speed"] = {
            ["max-speed"] = 1, -- the maximum speed the player can be on before being banned | 1 - default

            ["speed-acls-allowed"] = {
                "Console",
                "Admin"
            }
        },
        ["JetPack"] = {
            ["jetpack-acls-allowed"] = {
                "Console",
                "Admin"
            }
        },
        ["Gravity"] = {
            ["max-gravity"] = 1, -- the maximum gravity the player can be on before being banned | 0.008 - default

            ["gravity-acls-allowed"] = {
                "Console",
                "Admin"
            }
        }
    }
}