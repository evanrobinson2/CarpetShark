params["_index", "_toggleOn"];

// systemChat ("_index = " + str _index );
// systemChat ("_toggleOn = " + str _toggleOn);

if ( _index >= 0 && _toggleOn ) then
{
	_nameString = lbText [1500, _index];
	_playerObject = allPlayers select ( allPlayers findIf {(name _x) isEqualTo _nameString;} );	
	systemChat  ("Enabling Arsenal for: " + (str name _playerObject));
	_playerObject addAction ["Arsenal", {["Open", true] spawn BIS_fnc_arsenal}];
};

if ( ! _toggleOn && _index >= 0 ) then
{
	_nameString = lbText [1500, _index]; // get the player's name
	_playerObject = allPlayers select ( allPlayers findIf {(name _x) isEqualTo _nameString;} );	 // get the player
	_actionIDs = actionIDs _playerObject; // get all the actions that this player can currently perform

	// TODO: Loop through actionIds and find the appropriate action param 0 = "Arsenal"
	_actionParams = _playerObject actionParams (_actionIDs select 0); // Problem here is that you can't assume the arsenal is the first action on the list

	if ( _actionParams select 0 == "Arsenal") then
	{
		systemChat  ("Removing Arsenal for " + str name _playerObject);
		_playerObject removeAction (_actionIDs select 0);
	};
};