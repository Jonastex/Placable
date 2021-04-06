// auteur : John <3 Tout droit reserver 
private _choix = param [0];
switch (_choix)
	do {
		case 0 : {
			private _objet = [
				["Barriere", "RoadBarrier_small_F", 10],
				["Cone", "RoadCone_F", 15]
			];

			_list = (findDisplay 0104) displayCtrl 020104;
			{
				_list lbAdd format ["%1", (_x select 0)];
				_list lbSetData [((lbSize _list) - 1), (str [(_x select 1), (_x select 2)])];
				
			} forEach _objet;
		};

		case 1 : {
			private _display = findDisplay 0104;
			private _text = _display displayCtrl 010104;
			private _list = _display displayCtrl 020104;
			_tabl = (lbSelection _list) select 0;
			if (isnil "_tabl") then {_tabl = 0;};
			sleep 0.001;
			_text ctrlSetText format ["Le prix est de %1", ((parseSimpleArray (_list lbData _tabl)) select 1)];
		};

		case 2 : {
			private _list = (findDisplay 0104) displayCtrl 020104;
			_tabl = (lbSelection _list) select 0;
			if (isnil "_tabl") then {_tabl = 0;};
			private _info = parseSimpleArray (_list lbData _tabl);
			private _prix = _info select 1;
			closeDialog 0;
			if (BANK < _prix) exitwith {hint "Vous n' avez pas assez d' argent sur votre commpte en banque";};
			BANK = BANK - _prix;
			_obj = (_info select 0) createVehicle (player modelToWorld [-0.256104,3.00684,0.0693712]);
			_obj setdir (getdir player);
			_obj attachTo [player, [0, 1.5, 1]];
			player addAction ["Placer l' Object", "[3] spawn john_fnc_placable"];
		};

		case 3 : {
			detach ((attachedObjects player) select 0);
			{
				player removeAction _x;
			} forEach (actionIDs player);
		};

		case 4 : {
			_list_obj = ["RoadBarrier_small_F", "RoadCone_F"]; // référencer tout les classname de vos barrière ...
			if ((param [1]) == 0)
				then {
					private _obj = nearestObjects [player, _list_obj, 50]; // modifier le 50 si vous voulez modifier le rayon d' action
					if ((count _obj) == 0) exitwith {hint "Aucun object a proximiter";};
					{
						deleteVehicle _x;
					} forEach _obj;
				}else {
					private _sele = typeof cursorObject;
					if (_sele == "") exitwith {hint "Veuillez viser un object";};
					if ((_list_obj find _sele) == -1) exitwith {hint "Veuillez Viser un object plaçable";};
					deleteVehicle cursorObject;
				};
			closeDialog 0;
		};
	};
