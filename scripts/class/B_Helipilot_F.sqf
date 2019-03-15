private _state = param [0, "", [""]];

if (_state == "init") then
{

	[] call MAP_InitializeGeneral;
	[] call HUD_Pilot_Initialize;

	player setVariable ["SPM_BranchOfService", "air"];

	[player] call CLIENT_SetInfantryVehiclePermissions;

	switch (roleDescription player) do
	{
		case "Pilot (UH-60M)@BUFFALO-1":
		{
			{
				player setVariable [_x, [[TypeFilter_TransportRotory, [], {}]] + (player getVariable _x)];
			} forEach ["VP_Pilot", "VP_Turret"];
		};
		case "Pilot (UH-60M)@BUFFALO-2":
		{
			{
				player setVariable [_x, [[TypeFilter_TransportRotory, [], {}]] + (player getVariable _x)];
			} forEach ["VP_Pilot", "VP_Turret"];
		};
		case "Pilot (AH-6)@SPARROW-1":
		{
			{
				player setVariable [_x, [[TypeFilter_AttackRotory, [], {}]] + (player getVariable _x)];
			} forEach ["VP_Pilot"];
		};
	};

	{
		player setVariable [_x, [[TypeFilter_BaseServiceVehicles, [], {}]] + (player getVariable _x)];
	} forEach ["VP_Driver"];
};

if (_state == "respawn") then
{

};
