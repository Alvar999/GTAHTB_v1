#include <a_samp>
#include <zcmd>	 

new 
	s_Timer[MAX_PLAYERS],
	s_Price[MAX_PLAYERS],
	Float:s_Meter[MAX_PLAYERS],
	Float:s_Pos[MAX_PLAYERS][3],
	bool:s_Active[MAX_PLAYERS],
	PlayerText:Sweeper_Textdraw[MAX_PLAYERS];

public OnFilterScriptInit() {
	return 1;
}

public OnPlayerConnect(playerid) {
	Sweeper_Textdraw[playerid] = CreatePlayerTextDraw(playerid, 66.665924, 304.489318, "_");
	PlayerTextDrawLetterSize(playerid, Sweeper_Textdraw[playerid], 0.140999, 1.226666);
	PlayerTextDrawTextSize(playerid, Sweeper_Textdraw[playerid], 0.000000, -61.000000);
	PlayerTextDrawAlignment(playerid, Sweeper_Textdraw[playerid], 2);
	PlayerTextDrawColor(playerid, Sweeper_Textdraw[playerid], -1);
	PlayerTextDrawUseBox(playerid, Sweeper_Textdraw[playerid], 1);
	PlayerTextDrawBoxColor(playerid, Sweeper_Textdraw[playerid], 170);
	PlayerTextDrawSetShadow(playerid, Sweeper_Textdraw[playerid], 0);
	PlayerTextDrawSetOutline(playerid, Sweeper_Textdraw[playerid], 0);
	PlayerTextDrawBackgroundColor(playerid, Sweeper_Textdraw[playerid], 255);
	PlayerTextDrawFont(playerid, Sweeper_Textdraw[playerid], 2);
	PlayerTextDrawSetProportional(playerid, Sweeper_Textdraw[playerid], 1);

	s_Price[playerid] = 0;
	s_Meter[playerid] = 0.0;
	s_Active[playerid] = false;
	
	return 1;
}	

public OnPlayerDisconnect(playerid, reason) {
	if(s_Active[playerid] == true) {
		s_Meter[playerid] = 0;
		s_Price[playerid] = 0;
		s_Active[playerid] = false;		
		KillTimer(s_Timer[playerid]);
		UpdateSweeper(playerid, 0,0, true);			
	}
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate) {
	if(newstate == PLAYER_STATE_DRIVER) {
		if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 574/*Sweeper Car*/) {
			SendClientMessage(playerid, -1, "/batdauquetrac");
		}
	}
	if(newstate == PLAYER_STATE_ONFOOT) {
		if(s_Active[playerid] == true) {
			if(s_Meter[playerid] > 10) { // Chay hon 10m khi xuong xe moi duoc nhan tien
				new st[128];
				GivePlayerMoney(playerid, s_Price[playerid]);		
				format(st, 128,"Ban da nhan duoc $%d tu cong viec!", s_Price[playerid]);
				SendClientMessage(playerid, -1, st);		
			}
			s_Meter[playerid] = 0;
			s_Price[playerid] = 0;
			KillTimer(s_Timer[playerid]);
			s_Active[playerid] = false;		
			UpdateSweeper(playerid, 0,0, true);	
		}
	}
	return 1;
}

UpdateSweeper(playerid, Float:meter, price, bool:t = false) {
	new string[128];
	format(string, 128, "%0.2fm_-_$%d", meter,price);
	PlayerTextDrawSetString(playerid, Sweeper_Textdraw[playerid], string);	
	if(t == false) 
		PlayerTextDrawShow(playerid, Sweeper_Textdraw[playerid]);	
	else 
		PlayerTextDrawHide(playerid, Sweeper_Textdraw[playerid]);	
}

forward SweeperCheck(playerid);
public SweeperCheck(playerid) {
	if(s_Meter[playerid] < 500) { 
		s_Meter[playerid] += GetPlayerDistanceFromPoint(playerid, s_Pos[playerid][0], s_Pos[playerid][1], s_Pos[playerid][2]);
		s_Price[playerid] = floatround(s_Meter[playerid]); 

		GetPlayerPos(playerid, s_Pos[playerid][0], s_Pos[playerid][1], s_Pos[playerid][2]);
		UpdateSweeper(playerid, s_Meter[playerid], s_Price[playerid]);

		//printf("%fmeter , %dprice", s_Meter[playerid], s_Price[playerid]);
	}
	else { // Đi hơn 500m tự động hoàn thành công việc
		s_Meter[playerid] = 0;
		s_Active[playerid] = false;
		KillTimer(s_Timer[playerid]);
		GivePlayerMoney(playerid, s_Price[playerid]);	
		SendClientMessage(playerid, -1, "Ban da hoan thanh cong viec!");
		UpdateSweeper(playerid, 0,0, true);
	}
	return 1;
}

CMD:batdauquetrac(playerid) {
	if(s_Active[playerid] == false && s_Meter[playerid] <= 0) {
		if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 574/*Sweeper Car*/) {
			s_Price[playerid] = 0;
			s_Meter[playerid] = 0.0;
			s_Active[playerid] = true;
			UpdateSweeper(playerid, s_Meter[playerid], s_Price[playerid]);
			s_Timer[playerid] = SetTimerEx("SweeperCheck", 1000, true, "i", playerid);
			GetPlayerPos(playerid, s_Pos[playerid][0], s_Pos[playerid][1], s_Pos[playerid][2]);
		}
		else SendClientMessage(playerid, -1, "Ban phai o tren xe quet rac de su dung lenh!");
	}
	return 1;
}

/*CMD:test(playerid) {
	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, Float:X,Float:Y,Float:Z);
	return	CreateVehicle(574, Float:X,Float:Y,Float:Z, 90, 1, 1, -1, .addsiren=0);
}*/
