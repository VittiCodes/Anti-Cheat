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



function sendDiscordMessage (urlWebhook, nick,conta,serial,motivo)
    local discordData = {
        content = "";
        username = "Vitti Anti-Cheat";
        avatar_url = "https://cdn.discordapp.com/attachments/797566430345953300/1018991264269607014/vitti_logov2.png";
        embeds = {
            {
                title = "New Detection Vitti-Codes";
                color = 10181046;
                footer = {
                    text = "Vitti Codes | Anti-Cheat";
                    icon_url = "https://cdn.discordapp.com/attachments/797566430345953300/1018991264269607014/vitti_logov2.png";
                };
                fields = {
                    {
                        name= "Name:",
                        value= nick,
                        inline=false,
                    },
                    {
                        name= "Account Name:",
                        value= conta,
                        inline=false,
                    },
                    {
                        name= "Serial:",
                        value= serial,
                        inline=false,
                    },
                    {
                        name= "Reason:",
                        value= motivo,
                        inline=false,
                    },
                    {
                        name= "Banishment:",
                        value= "Permanent",
                        inline=false,
                    },
                },
                thumbnail = {
                    url = "https://cdn.discordapp.com/attachments/797566430345953300/1018991264269607014/vitti_logov2.png";
                };
            };
        };
    }
    local jsonData = toJSON (discordData)
    jsonData = string.sub (jsonData, 3, #jsonData - 2)
    
    local sendOptions = {
        headers = {
            ["Content-Type"] = "application/json";
        };
        postData = jsonData;
    };
    fetchRemote (urlWebhook, sendOptions, function ()
    
    end)
end
