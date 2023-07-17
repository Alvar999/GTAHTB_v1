//#define FILTERSCRIPT
#include <a_samp>
#include <streamer>
#include <zcmd>
#include <sscanf2>
#include <progress>
#include <foreach>
#pragma tabsize 0

#define THONGTIN 0

new Text:Fishing[9][MAX_PLAYERS];
new Bar:FishingBar[MAX_PLAYERS];
new CanCau[MAX_PLAYERS];
new MoiCau[MAX_PLAYERS];
new DangCauCa[MAX_PLAYERS];
new KeoCau[MAX_PLAYERS];
new Key[MAX_PLAYERS];
new CaKG[MAX_PLAYERS];
new FishingTimer[MAX_PLAYERS];
new CauCaProgress[MAX_PLAYERS];
new TuiCa[MAX_PLAYERS];
new KeyTimer[MAX_PLAYERS];


public OnGameModeInit()
{
	Load3DTextLabels();
	AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	return 1;
}

public OnPlayerConnect(playerid)
{
    CanCau[playerid] = 0;
    MoiCau[playerid] = 0;
    DangCauCa[playerid] = 0;
    KeoCau[playerid] = 0;
    Key[playerid] = 5;
	CaKG[playerid] = 0;
	CauCaProgress[playerid] = 0;
	TuiCa[playerid] = 0;
	SetProgressBarValue(FishingBar[playerid], 0);
	GivePlayerMoney(playerid, 100);
    LoadPlayerTextDraws(playerid);
    LoadPlayerProgressBars(playerid);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys == KEY_YES)
	{
	    if(Key[playerid] == 1 || Key[playerid] == 2 || Key[playerid] == 3 || Key[playerid] == 4)
	    {
	        PlayerPlaySound(playerid,1054,0.0,0.0,0.0);
	        UpdateFishingBar(playerid, -20);
	    }
	    else if(Key[playerid] == 0)
		{
		    if(0 <= CaKG[playerid] <= 10)
	    	{
	    	    if(CauCaProgress[playerid]+10 >= 100)
				{
				    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
				    SetProgressBarValue(FishingBar[playerid], 100);
        			UpdateProgressBar(FishingBar[playerid], playerid);
				    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da cau ca thanh cong va da cho no vao tui ca !");
		        	KillTimer(FishingTimer[playerid]);
		        	KillTimer(KeyTimer[playerid]);
		        	TuiCa[playerid] += CaKG[playerid];
		        	CauCaXong(playerid);
		        }
				else
				{
				    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
   					UpdateFishingBar(playerid, 10);
   					ChonNgauNhienKey(playerid);
				}
	        }
	        if(11 <= CaKG[playerid] <= 19)
	    	{
	        	if(CauCaProgress[playerid]+10 >= 150)
				{
				    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
				    SetProgressBarValue(FishingBar[playerid], 150);
        			UpdateProgressBar(FishingBar[playerid], playerid);
				    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da cau ca thanh cong va da cho no vao tui ca !");
		        	KillTimer(FishingTimer[playerid]);
		        	KillTimer(KeyTimer[playerid]);
		        	TuiCa[playerid] += CaKG[playerid];
		        	CauCaXong(playerid);
		        }
				else
				{
				    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
   					UpdateFishingBar(playerid, 10);
   					ChonNgauNhienKey(playerid);
				}
	        }
	        if(20 <= CaKG[playerid] <= 25)
	    	{
	        	if(CauCaProgress[playerid]+10 >= 200)
				{
				    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
				    SetProgressBarValue(FishingBar[playerid], 200);
        			UpdateProgressBar(FishingBar[playerid], playerid);
				    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da cau ca thanh cong va da cho no vao tui ca !");
		        	KillTimer(FishingTimer[playerid]);
		        	KillTimer(KeyTimer[playerid]);
		        	TuiCa[playerid] += CaKG[playerid];
		        	CauCaXong(playerid);
		        }
				else
				{
				    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
   					UpdateFishingBar(playerid, 10);
   					ChonNgauNhienKey(playerid);
				}
	        }
	    }
	}
	if(newkeys == KEY_NO)
	{
	    if(Key[playerid] == 0 || Key[playerid] == 2 || Key[playerid] == 3 || Key[playerid] == 4)
	    {
	        PlayerPlaySound(playerid,1054,0.0,0.0,0.0);
	        UpdateFishingBar(playerid, -20);
	    }
	    else if(Key[playerid] == 1)
		{
		    if(0 <= CaKG[playerid] <= 10)
	    	{
	    	    if(CauCaProgress[playerid]+10 >= 100)
				{
				    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
				    SetProgressBarValue(FishingBar[playerid], 100);
        			UpdateProgressBar(FishingBar[playerid], playerid);
				    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da cau ca thanh cong va da cho no vao tui ca !");
		        	KillTimer(FishingTimer[playerid]);
		        	KillTimer(KeyTimer[playerid]);
		        	TuiCa[playerid] += CaKG[playerid];
		        	CauCaXong(playerid);
		        }
				else
				{
				    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
   					UpdateFishingBar(playerid, 10);
   					ChonNgauNhienKey(playerid);
				}
	        }
	        if(11 <= CaKG[playerid] <= 19)
	    	{
	        	if(CauCaProgress[playerid]+10 >= 150)
				{
				    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
				    SetProgressBarValue(FishingBar[playerid], 150);
        			UpdateProgressBar(FishingBar[playerid], playerid);
				    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da cau ca thanh cong va da cho no vao tui ca !");
		        	KillTimer(FishingTimer[playerid]);
		        	KillTimer(KeyTimer[playerid]);
		        	TuiCa[playerid] += CaKG[playerid];
		        	CauCaXong(playerid);
		        }
				else
				{
				    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
   					UpdateFishingBar(playerid, 10);
   					ChonNgauNhienKey(playerid);
				}
	        }
	        if(20 <= CaKG[playerid] <= 25)
	    	{
	        	if(CauCaProgress[playerid]+10 >= 200)
				{
				    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
				    SetProgressBarValue(FishingBar[playerid], 200);
        			UpdateProgressBar(FishingBar[playerid], playerid);
				    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da cau ca thanh cong va da cho no vao tui ca !");
		        	KillTimer(FishingTimer[playerid]);
		        	KillTimer(KeyTimer[playerid]);
		        	TuiCa[playerid] += CaKG[playerid];
		        	CauCaXong(playerid);
		        }
				else
				{
				    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
   					UpdateFishingBar(playerid, 10);
   					ChonNgauNhienKey(playerid);
				}
	        }
	    }
	}
	if(newkeys == KEY_CROUCH)
	{
	    if(Key[playerid] == 0 || Key[playerid] == 1 || Key[playerid] == 3 || Key[playerid] == 4)
	    {
	        PlayerPlaySound(playerid,1054,0.0,0.0,0.0);
	        UpdateFishingBar(playerid, -20);
	    }
	    else if(Key[playerid] == 2)
		{
		    if(0 <= CaKG[playerid] <= 10)
	    	{
	    	    if(CauCaProgress[playerid]+10 >= 100)
				{
				    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
				    SetProgressBarValue(FishingBar[playerid], 100);
        			UpdateProgressBar(FishingBar[playerid], playerid);
				    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da cau ca thanh cong va da cho no vao tui ca !");
		        	KillTimer(FishingTimer[playerid]);
		        	KillTimer(KeyTimer[playerid]);
		        	TuiCa[playerid] += CaKG[playerid];
		        	CauCaXong(playerid);
		        }
				else
				{
				    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
   					UpdateFishingBar(playerid, 10);
   					ChonNgauNhienKey(playerid);
				}
	        }
	        if(11 <= CaKG[playerid] <= 19)
	    	{
	        	if(CauCaProgress[playerid]+10 >= 150)
				{
				    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
				    SetProgressBarValue(FishingBar[playerid], 150);
        			UpdateProgressBar(FishingBar[playerid], playerid);
				    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da cau ca thanh cong va da cho no vao tui ca !");
		        	KillTimer(FishingTimer[playerid]);
		        	KillTimer(KeyTimer[playerid]);
		        	TuiCa[playerid] += CaKG[playerid];
		        	CauCaXong(playerid);
		        }
				else
				{
				    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
   					UpdateFishingBar(playerid, 10);
   					ChonNgauNhienKey(playerid);
				}
	        }
	        if(20 <= CaKG[playerid] <= 25)
	    	{
	        	if(CauCaProgress[playerid]+10 >= 200)
				{
				    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
				    SetProgressBarValue(FishingBar[playerid], 200);
        			UpdateProgressBar(FishingBar[playerid], playerid);
				    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da cau ca thanh cong va da cho no vao tui ca !");
		        	KillTimer(FishingTimer[playerid]);
		        	KillTimer(KeyTimer[playerid]);
		        	TuiCa[playerid] += CaKG[playerid];
		        	CauCaXong(playerid);
		        }
				else
				{
				    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
   					UpdateFishingBar(playerid, 10);
   					ChonNgauNhienKey(playerid);
				}
	        }
	    }
	}
	if(newkeys == KEY_SECONDARY_ATTACK)
	{
	    if(Key[playerid] == 0 || Key[playerid] == 1 || Key[playerid] == 2 || Key[playerid] == 4)
	    {
	        PlayerPlaySound(playerid,1054,0.0,0.0,0.0);
	        UpdateFishingBar(playerid, -20);
	    }
	    else if(Key[playerid] == 3)
		{
		    if(0 <= CaKG[playerid] <= 10)
	    	{
	    	    if(CauCaProgress[playerid]+10 >= 100)
				{
				    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
				    SetProgressBarValue(FishingBar[playerid], 100);
        			UpdateProgressBar(FishingBar[playerid], playerid);
				    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da cau ca thanh cong va da cho no vao tui ca !");
		        	KillTimer(FishingTimer[playerid]);
		        	KillTimer(KeyTimer[playerid]);
		        	TuiCa[playerid] += CaKG[playerid];
		        	CauCaXong(playerid);
		        }
				else
				{
				    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
   					UpdateFishingBar(playerid, 10);
   					ChonNgauNhienKey(playerid);
				}
	        }
	        if(11 <= CaKG[playerid] <= 19)
	    	{
	        	if(CauCaProgress[playerid]+10 >= 150)
				{
				    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
				    SetProgressBarValue(FishingBar[playerid], 150);
        			UpdateProgressBar(FishingBar[playerid], playerid);
				    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da cau ca thanh cong va da cho no vao tui ca !");
		        	KillTimer(FishingTimer[playerid]);
		        	KillTimer(KeyTimer[playerid]);
		        	TuiCa[playerid] += CaKG[playerid];
		        	CauCaXong(playerid);
		        }
				else
				{
				    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
   					UpdateFishingBar(playerid, 10);
   					ChonNgauNhienKey(playerid);
				}
	        }
	        if(20 <= CaKG[playerid] <= 25)
	    	{
	        	if(CauCaProgress[playerid]+10 >= 200)
				{
				    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
				    SetProgressBarValue(FishingBar[playerid], 200);
        			UpdateProgressBar(FishingBar[playerid], playerid);
				    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da cau ca thanh cong va da cho no vao tui ca !");
		        	KillTimer(FishingTimer[playerid]);
		        	KillTimer(KeyTimer[playerid]);
		        	TuiCa[playerid] += CaKG[playerid];
		        	CauCaXong(playerid);
		        }
				else
				{
				    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
   					UpdateFishingBar(playerid, 10);
   					ChonNgauNhienKey(playerid);
				}
	        }
	    }
	}
	if(newkeys == KEY_HANDBRAKE)
	{
	    if(Key[playerid] == 0 || Key[playerid] == 1 || Key[playerid] == 2 || Key[playerid] == 3)
	    {
	        PlayerPlaySound(playerid,1054,0.0,0.0,0.0);
	        UpdateFishingBar(playerid, -20);
	    }
	    else if(Key[playerid] == 4)
		{
		    if(0 <= CaKG[playerid] <= 10)
	    	{
	    	    if(CauCaProgress[playerid]+10 >= 100)
				{
				    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
				    SetProgressBarValue(FishingBar[playerid], 100);
        			UpdateProgressBar(FishingBar[playerid], playerid);
				    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da cau ca thanh cong va da cho no vao tui ca !");
		        	KillTimer(FishingTimer[playerid]);
		        	KillTimer(KeyTimer[playerid]);
		        	TuiCa[playerid] += CaKG[playerid];
		        	CauCaXong(playerid);
		        }
				else
				{
				    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
   					UpdateFishingBar(playerid, 10);
   					ChonNgauNhienKey(playerid);
				}
	        }
	        if(11 <= CaKG[playerid] <= 19)
	    	{
	        	if(CauCaProgress[playerid]+10 >= 150)
				{
				    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
				    SetProgressBarValue(FishingBar[playerid], 150);
        			UpdateProgressBar(FishingBar[playerid], playerid);
				    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da cau ca thanh cong va da cho no vao tui ca !");
		        	KillTimer(FishingTimer[playerid]);
		        	KillTimer(KeyTimer[playerid]);
		        	TuiCa[playerid] += CaKG[playerid];
		        	CauCaXong(playerid);
		        }
				else
				{
				    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
   					UpdateFishingBar(playerid, 10);
   					ChonNgauNhienKey(playerid);
				}
	        }
	        if(20 <= CaKG[playerid] <= 25)
	    	{
	        	if(CauCaProgress[playerid]+10 >= 200)
				{
				    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
				    SetProgressBarValue(FishingBar[playerid], 200);
        			UpdateProgressBar(FishingBar[playerid], playerid);
				    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da cau ca thanh cong va da cho no vao tui ca !");
		        	KillTimer(FishingTimer[playerid]);
		        	KillTimer(KeyTimer[playerid]);
		        	TuiCa[playerid] += CaKG[playerid];
		        	CauCaXong(playerid);
		        }
				else
				{
				    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
   					UpdateFishingBar(playerid, 10);
   					ChonNgauNhienKey(playerid);
				}
	        }
	    }
	}
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}

