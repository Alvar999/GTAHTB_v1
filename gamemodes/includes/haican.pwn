#include <a_samp>
#include <ysi\y_hooks>

#define DIALOG_BANCANSA 2602

#define MARIJUANA 18 // So luong Spawn
#define INVALID_FLOAT -1

#define THUHOACH_TIME 15 // 2s = 1 Can sa
#define TIME_RESPAWN_CANSA 60 // 15s se respawn lai can sa
#define TIME_CHEBIEN_CANSA 25 // 5s = 1 tui'

#define GIATUICANSA 6500 // 4k 1 tui

enum marijuana_enum {
	marijuana_id,
	Text3D:marijuana_label,
	bool:marijuana_status,
	Float:marijuana_X,
	Float:marijuana_Y,
	Float:marijuana_Z,
}

new DynamicCP_Harvest[3]; // 0 = Che bien // 1 = Ban

new TimeHarvest[MAX_PLAYERS];
new bool:HarvestCan[MAX_PLAYERS] = false;
new Marijuana[MARIJUANA][marijuana_enum];
new Float:marijuna_pos[MARIJUANA][] = {
	{-1726.3033,-1329.4797,60.0135,159.8506},
	{-1733.8046,-1333.9086,61.4622,115.9602},
	{-1749.9569,-1341.2373,63.1806,111.5735},
	{-1752.0513,-1349.6169,66.1327,174.5541},
	{-1742.5133,-1352.5204,67.4574,272.0017},
	{-1731.8927,-1352.5385,68.4712,269.1817},
	{-1724.0356,-1358.9595,68.8529,235.3414},
	{-1730.3900,-1368.6715,70.4179,140.0871},
	{-1741.0962,-1378.8340,71.6879,129.4337},
	{-1739.0355,-1391.8363,70.4504,198.0544},
	{-1727.0134,-1395.0056,69.7776,257.2750},
	{-1715.0070,-1395.6321,69.0570,267.6151},
	{-1708.6743,-1403.0463,67.4647,205.8877},
	{-1709.9296,-1417.3309,65.1431,167.6607},
	{-1698.4612,-1424.6841,63.4049,239.1014},
	{-1685.2653,-1425.4663,63.8904,265.1083},
	{-1669.4965,-1423.0758,62.1006,277.6417},
	{-1661.8887,-1401.4041,59.3378,318.2256}
};

stock IsPlayerNearMarijuana(playerid, Float:range) {
	for(new i = 0 ; i < MARIJUANA; i ++) {
		if(Marijuana[i][marijuana_X] != INVALID_FLOAT && IsPlayerInRangeOfPoint(playerid, range, Marijuana[i][marijuana_X],Marijuana[i][marijuana_Y],Marijuana[i][marijuana_Z]+0.5)) {
			return i;
		}
	}
	return INVALID_FLOAT;
}

forward MarijuanaCreate(iMar);
public MarijuanaCreate(iMar) {
	Marijuana[iMar][marijuana_label] = CreateDynamic3DTextLabel("{cafb12}Cay Can Sa", -1, marijuna_pos[iMar][0],marijuna_pos[iMar][1],marijuna_pos[iMar][2]-0.2, 5);
	Marijuana[iMar][marijuana_id] = CreateDynamicObject(19473, marijuna_pos[iMar][0],marijuna_pos[iMar][1],marijuna_pos[iMar][2]-1.2, 0,0,0);

	Marijuana[iMar][marijuana_X] = marijuna_pos[iMar][0],
	Marijuana[iMar][marijuana_Y] = marijuna_pos[iMar][1],
	Marijuana[iMar][marijuana_Z] = marijuna_pos[iMar][2];

	Marijuana[iMar][marijuana_status] = false;
	printf("[MARIJUANA] Marijuana %d | X%f | Y%f | Z%f", iMar, Marijuana[iMar][marijuana_X],Marijuana[iMar][marijuana_Y],Marijuana[iMar][marijuana_Z]);
	return 1;
}

forward OnPlayerHarvestMarijuana(playerid, iMar);
public OnPlayerHarvestMarijuana(playerid, iMar) {

	// Player
	ClearAnimations(playerid);
	HarvestCan[playerid] = false;
	PlayerInfo[playerid][pCansa] ++; // Can sa + 1
	TogglePlayerControllable(playerid, true);
	SendClientMessage(playerid, -1, "{cafb12}Hai Can: Ban da nhan duoc 1 can sa !");
	// Marijuana Var
	Marijuana[iMar][marijuana_X] = INVALID_FLOAT; //
	DestroyDynamicObject(Marijuana[iMar][marijuana_id]);
	DestroyDynamic3DTextLabel(Marijuana[iMar][marijuana_label]);
	SetTimerEx("MarijuanaCreate", TIME_RESPAWN_CANSA*1000, 0, "d", iMar);
	// Debug
	printf("Destroy Marijuana %d", iMar);
	return 1;
}

