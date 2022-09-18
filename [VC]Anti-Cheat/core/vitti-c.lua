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


addEventHandler('onClientPreRender',getRootElement(), function()
    if isPedWearingJetpack(localPlayer) then
        triggerServerEvent('Vitti:Detect',localPlayer,localPlayer,"JetPack-Hack")
    elseif getGameSpeed() > Config["Anti-Cheat"]["Speed"]["max-speed"] then
        triggerServerEvent('Vitti:Detect',localPlayer,localPlayer,"Speed-Hack")
    elseif math.round(getGravity(),4) > Config["Anti-Cheat"]["Gravity"]["gravity"] or math.round(getGravity(),4) < Config["Anti-Cheat"]["Gravity"]["gravity"] then
        triggerServerEvent('Vitti:Detect',localPlayer,localPlayer,"Gravity-Hack")
    end
end)

addEventHandler('onClientExplosion',getRootElement(), function(_,_,_,type)
    if type == 4 or type == 5 or type == 6 or type == 7 then
        return;
    end
    if isElement(source) and getElementType(source) == "player" then
        table.foreach(Config["Anti-Cheat"]["Explosion"]["explosion-ids"], function(index,value)
            if type == value then
                triggerServerEvent('Vitti:Detect',source,source,"Explosion-Hack")
                return;
            end
        end)
    end
end)
