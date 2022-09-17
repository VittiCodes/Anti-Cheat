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
    elseif math.round(getGravity(),4) > Config["Anti-Cheat"]["Gravity"]["max-gravity"] then
        triggerServerEvent('Vitti:Detect',localPlayer,localPlayer,"Gravity-Hack")
    end
end)

addEventHandler('onClientExplosion',getRootElement(), function(_,_,_,type)
    table.foreach(Config["Anti-Cheat"]["Explosion"]["explosion-ids"], function(index,value)
        if type == value then
            triggerServerEvent('Vitti:Detect',localPlayer,localPlayer,"Explosion-Hack")
            return;
        end 
    end)   
end)