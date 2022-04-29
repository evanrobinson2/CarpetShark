class CfgPatches
{
	class CarpetSharksAdminTools_Core
	{
		author = "CarpetShark";

		url = "https://steamcommunity.com/profiles/76561197998165442/";

		// Minimum compatible version. When the game's version is lower, pop-up warning will appear when launching the game. Note: was disabled on purpose some time late into Arma 2: OA.
		requiredVersion = 1.00;

		// Required addons, used for setting load order.
		// When any of the addons is missing, pop-up warning will appear when launching the game.
		requiredAddons[] = {};

		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {};

		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {};
	};
};

class cfgFunctions {
    class CarpetShark {

    	tag="CarpetShark";
        
        class Functions {
            file = "\x\CarpetShark\addons\functions\Functions";
            class toggleArsenalPlayerMenu {};
        };
    };
};