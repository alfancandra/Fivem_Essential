--[[

	Holograms / Floating text Script by Meh
	
	Just put in the coordinates you get when standing on the ground, it's above the ground then
	By default, you only see the hologram when you are within 10m of it, to change that, edit the 10.0 infront of the "then"
	The Default holograms are at the Observatory.
	
	If you want to add a line to the hologram, just make a new Draw3DText line with the same coordinates, and edit the vertical offset.
	
	Formatting:
			Draw3DText( x, y, z  vertical offset, "text", font, text size, text size)
			
			
	To add a new hologram, copy paste this example under the existing ones, and put coordinates and text into it.
	
		if GetDistanceBetweenCoords( X, Y, Z, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( X, Y, Z,  -1.400, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.600, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.800, "TEXT", 4, 0.1, 0.1)		
		end


]]--

Citizen.CreateThread(function()
    Holograms()
end)

-- Citizen.CreateThread(function()
--     while true do
-- 		Wait(1)
-- 		if GetFollowPedCamViewMode() == 1 then
-- 			SetFollowPedCamViewMode(4)
-- 		elseif GetFollowPedCamViewMode() == 4 then
-- 			SetFollowPedCamViewMode(4)
-- 		elseif GetFollowPedCamViewMode() == 0 then
-- 			SetFollowPedCamViewMode(0)
-- 		elseif GetFollowPedCamViewMode() == 2 then
-- 			SetFollowPedCamViewMode(0)
-- 		end
-- 	end
-- end)

Citizen.CreateThread(function()
	UFO = exports['bob74_ipl']:GetUFOObject()
	while true do
		Citizen.Wait(1)
	local waktu = GetClockHours()
	if waktu>=22 or waktu<=3 then
		UFO.Chiliad.Enable(true)
		UFO.Hippie.Enable(true)
		UFO.Zancudo.Enable(true)
	else
		UFO.Chiliad.Enable(false)
		UFO.Hippie.Enable(false)
		UFO.Zancudo.Enable(false)
	end
	end
end)

function Holograms()
		while true do
			Citizen.Wait(0)			
				-- Hologram No. 1
		if GetDistanceBetweenCoords( -1039.8, -2741.1, 20.1, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -1039.8, -2741.1, 19.95941, "Selamat Datang di DaRoleplay", 4, 0.1, 0.1)
			Draw3DText( -1039.8, -2741.1, 19.75941, "Silahkan Ke Stasiun Kereta Bawah", 4, 0.1, 0.1)
			Draw3DText( -1039.8, -2741.1, 19.55941, "Untuk Menaiki Kereta Ke KOTA", 4, 0.1, 0.1)
			Draw3DText( -1039.8, -2741.1, 19.36927, "discord.gg/4nVsRs9", 4, 0.1, 0.1)	
		end

		if GetDistanceBetweenCoords( -1036.308, -2734.415, 20.16927, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -1036.308, -2734.415, 19.16927, "Silahkan ke Arah Kiri Turun menggunakan Tangga", 4, 0.1, 0.1)	
		end	

		if GetDistanceBetweenCoords( -1063.215, -2719.7, 13.56927, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -1063.215, -2719.7, 12.56927, "Silahkan ke Arah Kanan Lalu Masuk kedalam Stasiun", 4, 0.1, 0.1)	
		end

		if GetDistanceBetweenCoords( -1050.933, -2720.77, 13.56927, GetEntityCoords(GetPlayerPed(-1))) < 15.0 then
			Draw3DText( -1050.933, -2720.77, 12.56927, "Silahkan Menuju LSIA Station", 4, 0.1, 0.1)	
		end

		if GetDistanceBetweenCoords( -1040.559, -2742.285, 13.56927, GetEntityCoords(GetPlayerPed(-1))) < 30.0 then
			Draw3DText( -1040.559, -2742.285, 12.56927, "Silahkan Turun Menuju Stasiun", 4, 0.1, 0.1)	
		end

		if GetDistanceBetweenCoords( -1083.157, -2721.128, -1.8148929, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -1083.157, -2721.128, -1.2148929, "Silahkan Ke sebelah kiri untuk Turun Menuruni Tangga Stasiun", 4, 0.1, 0.1)	
		end

		if GetDistanceBetweenCoords( -1103.292, -2731.5, -8.148929, GetEntityCoords(GetPlayerPed(-1))) < 60.0 then
			Draw3DText( -1103.292, -2731.5, -8.148929, "Silahkan Berdiri Disini", 4, 0.1, 0.1)
			Draw3DText( -1103.292, -2731.5, -8.348929, "Ketik /train Untuk mendapatkan Kereta", 4, 0.1, 0.1)
			Draw3DText( -1103.292, -2731.5, -8.548929, "Tunggu Kereta Datang", 4, 0.1, 0.1)
			Draw3DText( -1103.292, -2731.5, -8.848929, "Tekan E untuk Menaiki atau menuruni Kereta", 4, 0.1, 0.1)	
		end	

		if GetDistanceBetweenCoords( -269.3, -954.8, 31.2, GetEntityCoords(GetPlayerPed(-1))) < 15.0 then
			Draw3DText( -269.5, -954.8, 30.5, "Pembuatan SIM", 4, 0.1, 0.1)	
		end	
		
	end
end

-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(250, 250, 250, 255)		-- You can change the text color here
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end