CMD:gotocauca(playerid, params[])
{
	SetPlayerPos(playerid, 1624.7081, 576.5785, 2.7578);
	SetPlayerInterior(playerid, 0);
	return 1;
}

CMD:cauca(playerid, params[])
{
    if(!IsPlayerInRangeOfPoint(playerid, 2.0, -1464.2217,771.3681,2.7414)|| IsPlayerInRangeOfPoint(playerid,3.0,-1464.3323,778.1747,2.7414) || IsPlayerInRangeOfPoint(playerid,3.0,-1464.8391,784.5316,2.7414) || IsPlayerInRangeOfPoint(playerid,3.0,-1465.0410,791.1559,2.7414) ) return SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Ban khong o gan noi cau ca !");
    if(CanCau[playerid] == 0) return SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Ban khong co can cau !");
	if(MoiCau[playerid] == 0) return SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Ban khong co moi cau !");
	if(DangCauCa[playerid] != 0) return SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Ban van dang cau ca !");
	if(TuiCa[playerid] > 20) return SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Tui ca da day, hay ban bot ca (gioi han la 20 KG) !");
	SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Ban da tha day cau va dang doi ca can cau !");
	DangCauCa[playerid] = 1;
	SetTimerEx("CauCa", 850*5, false, "i", playerid);
	GameTextForPlayer(playerid, "~y~DANG CAU CA...", 3000, 3);
	return 1;
}