forward OnPlayerCBCannabis(playerid);
public OnPlayerCBCannabis(playerid) {
	if(PlayerInfo[playerid][pCansa] >= 2) {
		PlayerInfo[playerid][pCansa] -= 2;
		PlayerInfo[playerid][pTuicansa] ++;
		SendClientMessage(playerid, -1, "{cafb12}Hai Can: Ban da nhan 1 tui can sa!");
	}
	else {
		SetPVarInt(playerid, "DangCheBien", 0);
		TogglePlayerControllable(playerid, true); // Freeze player
		SendClientMessage(playerid, -1, "{cafb12}Hai Can: Ban da che bien thanh cong!");
		KillTimer(PlayerInfo[playerid][pChebienTime]);
	}
	return 1;
}

hook OnGameModeInit() {
	new i = 0;
	while(i < MARIJUANA) {
		MarijuanaCreate(i);
		i ++;
	}
	
	DynamicCP_Harvest[0] = CreateDynamicCP(-2187.4648,613.1151,35.1641, 1, .streamdistance = 2); // Che bien
	DynamicCP_Harvest[1] = CreateDynamicCP(-1997.1875,1223.6803,31.7193, 1, .streamdistance = 2); // Ban
	return 1;
}

hook OnPlayerDisconnect(playerid, reason) {
	if(HarvestCan[playerid] == true) { // Kiem tra neu nguoi choi dang thu hoach
		KillTimer(TimeHarvest[playerid]); // Dung timer.
		Marijuana[GetPVarInt(playerid, "_iMarijuana")][marijuana_status] = false; // Cay co the thu hoach
	}
	if(GetPVarInt(playerid, "DangCheBien") == 1) {
		KillTimer(PlayerInfo[playerid][pChebienTime]);
	}
	return 1;
}

public OnPlayerEnterDynamicCP(playerid, checkpointid) {
	if(checkpointid == DynamicCP_Harvest[0]) {// Che bien
		if(PlayerInfo[playerid][pCansa] >= 2) { // 2 can sa = 1 tui can sa
			if(GetPVarInt(playerid, "DangCheBien") == 0)
			{
			TogglePlayerControllable(playerid, false); // Freeze player
			SetPVarInt(playerid, "DangCheBien", 1);
			SendClientMessage(playerid, -1,"{cafb12}Hai Can: Dang che bien!!!!");
			ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0, 1);
			PlayerInfo[playerid][pChebienTime] = SetTimerEx("OnPlayerCBCannabis", TIME_CHEBIEN_CANSA*1000, 1, "i", playerid);
			}
		}
		else
			SendClientMessage(playerid, -1,"{cafb12}Hai Can: Ban can phai co 2 can sa de co the che bien!");
	}
	if(checkpointid == DynamicCP_Harvest[1]) { // Ban can sa
		if(PlayerInfo[playerid][pTuicansa] > 0) {
			new string[128];
			format(string, 128, "\nTui can sa cua ban: %d\nGia tien $%d/tui\nNhap so luong ban muon ban:", PlayerInfo[playerid][pTuicansa], GIATUICANSA);
			ShowPlayerDialog(playerid, DIALOG_BANCANSA, DIALOG_STYLE_INPUT, "Ban can sa", string,"Ban","Huy");
		}
		else
			SendClientMessage(playerid, -1,"{cafb12}Hai Can: Ban can phai co tui can sa de buoc vao day!");
	}
	if(checkpointid == DynamicCP_Harvest[2]) {
		if(PlayerInfo[playerid][pGoiPot] >= 20) {
			if(GetPVarInt(playerid, "DangCheBien") == 0)
			{
			TogglePlayerControllable(playerid, false);
			SetPVarInt(playerid, "DangCheBien", 1);
			SendClientMessage(playerid, -1,"Dang doi pot xin vui long doi.........");
			PlayerInfo[playerid][pChebienTime] = SetTimerEx("OnPlayerCBCannabisss", TIME_CHEBIEN_CANSA*1000, 1, "i", playerid);
			}
		}
		else
			SendClientMessage(playerid, -1,"{cafb12}Hai Can: Ban can phai co 20 Goi pot");
	}
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == DIALOG_BANCANSA) {
		if(response) {
			if(strval(inputtext) > 0) {
				if(PlayerInfo[playerid][pTuicansa] >= strval(inputtext)) {
					new string[128];
					PlayerInfo[playerid][pTuicansa] -= strval(inputtext);
					GivePlayerCash(playerid, strval(inputtext)*GIATUICANSA);
					format(string, 128, "{cafb12}Hai Can: Ban da ban %d tui can va nhan duoc $%d", strval(inputtext), strval(inputtext)*GIATUICANSA);
					SendClientMessage(playerid, -1, string);
				}
				else
					SendClientMessage(playerid, -1,"{cafb12}Hai Can: So luong khong hop le! hay kiem tra lai so luong cua ban");
			}
			else
				SendClientMessage(playerid, -1,"{cafb12}Hai Can: So luong can ban phai lon hon 0!");
		}
	}
	return 1;
}
CMD:lockcansa(playerid) {
	if(PlayerInfo[playerid][pAdmin] >= 7) {
	    CopOnline = (CopOnline == 1 ? (CopOnline = 0) : (CopOnline = 1));
	    SendClientMessage(playerid, -1, CopOnline == 1 ? ("Ban da unlock") : ("Ban da lock"));
	}
	return 1;
}

