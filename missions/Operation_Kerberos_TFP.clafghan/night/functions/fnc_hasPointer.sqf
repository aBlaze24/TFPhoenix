
/**
 * Author: Dorbedo
 * returns if the unit has a laser attached
 *
 * Arguments:
 * 0: <OBJECT> the unit
 *
 * Return Value:
 * <BOOL> the unit has a laser
 *
 */
//#define DEBUG_MODE_FULL
#include "script_component.hpp"

params [["_unit", objNull, [objNull]]];

if (isNull _unit) exitWith {false};

(
    {
        [_x] call FUNC(isPointer)
    } count (primaryWeaponItems _unit)
)>0
