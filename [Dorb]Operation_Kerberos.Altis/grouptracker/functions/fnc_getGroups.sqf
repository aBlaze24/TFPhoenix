/*
 *  Author: Dorbedo
 *
 *  Description:
 *      returns the groups for the grouptracker
 *
 *  Parameter(s):
 *      none
 *
 *  Returns:
 *      ARRAY - array with all visible groups
 *
 */
#include "script_component.hpp"

private _groups = [];

If !(isNull (getAssignedCuratorLogic player)) then {
    _groups = allGroups;
}else{
    If (GVAR(AiIsVisible)) then {
        {
            If ((side(leader _x ) == playerSide) and ((count (units _x)) >0)) then {
                _groups pushBack _x;
            };
        } forEach allGroups;
    }else{
        {
            If ((isPlayer (leader _x)) and (side(leader _x) == playerSide)and((count (units _x)) >0)) then {
                _groups pushBack _x;
            };
        } forEach allGroups;
    };
};
_groups;