CMD:haican(playerid) {
	new iMarijuana = IsPlayerNearMarijuana(playerid, 1);
    if(IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, -1, "{cafb12}Hai Can: Vui long xuong xe");
	if(CopOnline <= 0) return  SendClientMessage(playerid, -1, "{cafb12}Hai Can: Server can co cops moi co the lam viec nay!");
	if(PlayerCuffed[playerid] >= 1 || PlayerInfo[playerid][pJailTime] > 0 || GetPVarInt(playerid, "Injured")) return SendClientMessageEx( playerid, COLOR_WHITE, "Ban khong the lam dieu do vao luc nay" );
	if(iMarijuana == INVALID_FLOAT) SendClientMessage(playerid, -1, "{cafb12}Hai Can: Ban khong dung gan cay nao de thu hoach ca!");
	else {
		if(Marijuana[iMarijuana][marijuana_status] == false) {
			if(HarvestCan[playerid] == false) {
				if(PlayerInfo[playerid][pCansa] < 50) {
					HarvestCan[playerid] = true; // Bat dau hai
					Marijuana[iMarijuana][marijuana_status] = true; // Chuyen trang thai tu chua bi hai thanh bi hai cua can sa
					TogglePlayerControllable(playerid, false); // Freeze nguoi choi lai.
					SetPVarInt(playerid, "_iMarijuana", iMarijuana);
					ApplyAnimation(playerid, "BOMBER", "BOM_Plant_Loop", 4.1, 1, 0, 0, 1, 0); // Thuc hien thanh dong (RP)
					SendClientMessage(playerid, -1, "{cafb12}Hai Can: Ban dang hai can sa ...");
					TimeHarvest[playerid] = SetTimerEx("OnPlayerHarvestMarijuana", THUHOACH_TIME*1000, 0, "ii", playerid, iMarijuana); // Timer thu hoach
				}
				else
					SendClientMessage(playerid, -1, "{cafb12}Hai Can: Can sa da day` ! Ban can di che bien");
			}
			else
				SendClientMessage(playerid, -1, "{cafb12}Hai Can: Ban khong the thuc hien vao luc nay!");
		}
		else
			SendClientMessage(playerid, -1, "{cafb12}Hai Can: Cay nay dang co nguoi thu hoach");
	}
	return 1;
}

CMD:cansa(playerid) {
	new string[32+11];
	format(string, 32+11, "Can sa : %d", PlayerInfo[playerid][pCansa]);
	SendClientMessage(playerid, -1, string);
	format(string, 32+11, "Tui can sa : %d", PlayerInfo[playerid][pTuicansa]);
	SendClientMessage(playerid, -1, string);
	format(string, 32+11, "Goi pot : %d", PlayerInfo[playerid][pGoiPot]);
	SendClientMessage(playerid, -1, string);
	return 1;
}
CMD:kttuicansa(playerid, params[])
{
    new Player;
    if(sscanf(params, "u", Player))
		return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /checktuicansa [Player]");


    new szString[128];
	format(szString, sizeof(szString), "%s - Tui Can  sa: {FFD700}%s",GetPlayerNameEx(Player), number_format(PlayerInfo[Player][pTuicansa]));
	SendClientMessageEx(playerid, COLOR_CYAN, szString);
	return 1;
}
CMD:ktcansa(playerid, params[])
{
    new Player;
    if(sscanf(params, "u", Player))
		return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /checkcansa [Player]");


    new szString[128];
	format(szString, sizeof(szString), "%s - Can  sa: {FFD700}%s",GetPlayerNameEx(Player), number_format(PlayerInfo[Player][pCansa]));
	SendClientMessageEx(playerid, COLOR_CYAN, szString);
	return 1;
}


