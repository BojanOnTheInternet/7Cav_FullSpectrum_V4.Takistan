//Currently Leopard 2

[_this select 0, {

	if (worldName == "Altis") then {
		(_this select 0) setObjectTextureGlobal [0, "Data\TankBodyTexture.paa"];
		(_this select 0) setObjectTextureGlobal [1, "Data\TankTurretTexture.paa"];
		(_this select 0) setObjectTextureGlobal [2, "Data\TankTurretMGTexture.paa"];
	} else {
		(_this select 0) setObjectTextureGlobal [0, "Data\LEO1FRNT.jpg"];
		(_this select 0) setObjectTextureGlobal [1, "Data\LEO2TURRET.jpg"];
		(_this select 0) setObjectTextureGlobal [2, "Data\LEO3RCWS.jpg"];
	}	
}] call JB_fnc_respawnVehicleInitialize;
[_this select 0, 420] call JB_fnc_respawnVehicleWhenKilled;
[_this select 0, 1500, 600] call JB_fnc_respawnVehicleWhenAbandoned;