CMD:muamoicau(playerid, params[])
{
    if(!IsPlayerInRangeOfPoint(playerid, 2.0, -1484.3921,702.2572,7.1782)) return SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Ban khong o gan noi mua moi cau !");
    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da mua 20 moi cau !");
	MoiCau[playerid] += 20;
	GivePlayerMoney(playerid, -20);
	return 1;
}

CMD:muacancau(playerid, params[])
{
    if(!IsPlayerInRangeOfPoint(playerid, 2.0, -1484.5605,695.7436,7.1782)) return SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Ban khong o gan noi mua can cau !");
    SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Ban da mua 1 cay can cau !");
	CanCau[playerid] += 1;
	GivePlayerMoney(playerid, -20);
	return 1;
}

CMD:thongtinca(playerid, params[])
{
	new string[1000];
	format(string, sizeof(string),"{FFFFFF}Can cau: %d\n", CanCau[playerid]);
	format(string, sizeof(string),"%sMoi cau: %d\n", string, MoiCau[playerid]);
	format(string, sizeof(string),"%sTui ca: %d KG\n", string, TuiCa[playerid]);
	ShowPlayerDialog(playerid,THONGTIN,DIALOG_STYLE_MSGBOX,"{FF0000}Thong tin",string,"Dong","");
	return 1;
}

