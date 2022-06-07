print("Jim-JobGarage v1.1 - Job Garage Script by Jimathy")

--[[	LIST OF POSSIBLE VEHICLE MODIFIERS   ]]--
-- Using these will change how each vehicle spawns
-- This can be used for making sure the vehicles comes out exactly how you want it to

-- rank = { 2, 4 }, -- This specifes which grades can see it, and only these grades
-- grade = 4, -- This specifies the lowest grade and above that can see the vehicle
-- colors = { 136, 137 }, -- This is the colour index id of the vehicle, Primary and Secondary in that order
-- bulletproof = true, -- This determines if the tyres are bullet proof (don't ask me why, I was asked to add this)
-- livery = 1, -- This sets the livery id of the vehicle, (most mod menus would number them or have them in number order) 0 = stock
-- extras = { 1, 5 }, -- This enables the selected extras on the vehicle

-- ANY VEHICLE, BOATS, POLICE CARS, EMS VEHICLES OR EVEN PLANES CAN BE ADDED.

Config = {
	Debug = false,  -- Enable to use debug features
	CarDespawn = false, -- Sends the vehicle to hell
	Locations = {
		[1] = {
			zoneEnable = true,
			job = "sams",
			garage = { 
				spawn = vector4(340.27, -570.65, 28.58, 338.67),  -- Where the car will spawn
				out = vector4(338.59, -586.44, 28.8, 73.16),	-- Where the parking stand is
				list = {
					["emsnspeedo"] = {
						colors = { 111, 111 },
						grade = 0,
						bulletproof = true,
					},
					["emsroamer"] = {
						colors = { 111, 111 },
						grade = 2,
						bulletproof = true,
					},
					["ambulance22"] = {
						colors = { 111, 111 },
						grade = 0,
						bulletproof = true,
						livery = 4,
					},
					["ambulance"] = {
						colors = { 111, 111 },
						grade = 0,
						bulletproof = true,
						livery = 5,
						extras = { 1 },
					},
				},
			},
		},
		[2] = {
			zoneEnable = true,
			job = "police",
			garage = { 
				spawn = vector4(435.41, -975.93, 25.31, 90.86),
				out = vector4(441.39, -974.78, 25.7, 178.49),
				list = {
					["police"] = {
						livery = 5,
						extras = { 1, 2 },
					},
					["fbi"] = {
						rank = { 4 },
					},
				},
			},
		},
	},
}
