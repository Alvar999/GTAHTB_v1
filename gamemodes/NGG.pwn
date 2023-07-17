#pragma disablerecursion
#define SERVER_GM_TEXT "GTAHTB"

#include <a_samp>
#include <a_mysql>
#include <streamer>
#include <sampvoice>
#include <yom_buttons>
#include <ZCMD>
#include <sscanf2>
#include <foreach>
#include <YSI\y_timers>
#include <YSI\y_utils>
#if defined SOCKET_ENABLED
#include <socket>

#endif

#include "./includes/NGG.pwn"
#include "./includes/3dspeed.inc"
#include "./includes/flymode.pwn"
#include "./includes/haican.pwn"
#include "./includes/chatgo.pwn"
#include "./includes/daumo.pwn"
#include "./includes/nongdan.pwn"
#include "./includes/cuopbank.pwn"
#include "./includes/khaithacda.pwn"
#include "./includes/chet.pwn"
#include "./includes/deosung.pwn"
#include "./includes/vutvukhi.pwn"
main() {}

public OnGameModeInit()
{
    gstream = SvCreateGStream(0xffff0000, "Global");
	print("Dang chuan bi tai gamemode, xin vui long cho doi...");
	g_mysql_Init();
	return 1;
}

public OnGameModeExit()
{
    if (gstream) SvDeleteStream(gstream);
    g_mysql_Exit();
	return 1;
}