CMD:trogiupcauca(playerid, params[])
{
	new string[1000];
	format(string, sizeof(string),"{FFFFFF}- Cau ca: /CauCa\n");
	format(string, sizeof(string),"%s- Mua: /MuaCanCau /MuaMoiCau\n", string);
	format(string, sizeof(string),"%s- Ban: /BanCa\n", string);
	ShowPlayerDialog(playerid,THONGTIN,DIALOG_STYLE_MSGBOX,"{FF0000}Tro giup cau ca",string,"Dong","");
	return 1;
}

CMD:banca(playerid, params[])
{
    if(!IsPlayerInRangeOfPoint(playerid, 2.0, -1478.1395,744.7393,2.8152)) return SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Ban khong o gan noi ban ca !");
	new string[1000], money;
	money = TuiCa[playerid]*2;
	GivePlayerMoney(playerid, money);
	format(string, sizeof(string),"{00FF00}[!] {FFFFFF}Ban da ban %d KG ca voi gia %d$\n", TuiCa[playerid], money);
	SendClientMessage(playerid,-1,string);
	TuiCa[playerid] = 0;
	return 1;
}

stock Load3DTextLabels()
{
    Create3DTextLabel("{FFFF00}[Cau ca]\n{00FF00}[Open]\n{FFFFFF}Khu vuc cau ca", -1,-1464.2217,771.3681,2.7414,50.0,0,0);
    Create3DTextLabel("{FFFF00}[Cau ca]\n{00FF00}[Open]\n{FFFFFF}Diem mua can cau", -1,-1484.5605,695.7436,7.1782,50.0,0,0);
    Create3DTextLabel("{FFFF00}[Cau ca]\n{00FF00}[Open]\n{FFFFFF}Diem mua moi cau", -1,-1484.3921,702.2572,7.1782,50.0,0,0);
    Create3DTextLabel("{FFFF00}[Cau ca]\n{00FF00}[Open]\n{FFFFFF}Khu vuc ban ca", -1,-1478.1395,744.7393,2.8152,50.0,0,0);
	return 1;
}

