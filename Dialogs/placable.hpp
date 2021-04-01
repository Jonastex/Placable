class placable {
	idd = 0104;
	name = "placable";
	author = "John <3";
	onload = "[0] spawn john_fnc_placable;";

	class controlsbackground {
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 010104;
			x = 0.523203 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.099 * safezoneH;
		};
	};

	class controls {
		class RscListbox_1500: RscListbox
		{
			idc = 020104;
			x = 0.34918 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.154688 * safezoneW;
			h = 0.528 * safezoneH;
			onMouseButtonClick = "[1] spawn john_fnc_placable;";
		};
		class RscButton_1600: RscButton
		{
			idc = -1;
			onbuttonclick = "[2] spawn john_fnc_placable;";
			text = "Acheter"; //--- ToDo: Localize;
			x = 0.523203 * safezoneW + safezoneX;
			y = 0.357 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.099 * safezoneH;
		};
		class RscButton_1601: RscButton
		{
			idc = -1;
			onbuttonclick = "[4, 0] spawn john_fnc_placable;";
			text = "Supprimer sur un rayon de 50m autour"; //--- ToDo: Localize;
			x = 0.523203 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.088 * safezoneH;
		};
		class RscButton_1602: RscButton
		{
			idc = -1;
			onbuttonclick = "[4, 1] spawn john_fnc_placable;";
			text = "Supprimer ce que vous visez"; //--- ToDo: Localize;
			x = 0.523203 * safezoneW + safezoneX;
			y = 0.588 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.088 * safezoneH;
		};
	};
};