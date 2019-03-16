private _state = param [0, "", [""]];

if (_state == "init") then
{
	[] call MAP_InitializeGeneral;
	[] call HUD_Infantry_Initialize;
	[] call HUD_Repair_Initialize;

	player setVariable ["SPM_BranchOfService", "support"];
	player setVariable ["JBA_LogisticsSpecialist", true, true];

	[player] call CLIENT_SetInfantryVehiclePermissions;
	{
		// Let Apollo drive anything
		player setVariable [_x, [[TypeFilter_All, [], {}]] + (player getVariable _x)];
	} forEach ["VP_Driver", "VP_Pilot"];
};

if (_state == "respawn") then
{

};