stock LoadPlayerTextDraws(playerid)
{
    Fishing[0][playerid] = TextDrawCreate(475.199615, 312.853302, "Thong tin ca:");
	TextDrawLetterSize(Fishing[0][playerid], 0.300000, 1.000000);
	TextDrawTextSize(Fishing[0][playerid], 635.199645, 27.626665);
	TextDrawAlignment(Fishing[0][playerid], 1);
	TextDrawColor(Fishing[0][playerid], -1);
	TextDrawUseBox(Fishing[0][playerid], true);
	TextDrawBoxColor(Fishing[0][playerid], 255);
	TextDrawSetShadow(Fishing[0][playerid], 0);
	TextDrawSetOutline(Fishing[0][playerid], 1);
	TextDrawBackgroundColor(Fishing[0][playerid], 51);
	TextDrawFont(Fishing[0][playerid], 2);
	TextDrawSetProportional(Fishing[0][playerid], 1);
	
 	Fishing[1][playerid] = TextDrawCreate(641.199951, 328.540039, "usebox");
	TextDrawLetterSize(Fishing[1][playerid], 0.000000, 11.262591);
	TextDrawTextSize(Fishing[1][playerid], 468.399963, 0.000000);
	TextDrawAlignment(Fishing[1][playerid], 1);
	TextDrawColor(Fishing[1][playerid], 0);
	TextDrawUseBox(Fishing[1][playerid], true);
	TextDrawBoxColor(Fishing[1][playerid], 102);
	TextDrawSetShadow(Fishing[1][playerid], 0);
	TextDrawSetOutline(Fishing[1][playerid], 0);
	TextDrawFont(Fishing[1][playerid], 0);

	Fishing[2][playerid] = TextDrawCreate(481.600006, 330.026672, "Loai ca:~n~Khoi luong:~n~Xep loai:");
	TextDrawLetterSize(Fishing[2][playerid], 0.300000, 1.200000);
	TextDrawAlignment(Fishing[2][playerid], 1);
	TextDrawColor(Fishing[2][playerid], -1);
	TextDrawSetShadow(Fishing[2][playerid], 0);
	TextDrawSetOutline(Fishing[2][playerid], 1);
	TextDrawBackgroundColor(Fishing[2][playerid], 255);
	TextDrawFont(Fishing[2][playerid], 2);
	TextDrawSetProportional(Fishing[2][playerid], 1);

	Fishing[3][playerid] = TextDrawCreate(542.599975, 367.613281, "Key:");
	TextDrawLetterSize(Fishing[3][playerid], 0.300000, 0.899999);
	TextDrawTextSize(Fishing[3][playerid], 572.000000, 238.933364);
	TextDrawAlignment(Fishing[3][playerid], 1);
	TextDrawColor(Fishing[3][playerid], -1);
	TextDrawUseBox(Fishing[3][playerid], true);
	TextDrawBoxColor(Fishing[3][playerid], -1378294017);
	TextDrawSetShadow(Fishing[3][playerid], 0);
	TextDrawSetOutline(Fishing[3][playerid], 1);
	TextDrawBackgroundColor(Fishing[3][playerid], 255);
	TextDrawFont(Fishing[3][playerid], 2);
	TextDrawSetProportional(Fishing[3][playerid], 1);

	Fishing[4][playerid] = TextDrawCreate(577.999938, 380.806671, "usebox");
	TextDrawLetterSize(Fishing[4][playerid], 0.000000, 2.835927);
	TextDrawTextSize(Fishing[4][playerid], 536.399963, 0.000000);
	TextDrawAlignment(Fishing[4][playerid], 1);
	TextDrawColor(Fishing[4][playerid], 0);
	TextDrawUseBox(Fishing[4][playerid], true);
	TextDrawBoxColor(Fishing[4][playerid], 102);
	TextDrawSetShadow(Fishing[4][playerid], 0);
	TextDrawSetOutline(Fishing[4][playerid], 0);
	TextDrawFont(Fishing[4][playerid], 0);

	Fishing[5][playerid] = TextDrawCreate(543.999816, 377.066711, "N");
	TextDrawLetterSize(Fishing[5][playerid], 0.987200, 3.261332);
	TextDrawAlignment(Fishing[5][playerid], 1);
	TextDrawColor(Fishing[5][playerid], 255);
	TextDrawSetShadow(Fishing[5][playerid], 0);
	TextDrawSetOutline(Fishing[5][playerid], 1);
	TextDrawBackgroundColor(Fishing[5][playerid], -1);
	TextDrawFont(Fishing[5][playerid], 2);
	TextDrawSetProportional(Fishing[5][playerid], 1);

	Fishing[6][playerid] = TextDrawCreate(540.200256, 330.026672, "Ca map xanh");
	TextDrawLetterSize(Fishing[6][playerid], 0.300000, 1.200000);
	TextDrawAlignment(Fishing[6][playerid], 1);
	TextDrawColor(Fishing[6][playerid], -1378294017);
	TextDrawSetShadow(Fishing[6][playerid], 0);
	TextDrawSetOutline(Fishing[6][playerid], 1);
	TextDrawBackgroundColor(Fishing[6][playerid], 255);
	TextDrawFont(Fishing[6][playerid], 2);
	TextDrawSetProportional(Fishing[6][playerid], 1);

	Fishing[7][playerid] = TextDrawCreate(564.400085, 341.026672, "50 Kg");
	TextDrawLetterSize(Fishing[7][playerid], 0.300000, 1.200000);
	TextDrawAlignment(Fishing[7][playerid], 1);
	TextDrawColor(Fishing[7][playerid], -1378294017);
	TextDrawSetShadow(Fishing[7][playerid], 0);
	TextDrawSetOutline(Fishing[7][playerid], 1);
	TextDrawBackgroundColor(Fishing[7][playerid], 255);
	TextDrawFont(Fishing[7][playerid], 2);
	TextDrawSetProportional(Fishing[7][playerid], 1);

	Fishing[8][playerid] = TextDrawCreate(547.000305, 351.6, "Quy hiem");
	TextDrawLetterSize(Fishing[8][playerid], 0.300000, 1.200000);
	TextDrawAlignment(Fishing[8][playerid], 1);
	TextDrawColor(Fishing[8][playerid], -65281);
	TextDrawSetShadow(Fishing[8][playerid], 0);
	TextDrawSetOutline(Fishing[8][playerid], 1);
	TextDrawBackgroundColor(Fishing[8][playerid], 255);
	TextDrawFont(Fishing[8][playerid], 2);
	TextDrawSetProportional(Fishing[8][playerid], 1);
	return 1;
}

