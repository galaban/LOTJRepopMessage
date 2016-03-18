
--LotJMSDPPlanet.lua

--[[
This file is used to determine the planet using MSDP.

To use this plugin enter this into the top of your plugin's code:
  dofile(GetPluginInfo(GetPluginID(), 20) .. "LotJMSDPArea.lua")
	
Then whenever you want to set a variable, use this syntax:
  current_planet = getmsdparea()

Note that ships and such always return "Unknown"

--]]


---- This requires the MSDP handler plugin
require "checkplugin"
do_plugin_check_now("b3aae34498d5bf19b5b2e2af", "LotJMSDPHandler")

--==============================================================================
-- function used to retrieve information from LotJMSDPHandler
-- This is a safe function, it will never return a nil value.
--==============================================================================

function getmsdpplanet()
    if not IsConnected() then
        return "Unknown"
    end
    
    rc, result = CallPlugin("b3aae34498d5bf19b5b2e2af","msdpval","ROOMVNUM")
    
    if (result ~= nil) then
        local vnum = tonumber(result)
        if (vnum ~= nil) then
            if (vnum >= 29000 and vnum < 30000) then
                return "Alderaan"

            elseif ((vnum >= 6000 and vnum < 7000) or
                    (vnum >= 428400 and vnum < 428500)) then    --Seertech hideout
                return "Corellia"

            elseif ((vnum >= 2400 and vnum < 4000) or
                    (vnum >= 5300 and vnum < 5400) or   -- skyway
                    (vnum >= 7300 and vnum < 7500) or   -- Senate
                    (vnum >= 31800 and vnum < 31900) or   -- Republic complex
                    (vnum >= 20200 and vnum < 20300)) then   -- outlander club
                -- This seems to be very broken up...
                return "Coruscant"

            elseif (vnum >= 1500 and vnum < 2400) then
                return "Lorrd"

            elseif ((vnum >= 37000 and vnum < 38000) or 
                    (vnum >= 14000 and vnum < 15000)) then
                return "Dac"

            elseif (vnum >= 16000 and vnum < 17000) then
                return "Kashyyyk"

            elseif ((vnum >= 7400 and vnum < 8000) or 
                    (vnum >= 12000 and vnum < 13500)) then
                return "Tatooine"

            elseif (vnum >= 13500 and vnum < 14000) then
                return "Nal Hutta"

            elseif ((vnum >= 7000 and vnum < 7300) or
                    (vnum >= 9900 and vnum < 10000)) then    -- SFS hideout
                return "Bespin"

            elseif (vnum >= 52000 and vnum < 52500) then
                return "Ryloth"

            elseif (vnum >= 35000 and vnum < 36000) then
                return "Korriban"

            elseif (vnum >= 9500 and vnum < 9700) then
                return "Idux"

            elseif (vnum >= 400 and vnum < 500) then
                return "Academy"
            elseif (vnum >= 500 and vnum < 600) then
                return "Banvhar"
            end


        -- 36500-ish range is 3S

        -- =- ships -=--
        --71k
        --74k
        --75k
        --79k
        --85k 
        --87k 

        end
    end

    -- Made it all the way here?  Something must have gone wrong. (No MSDP plugin? No room vnum? out in space?)
    return "Unknown"
end
