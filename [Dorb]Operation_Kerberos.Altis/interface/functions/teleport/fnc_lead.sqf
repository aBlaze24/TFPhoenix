/*
    Author: Dorbedo

    Description:
        Teleports Caller to his Squadleader

*/
#include "script_component.hpp"
SCRIPT(lead);
PARAMS_2(_host,_caller);
private["_position","_platzanzahl","_nearestEnemy","_time"];
_position = [];

if (leader _caller == _caller) exitWith {[LSTRING(TELEPORT),[LSTRING(TELEPORT_LEAD_FAIL),LSTRING(TELEPORT_LEAD_ISLEADER)]] call FUNC(disp_info);};

_time = missionNamespace getVariable [format["dorb_interface_respawn_%1",getPlayerUID player],0];

if ((_time > 0) && {(_time + 300) > serverTime}) exitWith {[LSTRING(TELEPORT),[format [localize LSTRING(TELEPORT_LEAD_WAIT),_time + 300 - serverTime]]] call FUNC(disp_info);};

if ((vehicle _caller) == _caller) then {
    _nearestEnemy = _caller findNearestEnemy (leader _caller);
    if (((leader _caller) distance _nearestEnemy)<350) then {
        [LSTRING(TELEPORT),[LSTRING(TELEPORT_LEAD_FAIL),LSTRING(TELEPORT_LEAD_NEARENEMY)]] call FUNC(disp_info);
    }else{
        /// in vehicle
        If ((vehicle (leader _caller)) != (leader _caller)) then {
            _platzanzahl = (vehicle (leader _caller)) emptyPositions "cargo";
            If (_platzanzahl<1) then {
                [LSTRING(TELEPORT),[LSTRING(TELEPORT_LEAD_FAIL),LSTRING(TELEPORT_LEAD_NOPLACE)]] call FUNC(disp_info);
            }else{
                _caller moveInCargo (vehicle (leader _caller));
            };
        }else{
            If (isTouchingGround (leader _caller)) then {
                _position = (getPos (leader _caller)) findEmptyPosition [1,15,"B_crew_F"];
                if (!(_position isEqualTo [])) then {
                    private "_stance";
                    _stance = stance (leader _caller);
                    If (_stance in ["STAND","CROUCH","PRONE"]) then {
                        _caller playActionNow _stance;
                    };
                    _caller setPos _position;
                };
            }else{
                [LSTRING(TELEPORT),[LSTRING(TELEPORT_LEAD_FAIL),LSTRING(TELEPORT_LEAD_INAIR)]] call FUNC(disp_info);
            };
        };
    };
};
false