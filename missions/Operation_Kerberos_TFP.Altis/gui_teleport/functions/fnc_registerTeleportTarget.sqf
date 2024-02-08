/*
 *  Author: Dorbedo
 *
 *  Description:
 *      registers a vehicle Teleport Target
 *
 *  Parameter(s):
 *      0 : ARRAY - Position
 *      1 : STRING - Type ("default","Ship","Air")
 *
 *  Returns:
 *      none
 *
 */
//#define DEBUG_MODE_FULL
#include "script_component.hpp"

_this params [["_position",[],[[],{}],[3]],["_targetName","",[""]],["_type","",["",[]]],["_condition",{true},[{}]],["_params",[],[[]]]];

CHECK(_position isEqualTo [])

If (IS_ARRAY(_type)) exitWith {
    {
        [_position,_targetName,_x,_condition,_params] call FUNC(registerTeleportTarget);
    } forEach _type;
};

private _nearCarriers = _position nearObjects ["Land_Carrier_01_base_F",250];
If !(_nearCarriers isEqualTo []) then {
    private _offset = ((getPosASL (_nearCarriers select 0)) select 2) + 23.7;
    _position set[2,_offset];
};

switch (toLower _type) do {
    case "air" : {
        GVAR(air) pushBack [_position,_targetName,_condition,_params];
    };
    case "ship" : {
        GVAR(ship) pushBack [_position,_targetName,_condition,_params];
    };
    case "infanterie" : {
        GVAR(infanterie) pushBack [_position,_targetName,_condition,_params];
    };
    default {
        GVAR(default) pushBack [_position,_targetName,_condition,_params];
    };
};