stock LoadPlayerProgressBars(playerid)
{
    FishingBar[playerid] = CreateProgressBar(484.00, 414.00, 141.50, 10.50, -1, 100.0);
    SetProgressBarValue(FishingBar[playerid], 0);
	return 1;
}

forward CauCa(playerid);
public CauCa(playerid)
{
    ChonCaNgauNhien(playerid);
	return 1;
}

stock ChonCaNgauNhien(playerid)
{
	new cauduoc = random(3);
	switch(cauduoc)
	{
	    case 0:
	    {
	        ShowFishingTextDraws(playerid);
	        SendClientMessage(playerid,-1,"{00FF00}[!] {FFFFFF}Da co ca can cau ! Vui long xem thong tin ca va chuan bi keo day cau.");
	        UpdateFishingBar(playerid, 30);
	        PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
			KeoCau[playerid] = 3;
			MoiCau[playerid] -= 1;
			TextDrawSetString(Fishing[5][playerid], "3");
			SetTimerEx("BatDauKeoDayCau", 850, false, "i", playerid);
		    new randomselect = random(3);
			switch(randomselect)
			{
				case 0:
				{
				    TextDrawSetString(Fishing[6][playerid], "Ca ho");
				    new khoiluong = random(25);
				    new khoiluongstring[24];
				    switch(khoiluong)
					{
					    case 0:
					    {
					        DangCauCa[playerid] = 0;
		    				SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Con ca da chay thoat.");
					    }
					    case 1..10:
					    {
					        CaKG[playerid] = khoiluong;
					        format(khoiluongstring,sizeof(khoiluongstring),"%d KG",khoiluong);
					        TextDrawSetString(Fishing[7][playerid], khoiluongstring);
					        TextDrawSetString(Fishing[8][playerid], "Binh thuong");
					        SetProgressBarMaxValue(FishingBar[playerid], 100);
					    }
					    case 11..19:
					    {
					        CaKG[playerid] = khoiluong;
					        format(khoiluongstring,sizeof(khoiluongstring),"%d KG",khoiluong);
					        TextDrawSetString(Fishing[7][playerid], khoiluongstring);
					        TextDrawSetString(Fishing[8][playerid], "Tot");
					        SetProgressBarMaxValue(FishingBar[playerid], 150);
					    }
					    case 20..25:
					    {
					        CaKG[playerid] = khoiluong;
					        format(khoiluongstring,sizeof(khoiluongstring),"%d KG",khoiluong);
					        TextDrawSetString(Fishing[7][playerid], khoiluongstring);
					        TextDrawSetString(Fishing[8][playerid], "Quy hiem");
					        SetProgressBarMaxValue(FishingBar[playerid], 200);
					    }
					}
				}
				case 1:
				{
				    TextDrawSetString(Fishing[6][playerid], "Ca vang");
				    new khoiluong = random(25);
				    new khoiluongstring[24];
				    switch(khoiluong)
					{
					    case 0:
					    {
					        DangCauCa[playerid] = 0;
		    				SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Con ca da chay thoat.");
					    }
					    case 1..10:
					    {
					        CaKG[playerid] = khoiluong;
					        format(khoiluongstring,sizeof(khoiluongstring),"%d KG",khoiluong);
					        TextDrawSetString(Fishing[7][playerid], khoiluongstring);
					        TextDrawSetString(Fishing[8][playerid], "Binh thuong");
					        SetProgressBarMaxValue(FishingBar[playerid], 100);
					    }
					    case 11..19:
					    {
					        CaKG[playerid] = khoiluong;
					        format(khoiluongstring,sizeof(khoiluongstring),"%d KG",khoiluong);
					        TextDrawSetString(Fishing[7][playerid], khoiluongstring);
					        TextDrawSetString(Fishing[8][playerid], "Tot");
					        SetProgressBarMaxValue(FishingBar[playerid], 150);
					    }
					    case 20..25:
					    {
					        CaKG[playerid] = khoiluong;
					        format(khoiluongstring,sizeof(khoiluongstring),"%d KG",khoiluong);
					        TextDrawSetString(Fishing[7][playerid], khoiluongstring);
					        TextDrawSetString(Fishing[8][playerid], "Quy hiem");
					        SetProgressBarMaxValue(FishingBar[playerid], 200);
					    }
					}
				}
				case 2:
				{
				    TextDrawSetString(Fishing[6][playerid], "Ca loc");
				    new khoiluong = random(25);
				    new khoiluongstring[24];
				    switch(khoiluong)
					{
					    case 0:
					    {
					        DangCauCa[playerid] = 0;
		    				SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Con ca da chay thoat.");
					    }
					    case 1..10:
					    {
					        CaKG[playerid] = khoiluong;
					        format(khoiluongstring,sizeof(khoiluongstring),"%d KG",khoiluong);
					        TextDrawSetString(Fishing[7][playerid], khoiluongstring);
					        TextDrawSetString(Fishing[8][playerid], "Binh thuong");
					        SetProgressBarMaxValue(FishingBar[playerid], 100);
					    }
					    case 11..19:
					    {
					        CaKG[playerid] = khoiluong;
					        format(khoiluongstring,sizeof(khoiluongstring),"%d KG",khoiluong);
					        TextDrawSetString(Fishing[7][playerid], khoiluongstring);
					        TextDrawSetString(Fishing[8][playerid], "Tot");
					        SetProgressBarMaxValue(FishingBar[playerid], 150);
					    }
					    case 20..25:
					    {
					        CaKG[playerid] = khoiluong;
					        format(khoiluongstring,sizeof(khoiluongstring),"%d KG",khoiluong);
					        TextDrawSetString(Fishing[7][playerid], khoiluongstring);
					        TextDrawSetString(Fishing[8][playerid], "Quy hiem");
					        SetProgressBarMaxValue(FishingBar[playerid], 200);
					    }
					}
				}
				case 3:
				{
				    TextDrawSetString(Fishing[6][playerid], "Ca thu");
				    new khoiluong = random(25);
				    new khoiluongstring[24];
				    switch(khoiluong)
					{
					    case 0:
					    {
					        DangCauCa[playerid] = 0;
		    				SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Con ca da chay thoat.");
					    }
					    case 1..10:
					    {
					        CaKG[playerid] = khoiluong;
					        format(khoiluongstring,sizeof(khoiluongstring),"%d KG",khoiluong);
					        TextDrawSetString(Fishing[7][playerid], khoiluongstring);
					        TextDrawSetString(Fishing[8][playerid], "Binh thuong");
					        SetProgressBarMaxValue(FishingBar[playerid], 100);
					    }
					    case 11..19:
					    {
					        CaKG[playerid] = khoiluong;
					        format(khoiluongstring,sizeof(khoiluongstring),"%d KG",khoiluong);
					        TextDrawSetString(Fishing[7][playerid], khoiluongstring);
					        TextDrawSetString(Fishing[8][playerid], "Tot");
					        SetProgressBarMaxValue(FishingBar[playerid], 150);
					    }
					    case 20..25:
					    {
					        CaKG[playerid] = khoiluong;
					        format(khoiluongstring,sizeof(khoiluongstring),"%d KG",khoiluong);
					        TextDrawSetString(Fishing[7][playerid], khoiluongstring);
					        TextDrawSetString(Fishing[8][playerid], "Quy hiem");
					        SetProgressBarMaxValue(FishingBar[playerid], 200);
					    }
					}
				}
			}
		}
		case 1:
		{
		    DangCauCa[playerid] = 0;
		    SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Ban da cau duoc mot cuc cut va da nem no di =]]z.");
		}
		case 2:
		{
		    DangCauCa[playerid] = 0;
		    SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Ban da cau duoc mot bich rac va da nem no di.");
		}
		case 3:
		{
		    SetTimerEx("ChonCaNgauNhien", 850*3, false, "i", playerid);
		}
	}
	return 1;
}
stock ShowFishingTextDraws(playerid)
{
    for(new i=0;i<=8;i++)
	{
	    TextDrawHideForPlayer(playerid, Fishing[i][playerid]);
	    TextDrawShowForPlayer(playerid, Fishing[i][playerid]);
	}
	ShowProgressBarForPlayer(playerid, FishingBar[playerid]);
	return 1;
}

