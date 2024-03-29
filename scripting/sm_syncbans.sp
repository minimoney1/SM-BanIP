#include <sourcemod>
#undef REQUIRE_PLUGIN
#include <updater>
#define REQUIRE_PLUGIN

#define PLUGIN_VERSION "1.0.0"

#define UPDATER_URL "https://raw.github.com/minimoney1/SM-BanIP/master/"

public Plugin:myinfo = 
{
	name = "SM SyncPlayerBans",
	author = "Mini",
	description = "Synchronizes SteamID bans with IP",
	version = PLUGIN_VERSION,
	url = "http://forums.alliedmods.net/"
}

public OnPluginStart()
{
	CreateConVar("sm_spb_version", PLUGIN_VERSION, "The version of this plugin." FCVAR_DONTRECORD);
}

public OnBanClient(client,
					time,
					flags,
					const String:reason[],
					const String:kick_message[],
					const String:command[],
					any:source)
{
	if ((flags & BANFLAG_IP|BANFLAG_AUTHID) == BANFLAGIP|BANFLAG_AUTHID)
		return Plugin_Continue;
	if (flags & BANFLAG_IP)
	{
		
	}
	if (flags & BANFLAG_AUTHID)
	{
		
	}
	return Plugin_Continue;
}

