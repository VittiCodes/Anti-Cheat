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

addEvent('Vitti:Detect', true)
addEventHandler('Vitti:Detect',getRootElement(), function(player,reason)
    local verify = VerifyAclDetect(player,reason)
    if not verify then
        sendDiscordMessage(Config["Anti-Cheat"]["webhook"],getPlayerName(player),getAccountName(getPlayerAccount(player)),getPlayerSerial(player),reason)
        banPlayer(player,true,false,true,Config["Anti-Cheat"]["name"], "Foi detectado atividades suspeitas",0)
    end
end)


function VerifyAclDetect(player,reason)
    if reason == "Explosion-Hack" then
        for i=1,#Config["Anti-Cheat"]["Explosion"]["explosion-acls-allowed"] do
            if isObjectInACLGroup("user."..getAccountName(getPlayerAccount(player)),aclGetGroup(Config["Anti-Cheat"]["Explosion"]["explosion-acls-allowed"][i])) then
                return true
            end
        end
        return false
    elseif reason == "Speed-Hack" then
        for i=1,#Config["Anti-Cheat"]["Speed"]["speed-acls-allowed"] do
            if isObjectInACLGroup("user."..getAccountName(getPlayerAccount(player)),aclGetGroup(Config["Anti-Cheat"]["Speed"]["speed-acls-allowed"][i])) then
                return true
            end
        end
        return false
    elseif reason == "JetPack-Hack" then
        for i=1,#Config["Anti-Cheat"]["JetPack"]["jetpack-acls-allowed"] do
            if isObjectInACLGroup("user."..getAccountName(getPlayerAccount(player)),aclGetGroup(Config["Anti-Cheat"]["JetPack"]["jetpack-acls-allowed"][i])) then
                return true
            end
        end
        return false
    elseif reason == "Gravity-Hack" then
        for i=1,#Config["Anti-Cheat"]["Gravity"]["gravity-acls-allowed"] do
            if isObjectInACLGroup("user."..getAccountName(getPlayerAccount(player)),aclGetGroup(Config["Anti-Cheat"]["JetPack"]["jetpack-acls-allowed"][i])) then
                return true
            end
        end
        return false
    end
end