forward BatDauKeoDayCau(playerid);
public BatDauKeoDayCau(playerid)
{
	if(KeoCau[playerid] == 3)
	{
	    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
		KeoCau[playerid] = 2;
		TextDrawSetString(Fishing[5][playerid], "2");
		SetTimerEx("BatDauKeoDayCau", 850, false, "i", playerid);
	}
	else if(KeoCau[playerid] == 2)
	{
	    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
		KeoCau[playerid] = 1;
		TextDrawSetString(Fishing[5][playerid], "1");
		SetTimerEx("BatDauKeoDayCau", 850, false, "i", playerid);
	}
	else if(KeoCau[playerid] == 1)
	{
	    PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
		KeoCau[playerid] = 0;
		TextDrawSetString(Fishing[5][playerid], "G");
		SetTimerEx("BatDauKeoDayCau", 850, false, "i", playerid);
	}
	else if(KeoCau[playerid] == 0)
	{
	    PlayerPlaySound(playerid,17802,0.0,0.0,0.0);
	    ChonNgauNhienKey(playerid);
	    FishingTimer[playerid] = SetTimerEx("FishingProgress", 850, true, "i", playerid);
	}
	return 1;
}

stock ChonNgauNhienKey(playerid)
{
    KillTimer(KeyTimer[playerid]);
    new randomselect = random(4);
	switch(randomselect)
	{
		case 0: //Y
		{
			Key[playerid] = 0;
		    TextDrawSetString(Fishing[5][playerid], "Y");
		}
		case 1: //N
		{
		    Key[playerid] = 1;
		    TextDrawSetString(Fishing[5][playerid], "N");
		}
		case 2: //C
		{
		    Key[playerid] = 2;
		    TextDrawSetString(Fishing[5][playerid], "C");
		}
		case 3: //F
		{
		    Key[playerid] = 3;
		    TextDrawSetString(Fishing[5][playerid], "F");
		}
		case 4: //H
		{
		    Key[playerid] = 4;
		    TextDrawSetString(Fishing[5][playerid], "H");
		}
	}
	KeyTimer[playerid] = SetTimerEx("GioiHanKey", 850*3, false, "i", playerid);
	return 1;
}

