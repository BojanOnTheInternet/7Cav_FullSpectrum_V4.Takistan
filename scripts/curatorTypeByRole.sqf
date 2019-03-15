params ["_roleDescription"];

_roleDescription = toLower _roleDescription;

private _roleMissionControllers =
[
	"mission controller*",
	"cbrn*"
];

if (_roleMissionControllers findIf { [_roleDescription, _x] call JB_fnc_regexMatch } >= 0) exitWith { "MC" };

private _roleMilitaryPolice =
[
	"military police"
];

if (_roleMilitaryPolice findIf { [_roleDescription, _x] call JB_fnc_regexMatch } >= 0) exitWith { "MP" };

private _roleCameraOperators =
[
	"camera operator"
];

if (_roleCameraOperators findIf { [_roleDescription, _x] call JB_fnc_regexMatch } >= 0) exitWith { "CO" };

""