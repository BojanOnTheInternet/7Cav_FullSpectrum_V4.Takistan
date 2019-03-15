private _state = param [0, "", [""]];

if (_state == "init") then
{
	[] call MAP_InitializeGeneral;
	[] call HUD_Pilot_Initialize;

	player setVariable ["SPM_BranchOfService", "air"];

	[player] call CLIENT_SetInfantryVehiclePermissions;


	switch (roleDescription player) do
	{
		case "Eagle-1 Pilot@EAGLE-1":
		{
			{
				player setVariable [_x, [[TypeFilter_GroundAttackAircraft, [], {}]] + (player getVariable _x)];
			} forEach ["VP_Pilot"];
		};
		case "Eagle-2 Pilot@EAGLE-2":
		{
			{
				player setVariable [_x, [[TypeFilter_GroundAttackAircraft, [], {}]] + (player getVariable _x)];
			} forEach ["VP_Pilot"];
		};
		case "Pilot (Logistics)@TITAN-1":
		{
			{
				player setVariable [_x, [[TypeFilter_TransportFixedWing, [], {}]] + (player getVariable _x)];
			} forEach ["VP_Pilot"];
			{
				player setVariable [_x, [[TypeFilter_LogisticsVehicles, [], {}]] + (player getVariable _x)];
			} forEach ["VP_Driver"];
		};
	};

	{
		player setVariable [_x, [[TypeFilter_BaseServiceVehicles, [], {}]] + (player getVariable _x)];
	} forEach ["VP_Driver"];

};

if (_state == "respawn") then
{
	
};