forward FishingProgress(playerid);
public FishingProgress(playerid)
{
	UpdateFishingBar(playerid, -10);
	return 1;
}

stock UpdateFishingBar(playerid, value)
{
    CauCaProgress[playerid] += value;
    SetProgressBarValue(FishingBar[playerid], GetProgressBarValue(FishingBar[playerid])+value);
	UpdateProgressBar(FishingBar[playerid], playerid);
	CheckFishingProgress(playerid);
	return 1;
}

stock CauCaXong(playerid)
{
    for(new i=0;i<=8;i++)
	{
	    TextDrawHideForPlayer(playerid, Fishing[i][playerid]);
	    TextDrawHideForPlayer(playerid, Fishing[i][playerid]);
	}
	KillTimer(FishingTimer[playerid]);
	KillTimer(KeyTimer[playerid]);
	DangCauCa[playerid] = 0;
	KeoCau[playerid] = 0;
	Key[playerid] = 5;
	CauCaProgress[playerid] = 0;
	SetProgressBarValue(FishingBar[playerid], 0);
	HideProgressBarForPlayer(playerid, FishingBar[playerid]);
	return 1;
}

stock CheckFishingProgress(playerid)
{
    if(CauCaProgress[playerid] <= 0)
	{
	    SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Ban da keo day cau that bai va con ca da thoat !");
	    CauCaXong(playerid);
	}
	return 1;
}

forward GioiHanKey(playerid);
public GioiHanKey(playerid)
{
    CauCaProgress[playerid] = 0;
    SetProgressBarValue(FishingBar[playerid], 0);
    HideProgressBarForPlayer(playerid, FishingBar[playerid]);
	CheckFishingProgress(playerid);
	return 1;
}
