/**
 * Author: Dorbedo
 * returns the size of a container
 *
 * Arguments:
 * 0: <STRING/OBJECT> container/the type
 *
 * Return Value:
 * <TYPENAME> return name
 *
 */
//#define DEBUG_MODE_FULL
#include "script_component.hpp"

params ["_config"];

if (IS_OBJECT(_config)) then {
    _config = typeOf _config;
};
private _boxes = DEFAULT_BOXES;
TRACEV_3(_config in _boxes,_config,_boxes);
If ((toLower _config) in DEFAULT_BOXES) exitWith {
    TRACEV_1(_boxes find _config);
    private _defaultBoxMass = (DEFAULT_BOXES_MASS select (DEFAULT_BOXES find (toLower _config)));

    if (_defaultBoxMass == -1) then {
        If (([_config,"ace_cargo_hasCargo",0] call EFUNC(common,getCfgVehicles)) > 0) exitWith {
            _defaultBoxMass = ([_config,"ace_cargo_space",2] call EFUNC(common,getCfgVehicles)) * DEFAULT_MASS;
        };

        If (([_config,"ace_cargo_canLoad",0] call EFUNC(common,getCfgVehicles)) > 0) exitWith {
            _defaultBoxMass = ([typeOf _target,"ace_cargo_size",2] call EFUNC(common,getCfgVehicles)) * DEFAULT_MASS;
        };
    };

    _defaultBoxMass;
};

If (([_config,"ace_cargo_hasCargo",0] call EFUNC(common,getCfgVehicles)) > 0) exitWith {
    ([_config,"ace_cargo_space",2] call EFUNC(common,getCfgVehicles)) * DEFAULT_MASS;
};

If (([_config,"ace_cargo_canLoad",0] call EFUNC(common,getCfgVehicles)) > 0) exitWith {
    ([typeOf _target,"ace_cargo_size",2] call EFUNC(common,getCfgVehicles)) * DEFAULT_MASS;
};

2 * DEFAULT_MASS
