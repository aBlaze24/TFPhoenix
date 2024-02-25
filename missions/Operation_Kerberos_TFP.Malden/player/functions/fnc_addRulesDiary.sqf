/*
 * Author: Eddy Wallace
 * Assigns the curator to a unit
 *
 * Arguments:
 * 0: player <OBJECT>
 *
 * Return Value:
 * none
 *
 * Example:
 * [player] call dorb_player_fnc_addRulesDiary;
 *
 * Public: Yes
 */
#include "script_component.hpp"
params [["_player", objNull]];

if ((isNull _player)||{!isPlayer _player}) exitWith {};

private _csRulesSubject = "$__rulesPage__$";

private _diarySubject = _player createDiarySubject [_csRulesSubject, localize "STR_DORB_RULES_SUBJECT"];

_player createDiaryRecord [_csRulesSubject, [
    localize "STR_DORB_RULES_P4",
    localize "STR_DORB_RULES_P4_RECORD"
]];

_player createDiaryRecord [_csRulesSubject, [
    localize "STR_DORB_RULES_P3",
    localize "STR_DORB_RULES_P3_RECORD"
]];

_player createDiaryRecord [_csRulesSubject, [
    localize "STR_DORB_RULES_P2",
    localize "STR_DORB_RULES_P2_RECORD"
]];

_player createDiaryRecord [_csRulesSubject, [
    localize "STR_DORB_RULES_P1",
    localize "STR_DORB_RULES_P1_RECORD"
]];
