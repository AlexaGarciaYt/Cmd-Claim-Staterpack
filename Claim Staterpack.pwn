//pasang di enum pInfo
pStaterpack, //komanya jangan ketinggalan

//pasang di cmd
CMD:claim(playerid, params[])
{
	if(PlayerInfo[playerid][pStaterpack] == 1) return SendClientMessage(playerid, COLOR_RED, "Anda Sudah Mengambil Staterpack!");
	{
	PlayerInfo[playerid][pCash] += 50000;
	GivePlayerMoney(playerid, 50000);
	OnPlayerUpdateAccountsPer(playerid, "pCash", PlayerInfo[playerid][pCash]);
	PlayerInfo[playerid][pLevel] += 1;
	OnPlayerUpdateAccountsPer(playerid, "pLevel", PlayerInfo[playerid][pLevel]);
	PlayerInfo[playerid][pStaterpack] = 1;
	OnPlayerUpdateAccountsPer(playerid, "pStaterpack", PlayerInfo[playerid][pStaterpack]);
	SendClientMessage(playerid, COLOR_YELLOW, "You are successful get a starterpack");
	SendClientMessage(playerid, COLOR_WHITE, "{3BBD44}Level: {FFFFFF}+1");
	SendClientMessage(playerid, COLOR_WHITE, "{3BBD44}Money: {FFFFFF}+Rp50,000");
	}
    return 1;
}

//pasang di publics: OnPlayerLoadAccounts
cache_get_value_int(0, "pStaterpack", PlayerInfo[playerid][pStaterpack]);

//pasang di mysql phpAdmin
pStaterpack //tutornya ada divideo, tonton sampe habis
