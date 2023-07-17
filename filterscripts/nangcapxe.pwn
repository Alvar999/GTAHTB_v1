
#include        <a_samp>
#include        <zcmd>




#define                 C_ADMIN             0x4169E1FF
#define                 C_AVISO             0xB22222FF

new Text:wTuning1[23];
new Text:wTuning2[9];
new Text:wTuning3[6];
new Text:wTuning4[3];
new Text:wTuning5[3];




public OnFilterScriptInit()
{
        wTuning1[0] = TextDrawCreate(560.000000, 102.000000, "_");
        TextDrawBackgroundColor(wTuning1[0], 255);
        TextDrawFont(wTuning1[0], 1);
        TextDrawLetterSize(wTuning1[0], 0.709999, 1.599998);
        TextDrawColor(wTuning1[0], 852308735);
        TextDrawSetOutline(wTuning1[0], 0);
        TextDrawSetProportional(wTuning1[0], 1);
        TextDrawSetShadow(wTuning1[0], 1);
        TextDrawUseBox(wTuning1[0], 1);
        TextDrawBoxColor(wTuning1[0], 793726975);
        TextDrawTextSize(wTuning1[0], 72.000000, 20.000000);
        TextDrawSetSelectable(wTuning1[0], 0);

        wTuning1[1] = TextDrawCreate(560.000000, 120.000000, "_");
        TextDrawBackgroundColor(wTuning1[1], 255);
        TextDrawFont(wTuning1[1], 1);
        TextDrawLetterSize(wTuning1[1], 0.709999, 1.699998);
        TextDrawColor(wTuning1[1], -1);
        TextDrawSetOutline(wTuning1[1], 0);
        TextDrawSetProportional(wTuning1[1], 1);
        TextDrawSetShadow(wTuning1[1], 1);
        TextDrawUseBox(wTuning1[1], 1);
        TextDrawBoxColor(wTuning1[1], 150);
        TextDrawTextSize(wTuning1[1], 72.000000, 20.000000);
        TextDrawSetSelectable(wTuning1[1], 0);

        wTuning1[2] = TextDrawCreate(243.000000, 144.000000, "_");
        TextDrawBackgroundColor(wTuning1[2], 255);
        TextDrawFont(wTuning1[2], 1);
        TextDrawLetterSize(wTuning1[2], 0.709999, 21.299999);
        TextDrawColor(wTuning1[2], -1);
        TextDrawSetOutline(wTuning1[2], 0);
        TextDrawSetProportional(wTuning1[2], 1);
        TextDrawSetShadow(wTuning1[2], 1);
        TextDrawUseBox(wTuning1[2], 1);
        TextDrawBoxColor(wTuning1[2], 150);
        TextDrawTextSize(wTuning1[2], 72.000000, 19.000000);
        TextDrawSetSelectable(wTuning1[2], 0);

        wTuning1[3] = TextDrawCreate(271.000000, 105.000000, "Tuning Car");
        TextDrawBackgroundColor(wTuning1[3], 255);
        TextDrawFont(wTuning1[3], 2);
        TextDrawLetterSize(wTuning1[3], 0.300000, 1.000000);
        TextDrawColor(wTuning1[3], -1);
        TextDrawSetOutline(wTuning1[3], 0);
        TextDrawSetProportional(wTuning1[3], 1);
        TextDrawSetShadow(wTuning1[3], 0);
        TextDrawSetSelectable(wTuning1[3], 0);

        wTuning1[4] = TextDrawCreate(368.000000, 152.000000, "Tuning system made by Sn4Ke");
        TextDrawBackgroundColor(wTuning1[4], 255);
        TextDrawFont(wTuning1[4], 2);
        TextDrawLetterSize(wTuning1[4], 0.250000, 1.100000);
        TextDrawColor(wTuning1[4], -1);
        TextDrawSetOutline(wTuning1[4], 0);
        TextDrawSetProportional(wTuning1[4], 1);
        TextDrawSetShadow(wTuning1[4], 0);
        TextDrawSetSelectable(wTuning1[4], 0);

        wTuning1[5] = TextDrawCreate(560.000000, 144.000000, "_");
        TextDrawBackgroundColor(wTuning1[5], 255);
        TextDrawFont(wTuning1[5], 1);
        TextDrawLetterSize(wTuning1[5], 0.709999, 2.900000);
        TextDrawColor(wTuning1[5], -1);
        TextDrawSetOutline(wTuning1[5], 0);
        TextDrawSetProportional(wTuning1[5], 1);
        TextDrawSetShadow(wTuning1[5], 1);
        TextDrawUseBox(wTuning1[5], 1);
        TextDrawBoxColor(wTuning1[5], 793726975);
        TextDrawTextSize(wTuning1[5], 247.000000, 19.000000);
        TextDrawSetSelectable(wTuning1[5], 0);

        wTuning1[6] = TextDrawCreate(538.000000, 105.000000, "X");
        TextDrawBackgroundColor(wTuning1[6], 255);
        TextDrawFont(wTuning1[6], 1);
        TextDrawLetterSize(wTuning1[6], 0.500000, 1.000000);
        TextDrawColor(wTuning1[6], 255);
        TextDrawSetOutline(wTuning1[6], 0);
        TextDrawSetProportional(wTuning1[6], 1);
        TextDrawSetShadow(wTuning1[6], 0);
        TextDrawUseBox(wTuning1[6], 1);
        TextDrawBoxColor(wTuning1[6], 0);
        TextDrawTextSize(wTuning1[6], 550.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[6], 1);

        wTuning1[7] = TextDrawCreate(88.000000, 123.000000, "Wheels");
        TextDrawBackgroundColor(wTuning1[7], 255);
        TextDrawFont(wTuning1[7], 2);
        TextDrawLetterSize(wTuning1[7], 0.300000, 1.000000);
        TextDrawColor(wTuning1[7], -1);
        TextDrawSetOutline(wTuning1[7], 0);
        TextDrawSetProportional(wTuning1[7], 1);
        TextDrawSetShadow(wTuning1[7], 0);
        TextDrawUseBox(wTuning1[7], 1);
        TextDrawBoxColor(wTuning1[7], 0);
        TextDrawTextSize(wTuning1[7], 137.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[7], 0);

        wTuning1[8] = TextDrawCreate(150.000000, 123.000000, "Color");
        TextDrawBackgroundColor(wTuning1[8], 255);
        TextDrawFont(wTuning1[8], 2);
        TextDrawLetterSize(wTuning1[8], 0.300000, 1.000000);
        TextDrawColor(wTuning1[8], -1);
        TextDrawSetOutline(wTuning1[8], 0);
        TextDrawSetProportional(wTuning1[8], 1);
        TextDrawSetShadow(wTuning1[8], 0);
        TextDrawUseBox(wTuning1[8], 1);
        TextDrawBoxColor(wTuning1[8], 0);
        TextDrawTextSize(wTuning1[8], 190.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[8], 0);

        wTuning1[9] = TextDrawCreate(204.000000, 123.000000, "paintjobs");
        TextDrawBackgroundColor(wTuning1[9], 255);
        TextDrawFont(wTuning1[9], 2);
        TextDrawLetterSize(wTuning1[9], 0.300000, 1.000000);
        TextDrawColor(wTuning1[9], -1);
        TextDrawSetOutline(wTuning1[9], 0);
        TextDrawSetProportional(wTuning1[9], 1);
        TextDrawSetShadow(wTuning1[9], 0);
        TextDrawUseBox(wTuning1[9], 1);
        TextDrawBoxColor(wTuning1[9], 0);
        TextDrawTextSize(wTuning1[9], 274.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[9], 0);

        wTuning1[10] = TextDrawCreate(284.000000, 123.000000, "nitro");
        TextDrawBackgroundColor(wTuning1[10], 255);
        TextDrawFont(wTuning1[10], 2);
        TextDrawLetterSize(wTuning1[10], 0.300000, 1.000000);
        TextDrawColor(wTuning1[10], -1);
        TextDrawSetOutline(wTuning1[10], 0);
        TextDrawSetProportional(wTuning1[10], 1);
        TextDrawSetShadow(wTuning1[10], 0);
        TextDrawUseBox(wTuning1[10], 1);
        TextDrawBoxColor(wTuning1[10], 0);
        TextDrawTextSize(wTuning1[10], 320.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[10], 0);

        wTuning1[11] = TextDrawCreate(334.000000, 123.000000, "hydraulics");
        TextDrawBackgroundColor(wTuning1[11], 255);
        TextDrawFont(wTuning1[11], 2);
        TextDrawLetterSize(wTuning1[11], 0.300000, 1.000000);
        TextDrawColor(wTuning1[11], -1);
        TextDrawSetOutline(wTuning1[11], 0);
        TextDrawSetProportional(wTuning1[11], 1);
        TextDrawSetShadow(wTuning1[11], 0);
        TextDrawUseBox(wTuning1[11], 1);
        TextDrawBoxColor(wTuning1[11], 0);
        TextDrawTextSize(wTuning1[11], 411.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[11], 0);

        wTuning1[12] = TextDrawCreate(424.000000, 123.000000, "neon");
        TextDrawBackgroundColor(wTuning1[12], 255);
        TextDrawFont(wTuning1[12], 2);
        TextDrawLetterSize(wTuning1[12], 0.300000, 1.000000);
        TextDrawColor(wTuning1[12], -1);
        TextDrawSetOutline(wTuning1[12], 0);
        TextDrawSetProportional(wTuning1[12], 1);
        TextDrawSetShadow(wTuning1[12], 0);
        TextDrawUseBox(wTuning1[12], 1);
        TextDrawBoxColor(wTuning1[12], 0);
        TextDrawTextSize(wTuning1[12], 457.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[12], 0);


        wTuning1[13] = TextDrawCreate(466.000000, 123.000000, "autotuning");
        TextDrawBackgroundColor(wTuning1[13], 255);
        TextDrawFont(wTuning1[13], 2);
        TextDrawLetterSize(wTuning1[13], 0.300000, 1.000000);
        TextDrawColor(wTuning1[13], -1);
        TextDrawSetOutline(wTuning1[13], 0);
        TextDrawSetProportional(wTuning1[13], 1);
        TextDrawSetShadow(wTuning1[13], 0);
        TextDrawUseBox(wTuning1[13], 1);
        TextDrawBoxColor(wTuning1[13], 0);
        TextDrawTextSize(wTuning1[13], 542.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[13], 0);


        wTuning1[14] = TextDrawCreate(88.000000, 149.000000, "Black___________________");
        TextDrawBackgroundColor(wTuning1[14], 255);
        TextDrawFont(wTuning1[14], 2);
        TextDrawLetterSize(wTuning1[14], 0.300000, 1.000000);
        TextDrawColor(wTuning1[14], -1);
        TextDrawSetOutline(wTuning1[14], 0);
        TextDrawSetProportional(wTuning1[14], 1);
        TextDrawSetShadow(wTuning1[14], 0);
        TextDrawUseBox(wTuning1[14], 1);
        TextDrawBoxColor(wTuning1[14], 0);
        TextDrawTextSize(wTuning1[14], 190.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[14], 0);

        wTuning1[15] = TextDrawCreate(88.000000, 168.000000, "White____________________");
        TextDrawBackgroundColor(wTuning1[15], 255);
        TextDrawFont(wTuning1[15], 2);
        TextDrawLetterSize(wTuning1[15], 0.300000, 1.000000);
        TextDrawColor(wTuning1[15], -1);
        TextDrawSetOutline(wTuning1[15], 0);
        TextDrawSetProportional(wTuning1[15], 1);
        TextDrawSetShadow(wTuning1[15], 0);
        TextDrawUseBox(wTuning1[15], 1);
        TextDrawBoxColor(wTuning1[15], 0);
        TextDrawTextSize(wTuning1[15], 170.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[15], 0);

        wTuning1[16] = TextDrawCreate(88.000000, 190.000000, "Green___________________");
        TextDrawBackgroundColor(wTuning1[16], 255);
        TextDrawFont(wTuning1[16], 2);
        TextDrawLetterSize(wTuning1[16], 0.300000, 1.000000);
        TextDrawColor(wTuning1[16], -1);
        TextDrawSetOutline(wTuning1[16], 0);
        TextDrawSetProportional(wTuning1[16], 1);
        TextDrawSetShadow(wTuning1[16], 0);
        TextDrawUseBox(wTuning1[16], 1);
        TextDrawBoxColor(wTuning1[16], 0);
        TextDrawTextSize(wTuning1[16], 171.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[16], 0);

        wTuning1[17] = TextDrawCreate(88.000000, 213.000000, "Cyan_____________________");
        TextDrawBackgroundColor(wTuning1[17], 255);
        TextDrawFont(wTuning1[17], 2);
        TextDrawLetterSize(wTuning1[17], 0.300000, 1.000000);
        TextDrawColor(wTuning1[17], -1);
        TextDrawSetOutline(wTuning1[17], 0);
        TextDrawSetProportional(wTuning1[17], 1);
        TextDrawSetShadow(wTuning1[17], 0);
        TextDrawUseBox(wTuning1[17], 1);
        TextDrawBoxColor(wTuning1[17], 0);
        TextDrawTextSize(wTuning1[17], 171.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[17], 0);

        wTuning1[18] = TextDrawCreate(88.000000, 233.000000, "Blue_____________________");
        TextDrawBackgroundColor(wTuning1[18], 255);
        TextDrawFont(wTuning1[18], 2);
        TextDrawLetterSize(wTuning1[18], 0.300000, 1.000000);
        TextDrawColor(wTuning1[18], -1);
        TextDrawSetOutline(wTuning1[18], 0);
        TextDrawSetProportional(wTuning1[18], 1);
        TextDrawSetShadow(wTuning1[18], 0);
        TextDrawUseBox(wTuning1[18], 1);
        TextDrawBoxColor(wTuning1[18], 0);
        TextDrawTextSize(wTuning1[18], 170.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[18], 0);

        wTuning1[19] = TextDrawCreate(87.000000, 254.000000, "Yellow________________");
        TextDrawBackgroundColor(wTuning1[19], 255);
        TextDrawFont(wTuning1[19], 2);
        TextDrawLetterSize(wTuning1[19], 0.300000, 1.000000);
        TextDrawColor(wTuning1[19], -1);
        TextDrawSetOutline(wTuning1[19], 0);
        TextDrawSetProportional(wTuning1[19], 1);
        TextDrawSetShadow(wTuning1[19], 0);
        TextDrawUseBox(wTuning1[19], 1);
        TextDrawBoxColor(wTuning1[19], 0);
        TextDrawTextSize(wTuning1[19], 180.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[19], 0);

        wTuning1[20] = TextDrawCreate(87.000000, 275.000000, "gray_____________________");
        TextDrawBackgroundColor(wTuning1[20], 255);
        TextDrawFont(wTuning1[20], 2);
        TextDrawLetterSize(wTuning1[20], 0.300000, 1.000000);
        TextDrawColor(wTuning1[20], -1);
        TextDrawSetOutline(wTuning1[20], 0);
        TextDrawSetProportional(wTuning1[20], 1);
        TextDrawSetShadow(wTuning1[20], 0);
        TextDrawUseBox(wTuning1[20], 1);
        TextDrawBoxColor(wTuning1[20], 0);
        TextDrawTextSize(wTuning1[20], 229.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[20], 0);

        wTuning1[21] = TextDrawCreate(87.000000, 293.000000, "Pink_____________________");
        TextDrawBackgroundColor(wTuning1[21], 255);
        TextDrawFont(wTuning1[21], 2);
        TextDrawLetterSize(wTuning1[21], 0.300000, 1.000000);
        TextDrawColor(wTuning1[21], -1);
        TextDrawSetOutline(wTuning1[21], 0);
        TextDrawSetProportional(wTuning1[21], 1);
        TextDrawSetShadow(wTuning1[21], 0);
        TextDrawUseBox(wTuning1[21], 1);
        TextDrawBoxColor(wTuning1[21], 0);
        TextDrawTextSize(wTuning1[21], 170.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[21], 0);

        wTuning1[22] = TextDrawCreate(87.000000, 312.000000, "Orange________________");
        TextDrawBackgroundColor(wTuning1[22], 255);
        TextDrawFont(wTuning1[22], 2);
        TextDrawLetterSize(wTuning1[22], 0.300000, 1.000000);
        TextDrawColor(wTuning1[22], -1);
        TextDrawSetOutline(wTuning1[22], 0);
        TextDrawSetProportional(wTuning1[22], 1);
        TextDrawSetShadow(wTuning1[22], 0);
        TextDrawUseBox(wTuning1[22], 1);
        TextDrawBoxColor(wTuning1[22], 0);
        TextDrawTextSize(wTuning1[22], 170.000000, 10.000000);
        TextDrawSetSelectable(wTuning1[22], 0);
        //------------------------------------------------------------------------------
        //
        //
        //------------------------------------------------------------------------------
        wTuning2[0] = TextDrawCreate(88.000000, 149.000000, "shadow________________");
        TextDrawBackgroundColor(wTuning2[0], 255);
        TextDrawFont(wTuning2[0], 2);
        TextDrawLetterSize(wTuning2[0], 0.300000, 1.000000);
        TextDrawColor(wTuning2[0], -1);
        TextDrawSetOutline(wTuning2[0], 0);
        TextDrawSetProportional(wTuning2[0], 1);
        TextDrawSetShadow(wTuning2[0], 0);
        TextDrawUseBox(wTuning2[0], 1);
        TextDrawBoxColor(wTuning2[0], 0);
        TextDrawTextSize(wTuning2[0], 190.000000, 10.000000);
        TextDrawSetSelectable(wTuning2[0], 0);

        wTuning2[1] = TextDrawCreate(88.000000, 168.000000, "mega_____________________");
        TextDrawBackgroundColor(wTuning2[1], 255);
        TextDrawFont(wTuning2[1], 2);
        TextDrawLetterSize(wTuning2[1], 0.300000, 1.000000);
        TextDrawColor(wTuning2[1], -1);
        TextDrawSetOutline(wTuning2[1], 0);
        TextDrawSetProportional(wTuning2[1], 1);
        TextDrawSetShadow(wTuning2[1], 0);
        TextDrawUseBox(wTuning2[1], 1);
        TextDrawBoxColor(wTuning2[1], 0);
        TextDrawTextSize(wTuning2[1], 170.000000, 10.000000);
        TextDrawSetSelectable(wTuning2[1], 0);

        wTuning2[2] = TextDrawCreate(88.000000, 190.000000, "rimshine_____________");
        TextDrawBackgroundColor(wTuning2[2], 255);
        TextDrawFont(wTuning2[2], 2);
        TextDrawLetterSize(wTuning2[2], 0.300000, 1.000000);
        TextDrawColor(wTuning2[2], -1);
        TextDrawSetOutline(wTuning2[2], 0);
        TextDrawSetProportional(wTuning2[2], 1);
        TextDrawSetShadow(wTuning2[2], 0);
        TextDrawUseBox(wTuning2[2], 1);
        TextDrawBoxColor(wTuning2[2], 0);
        TextDrawTextSize(wTuning2[2], 171.000000, 10.000000);
        TextDrawSetSelectable(wTuning2[2], 0);

        wTuning2[3] = TextDrawCreate(88.000000, 213.000000, "Wires___________________");
        TextDrawBackgroundColor(wTuning2[3], 255);
        TextDrawFont(wTuning2[3], 2);
        TextDrawLetterSize(wTuning2[3], 0.300000, 1.000000);
        TextDrawColor(wTuning2[3], -1);
        TextDrawSetOutline(wTuning2[3], 0);
        TextDrawSetProportional(wTuning2[3], 1);
        TextDrawSetShadow(wTuning2[3], 0);
        TextDrawUseBox(wTuning2[3], 1);
        TextDrawBoxColor(wTuning2[3], 0);
        TextDrawTextSize(wTuning2[3], 171.000000, 10.000000);
        TextDrawSetSelectable(wTuning2[3], 0);

        wTuning2[4] = TextDrawCreate(88.000000, 233.000000, "classic________________");
        TextDrawBackgroundColor(wTuning2[4], 255);
        TextDrawFont(wTuning2[4], 2);
        TextDrawLetterSize(wTuning2[4], 0.300000, 1.000000);
        TextDrawColor(wTuning2[4], -1);
        TextDrawSetOutline(wTuning2[4], 0);
        TextDrawSetProportional(wTuning2[4], 1);
        TextDrawSetShadow(wTuning2[4], 0);
        TextDrawUseBox(wTuning2[4], 1);
        TextDrawBoxColor(wTuning2[4], 0);
        TextDrawTextSize(wTuning2[4], 170.000000, 10.000000);
        TextDrawSetSelectable(wTuning2[4], 0);

        wTuning2[5] = TextDrawCreate(87.000000, 254.000000, "twist____________________");
        TextDrawBackgroundColor(wTuning2[5], 255);
        TextDrawFont(wTuning2[5], 2);
        TextDrawLetterSize(wTuning2[5], 0.300000, 1.000000);
        TextDrawColor(wTuning2[5], -1);
        TextDrawSetOutline(wTuning2[5], 0);
        TextDrawSetProportional(wTuning2[5], 1);
        TextDrawSetShadow(wTuning2[5], 0);
        TextDrawUseBox(wTuning2[5], 1);
        TextDrawBoxColor(wTuning2[5], 0);
        TextDrawTextSize(wTuning2[5], 180.000000, 10.000000);
        TextDrawSetSelectable(wTuning2[5], 0);

        wTuning2[6] = TextDrawCreate(87.000000, 275.000000, "cutter_________________");
        TextDrawBackgroundColor(wTuning2[6], 255);
        TextDrawFont(wTuning2[6], 2);
        TextDrawLetterSize(wTuning2[6], 0.300000, 1.000000);
        TextDrawColor(wTuning2[6], -1);
        TextDrawSetOutline(wTuning2[6], 0);
        TextDrawSetProportional(wTuning2[6], 1);
        TextDrawSetShadow(wTuning2[6], 0);
        TextDrawUseBox(wTuning2[6], 1);
        TextDrawBoxColor(wTuning2[6], 0);
        TextDrawTextSize(wTuning2[6], 180.000000, 10.000000);
        TextDrawSetSelectable(wTuning2[6], 0);

        wTuning2[7] = TextDrawCreate(87.000000, 293.000000, "Dollar_________________");
        TextDrawBackgroundColor(wTuning2[7], 255);
        TextDrawFont(wTuning2[7], 2);
        TextDrawLetterSize(wTuning2[7], 0.300000, 1.000000);
        TextDrawColor(wTuning2[7], -1);
        TextDrawSetOutline(wTuning2[7], 0);
        TextDrawSetProportional(wTuning2[7], 1);
        TextDrawSetShadow(wTuning2[7], 0);
        TextDrawUseBox(wTuning2[7], 1);
        TextDrawBoxColor(wTuning2[7], 0);
        TextDrawTextSize(wTuning2[7], 170.000000, 10.000000);
        TextDrawSetSelectable(wTuning2[7], 0);

        wTuning2[8] = TextDrawCreate(87.000000, 312.000000, "Atomic__________________");
        TextDrawBackgroundColor(wTuning2[8], 255);
        TextDrawFont(wTuning2[8], 2);
        TextDrawLetterSize(wTuning2[8], 0.300000, 1.000000);
        TextDrawColor(wTuning2[8], -1);
        TextDrawSetOutline(wTuning2[8], 0);
        TextDrawSetProportional(wTuning2[8], 1);
        TextDrawSetShadow(wTuning2[8], 0);
        TextDrawUseBox(wTuning2[8], 1);
        TextDrawBoxColor(wTuning2[8], 0);
        TextDrawTextSize(wTuning2[8], 170.000000, 10.000000);
        TextDrawSetSelectable(wTuning2[8], 0);
        //------------------------------------------------------------------------------
        //
        //
        //------------------------------------------------------------------------------
        wTuning3[0] = TextDrawCreate(88.000000, 149.000000, "Blue");
        TextDrawBackgroundColor(wTuning3[0], 255);
        TextDrawFont(wTuning3[0], 2);
        TextDrawLetterSize(wTuning3[0], 0.300000, 1.000000);
        TextDrawColor(wTuning3[0], -1);
        TextDrawSetOutline(wTuning3[0], 0);
        TextDrawSetProportional(wTuning3[0], 1);
        TextDrawSetShadow(wTuning3[0], 0);
        TextDrawUseBox(wTuning3[0], 1);
        TextDrawBoxColor(wTuning3[0], 0);
        TextDrawTextSize(wTuning3[0], 190.000000, 10.000000);
        TextDrawSetSelectable(wTuning3[0], 0);

        wTuning3[1] = TextDrawCreate(88.000000, 168.000000, "Yellow");
        TextDrawBackgroundColor(wTuning3[1], 255);
        TextDrawFont(wTuning3[1], 2);
        TextDrawLetterSize(wTuning3[1], 0.300000, 1.000000);
        TextDrawColor(wTuning3[1], -1);
        TextDrawSetOutline(wTuning3[1], 0);
        TextDrawSetProportional(wTuning3[1], 1);
        TextDrawSetShadow(wTuning3[1], 0);
        TextDrawUseBox(wTuning3[1], 1);
        TextDrawBoxColor(wTuning3[1], 0);
        TextDrawTextSize(wTuning3[1], 170.000000, 10.000000);
        TextDrawSetSelectable(wTuning3[1], 0);

        wTuning3[2] = TextDrawCreate(88.000000, 190.000000, "White");
        TextDrawBackgroundColor(wTuning3[2], 255);
        TextDrawFont(wTuning3[2], 2);
        TextDrawLetterSize(wTuning3[2], 0.300000, 1.000000);
        TextDrawColor(wTuning3[2], -1);
        TextDrawSetOutline(wTuning3[2], 0);
        TextDrawSetProportional(wTuning3[2], 1);
        TextDrawSetShadow(wTuning3[2], 0);
        TextDrawUseBox(wTuning3[2], 1);
        TextDrawBoxColor(wTuning3[2], 0);
        TextDrawTextSize(wTuning3[2], 171.000000, 10.000000);
        TextDrawSetSelectable(wTuning3[2], 0);

        wTuning3[3] = TextDrawCreate(88.000000, 213.000000, "Pink");
        TextDrawBackgroundColor(wTuning3[3], 255);
        TextDrawFont(wTuning3[3], 2);
        TextDrawLetterSize(wTuning3[3], 0.300000, 1.000000);
        TextDrawColor(wTuning3[3], -1);
        TextDrawSetOutline(wTuning3[3], 0);
        TextDrawSetProportional(wTuning3[3], 1);
        TextDrawSetShadow(wTuning3[3], 0);
        TextDrawUseBox(wTuning3[3], 1);
        TextDrawBoxColor(wTuning3[3], 0);
        TextDrawTextSize(wTuning3[3], 171.000000, 10.000000);
        TextDrawSetSelectable(wTuning3[3], 0);

        wTuning3[4] = TextDrawCreate(88.000000, 233.000000, "green");
        TextDrawBackgroundColor(wTuning3[4], 255);
        TextDrawFont(wTuning3[4], 2);
        TextDrawLetterSize(wTuning3[4], 0.300000, 1.000000);
        TextDrawColor(wTuning3[4], -1);
        TextDrawSetOutline(wTuning3[4], 0);
        TextDrawSetProportional(wTuning3[4], 1);
        TextDrawSetShadow(wTuning3[4], 0);
        TextDrawUseBox(wTuning3[4], 1);
        TextDrawBoxColor(wTuning3[4], 0);
        TextDrawTextSize(wTuning3[4], 170.000000, 10.000000);
        TextDrawSetSelectable(wTuning3[4], 0);

        wTuning3[5] = TextDrawCreate(88.000000, 252.000000, "remove_neon");
        TextDrawBackgroundColor(wTuning3[5], 255);
        TextDrawFont(wTuning3[5], 2);
        TextDrawLetterSize(wTuning3[5], 0.300000, 1.000000);
        TextDrawColor(wTuning3[5], -1);
        TextDrawSetOutline(wTuning3[5], 0);
        TextDrawSetProportional(wTuning3[5], 1);
        TextDrawSetShadow(wTuning3[5], 0);
        TextDrawUseBox(wTuning3[5], 1);
        TextDrawBoxColor(wTuning3[5], 0);
        TextDrawTextSize(wTuning3[5], 170.000000, 10.000000);
        TextDrawSetSelectable(wTuning3[5], 0);
        //------------------------------------------------------------------------------
        //
        //
        //------------------------------------------------------------------------------
        wTuning4[0] = TextDrawCreate(88.000000, 149.000000, "PAINTJOB_1");
        TextDrawBackgroundColor(wTuning4[0], 255);
        TextDrawFont(wTuning4[0], 2);
        TextDrawLetterSize(wTuning4[0], 0.300000, 1.000000);
        TextDrawColor(wTuning4[0], -1);
        TextDrawSetOutline(wTuning4[0], 0);
        TextDrawSetProportional(wTuning4[0], 1);
        TextDrawSetShadow(wTuning4[0], 0);
        TextDrawUseBox(wTuning4[0], 1);
        TextDrawBoxColor(wTuning4[0], 0);
        TextDrawTextSize(wTuning4[0], 190.000000, 10.000000);
        TextDrawSetSelectable(wTuning4[0], 0);

        wTuning4[1] = TextDrawCreate(88.000000, 168.000000, "PaintJob_2");
        TextDrawBackgroundColor(wTuning4[1], 255);
        TextDrawFont(wTuning4[1], 2);
        TextDrawLetterSize(wTuning4[1], 0.300000, 1.000000);
        TextDrawColor(wTuning4[1], -1);
        TextDrawSetOutline(wTuning4[1], 0);
        TextDrawSetProportional(wTuning4[1], 1);
        TextDrawSetShadow(wTuning4[1], 0);
        TextDrawUseBox(wTuning4[1], 1);
        TextDrawBoxColor(wTuning4[1], 0);
        TextDrawTextSize(wTuning4[1], 170.000000, 10.000000);
        TextDrawSetSelectable(wTuning4[1], 0);

        wTuning4[2] = TextDrawCreate(88.000000, 190.000000, "PaintJob_3");
        TextDrawBackgroundColor(wTuning4[2], 255);
        TextDrawFont(wTuning4[2], 2);
        TextDrawLetterSize(wTuning4[2], 0.300000, 1.000000);
        TextDrawColor(wTuning4[2], -1);
        TextDrawSetOutline(wTuning4[2], 0);
        TextDrawSetProportional(wTuning4[2], 1);
        TextDrawSetShadow(wTuning4[2], 0);
        TextDrawUseBox(wTuning4[2], 1);
        TextDrawBoxColor(wTuning4[2], 0);
        TextDrawTextSize(wTuning4[2], 171.000000, 10.000000);
        TextDrawSetSelectable(wTuning4[2], 0);
        //------------------------------------------------------------------------------
        //
        //
        //------------------------------------------------------------------------------
        wTuning5[0] = TextDrawCreate(88.000000, 149.000000, "Nitro 2X");
        TextDrawBackgroundColor(wTuning5[0], 255);
        TextDrawFont(wTuning5[0], 2);
        TextDrawLetterSize(wTuning5[0], 0.300000, 1.000000);
        TextDrawColor(wTuning5[0], -1);
        TextDrawSetOutline(wTuning5[0], 0);
        TextDrawSetProportional(wTuning5[0], 1);
        TextDrawSetShadow(wTuning5[0], 0);
        TextDrawUseBox(wTuning5[0], 1);
        TextDrawBoxColor(wTuning5[0], 0);
        TextDrawTextSize(wTuning5[0], 190.000000, 10.000000);
        TextDrawSetSelectable(wTuning5[0], 0);

        wTuning5[1] = TextDrawCreate(88.000000, 169.000000, "NITRo 5x");
        TextDrawBackgroundColor(wTuning5[1], 255);
        TextDrawFont(wTuning5[1], 2);
        TextDrawLetterSize(wTuning5[1], 0.300000, 1.000000);
        TextDrawColor(wTuning5[1], -1);
        TextDrawSetOutline(wTuning5[1], 0);
        TextDrawSetProportional(wTuning5[1], 1);
        TextDrawSetShadow(wTuning5[1], 0);
        TextDrawUseBox(wTuning5[1], 1);
        TextDrawBoxColor(wTuning5[1], 0);
        TextDrawTextSize(wTuning5[1], 170.000000, 10.000000);
        TextDrawSetSelectable(wTuning5[1], 0);

        wTuning5[2] = TextDrawCreate(88.000000, 190.000000, "nitro 10x");
        TextDrawBackgroundColor(wTuning5[2], 255);
        TextDrawFont(wTuning5[2], 2);
        TextDrawLetterSize(wTuning5[2], 0.300000, 1.000000);
        TextDrawColor(wTuning5[2], -1);
        TextDrawSetOutline(wTuning5[2], 0);
        TextDrawSetProportional(wTuning5[2], 1);
        TextDrawSetShadow(wTuning5[2], 0);
        TextDrawUseBox(wTuning5[2], 1);
        TextDrawBoxColor(wTuning5[2], 0);
        TextDrawTextSize(wTuning5[2], 171.000000, 10.000000);
        TextDrawSetSelectable(wTuning5[2], 0);


        for(new i = 5; i < sizeof(wTuning1); i++) { TextDrawSetSelectable(Text:wTuning1[i], true); }
        for(new i = 0; i < sizeof(wTuning2); i++) { TextDrawSetSelectable(Text:wTuning2[i], true); }
        for(new i = 0; i < sizeof(wTuning3); i++) { TextDrawSetSelectable(Text:wTuning3[i], true); }
        for(new i = 0; i < sizeof(wTuning4); i++) { TextDrawSetSelectable(Text:wTuning4[i], true); }
        for(new i = 0; i < sizeof(wTuning5); i++) { TextDrawSetSelectable(Text:wTuning5[i], true); }
        return 1;
}


public OnPlayerClickTextDraw(playerid, Text:clickedid)
{


        new wVeiculo; wVeiculo = GetPlayerVehicleID(playerid);
        if(clickedid == wTuning1[6]) // X CLOSE
        {
                for(new i = 0; i < sizeof(wTuning1); i++) { TextDrawHideForPlayer(playerid, wTuning1[i]); }
                for(new i = 0; i < sizeof(wTuning2); i++)       { TextDrawHideForPlayer(playerid, wTuning2[i]); }
                for(new i = 0; i < sizeof(wTuning3); i++) { TextDrawHideForPlayer(playerid, wTuning3[i]); }
                for(new i = 0; i < sizeof(wTuning4); i++) { TextDrawHideForPlayer(playerid, wTuning4[i]); }
                for(new i = 0; i < sizeof(wTuning5); i++)       { TextDrawHideForPlayer(playerid, wTuning5[i]); }
                CancelSelectTextDraw(playerid);
        }

        if(clickedid == wTuning1[7]) //WHEELS
        {

                for(new i = 14; i < sizeof(wTuning1); i++) { TextDrawHideForPlayer(playerid, wTuning1[i]); }
                for(new i = 0; i < sizeof(wTuning2); i++)       { TextDrawHideForPlayer(playerid, wTuning2[i]); }
                for(new i = 0; i < sizeof(wTuning3); i++) { TextDrawHideForPlayer(playerid, wTuning3[i]); }
                for(new i = 0; i < sizeof(wTuning4); i++) { TextDrawHideForPlayer(playerid, wTuning4[i]); }
                for(new i = 0; i < sizeof(wTuning5); i++)       { TextDrawHideForPlayer(playerid, wTuning5[i]); }

                for(new i = 0; i < sizeof(wTuning2); i++) { TextDrawShowForPlayer(playerid, wTuning2[i]); }
        }
        if(clickedid == wTuning1[8]) // COLOR
        {

                for(new i = 14; i < sizeof(wTuning1); i++) { TextDrawHideForPlayer(playerid, wTuning1[i]); }
                for(new i = 0; i < sizeof(wTuning2); i++)       { TextDrawHideForPlayer(playerid, wTuning2[i]); }
                for(new i = 0; i < sizeof(wTuning3); i++) { TextDrawHideForPlayer(playerid, wTuning3[i]); }
                for(new i = 0; i < sizeof(wTuning4); i++) { TextDrawHideForPlayer(playerid, wTuning4[i]); }
                for(new i = 0; i < sizeof(wTuning5); i++) { TextDrawHideForPlayer(playerid, wTuning5[i]); }

                for(new i = 11; i < sizeof(wTuning1); i++) { TextDrawShowForPlayer(playerid, wTuning1[i]); }
        }
        if(clickedid == wTuning1[9]) // PAINTJOBS
        {

                for(new i = 14; i < sizeof(wTuning1); i++) { TextDrawHideForPlayer(playerid, wTuning1[i]); }
                for(new i = 0; i < sizeof(wTuning2); i++)       { TextDrawHideForPlayer(playerid, wTuning2[i]); }
                for(new i = 0; i < sizeof(wTuning3); i++) { TextDrawHideForPlayer(playerid, wTuning3[i]); }
                for(new i = 0; i < sizeof(wTuning5); i++) { TextDrawHideForPlayer(playerid, wTuning5[i]); }

                for(new i = 0; i < sizeof(wTuning4); i++) { TextDrawShowForPlayer(playerid, wTuning4[i]); }
        }
        if(clickedid == wTuning1[10]) // NITRO
        {

                for(new i = 14; i < sizeof(wTuning1); i++) { TextDrawHideForPlayer(playerid, wTuning1[i]); }
                for(new i = 0; i < sizeof(wTuning2); i++)       { TextDrawHideForPlayer(playerid, wTuning2[i]); }
                for(new i = 0; i < sizeof(wTuning3); i++) { TextDrawHideForPlayer(playerid, wTuning3[i]); }
                for(new i = 0; i < sizeof(wTuning4); i++) { TextDrawHideForPlayer(playerid, wTuning4[i]); }

                for(new i = 0; i < sizeof(wTuning5); i++) { TextDrawShowForPlayer(playerid, wTuning5[i]); }
        }
        if(clickedid == wTuning1[11]) // HYDRAULICS
        {
                AddVehicleComponent(wVeiculo,1087);
        }
        if(clickedid == wTuning1[12]) //NEON
        {

                for(new i = 14; i < sizeof(wTuning1); i++) { TextDrawHideForPlayer(playerid, wTuning1[i]); }
                for(new i = 0; i < sizeof(wTuning2); i++)       { TextDrawHideForPlayer(playerid, wTuning2[i]); }
                for(new i = 0; i < sizeof(wTuning4); i++) { TextDrawHideForPlayer(playerid, wTuning4[i]); }
                for(new i = 0; i < sizeof(wTuning5); i++) { TextDrawHideForPlayer(playerid, wTuning5[i]); }

                for(new i = 0; i < sizeof(wTuning3); i++) { TextDrawShowForPlayer(playerid, wTuning3[i]); }
        }
        if(clickedid == wTuning1[13]) //AUTO TUNING
        {
                if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 483)
                {

                        AddVehicleComponent(wVeiculo,1027);
                        ChangeVehiclePaintjob(wVeiculo, 0);
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1087);
                }
                if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 562)
                {
                        AddVehicleComponent(wVeiculo,1046);
                        AddVehicleComponent(wVeiculo,1171);
                        AddVehicleComponent(wVeiculo,1149);
                        AddVehicleComponent(wVeiculo,1035);
                        AddVehicleComponent(wVeiculo,1147);
                        AddVehicleComponent(wVeiculo,1036);
                        AddVehicleComponent(wVeiculo,1040);
                        ChangeVehiclePaintjob(wVeiculo, 2);
                        ChangeVehicleColor(wVeiculo, 6, 6);
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1087);
                }
                if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 560)
                {
                        AddVehicleComponent(wVeiculo,1028);
                        AddVehicleComponent(wVeiculo,1169);
                        AddVehicleComponent(wVeiculo,1141);
                        AddVehicleComponent(wVeiculo,1032);
                        AddVehicleComponent(wVeiculo,1138);
                        AddVehicleComponent(wVeiculo,1026);
                        AddVehicleComponent(wVeiculo,1027);
                        ChangeVehiclePaintjob(wVeiculo, 2);
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1087);
                }
                if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 565)
                {


                        AddVehicleComponent(wVeiculo,1046);
                        AddVehicleComponent(wVeiculo,1153);
                        AddVehicleComponent(wVeiculo,1150);
                        AddVehicleComponent(wVeiculo,1054);
                        AddVehicleComponent(wVeiculo,1049);
                        AddVehicleComponent(wVeiculo,1047);
                        AddVehicleComponent(wVeiculo,1051);
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1087);
                        ChangeVehiclePaintjob(wVeiculo, 2);
                }
                if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 559)
                {

                        AddVehicleComponent(wVeiculo,1065);
                        AddVehicleComponent(wVeiculo,1160);
                        AddVehicleComponent(wVeiculo,1159);
                        AddVehicleComponent(wVeiculo,1067);
                        AddVehicleComponent(wVeiculo,1162);
                        AddVehicleComponent(wVeiculo,1069);
                        AddVehicleComponent(wVeiculo,1071);
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1087);
                        ChangeVehiclePaintjob(wVeiculo, 1);
                }
                if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 561)
                {

                        AddVehicleComponent(wVeiculo,1064);
                        AddVehicleComponent(wVeiculo,1155);
                        AddVehicleComponent(wVeiculo,1154);
                        AddVehicleComponent(wVeiculo,1055);
                        AddVehicleComponent(wVeiculo,1158);
                        AddVehicleComponent(wVeiculo,1056);
                        AddVehicleComponent(wVeiculo,1062);
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1087);
                        ChangeVehiclePaintjob(wVeiculo, 2);
                }
                if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 558)
                {
                        AddVehicleComponent(wVeiculo,1089);
                        AddVehicleComponent(wVeiculo,1166);
                        AddVehicleComponent(wVeiculo,1168);
                        AddVehicleComponent(wVeiculo,1088);
                        AddVehicleComponent(wVeiculo,1164);
                        AddVehicleComponent(wVeiculo,1090);
                        AddVehicleComponent(wVeiculo,1094);
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1087);
                        ChangeVehiclePaintjob(wVeiculo, 2);
                }
                if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 575)
                {
                        AddVehicleComponent(wVeiculo,1044);
                        AddVehicleComponent(wVeiculo,1174);
                        AddVehicleComponent(wVeiculo,1176);
                        AddVehicleComponent(wVeiculo,1042);
                        AddVehicleComponent(wVeiculo,1099);
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1087);
                        ChangeVehiclePaintjob(wVeiculo, 0);
                }
                if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 534)
                {
                        AddVehicleComponent(wVeiculo,1126);
                        AddVehicleComponent(wVeiculo,1179);
                        AddVehicleComponent(wVeiculo,1180);
                        AddVehicleComponent(wVeiculo,1122);
                        AddVehicleComponent(wVeiculo,1101);
                        AddVehicleComponent(wVeiculo,1125);
                        AddVehicleComponent(wVeiculo,1123);
                        AddVehicleComponent(wVeiculo,1100);
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1087);
                        ChangeVehiclePaintjob(wVeiculo, 2);
                }
                if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 536)
                {
                        AddVehicleComponent(wVeiculo,1104);
                        AddVehicleComponent(wVeiculo,1182);
                        AddVehicleComponent(wVeiculo,1184);
                        AddVehicleComponent(wVeiculo,1108);
                        AddVehicleComponent(wVeiculo,1107);
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1087);
                        ChangeVehiclePaintjob(wVeiculo, 1);
                }
                if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 567)
                {
                        AddVehicleComponent(wVeiculo,1129);
                        AddVehicleComponent(wVeiculo,1189);
                        AddVehicleComponent(wVeiculo,1187);
                        AddVehicleComponent(wVeiculo,1102);
                        AddVehicleComponent(wVeiculo,1133);
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1087);
                        ChangeVehiclePaintjob(wVeiculo, 2);
                }
                if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 420)
                {
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1087);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1139);
                }
                if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 400)
                {
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1087);
                        AddVehicleComponent(wVeiculo,1018);
                        AddVehicleComponent(wVeiculo,1013);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1086);
                }
                if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 401)
                {
                        AddVehicleComponent(wVeiculo,1086);
                        AddVehicleComponent(wVeiculo,1139);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1087);
                        AddVehicleComponent(wVeiculo,1012);
                        AddVehicleComponent(wVeiculo,1013);
                        AddVehicleComponent(wVeiculo,1042);
                        AddVehicleComponent(wVeiculo,1043);
                        AddVehicleComponent(wVeiculo,1018);
                        AddVehicleComponent(wVeiculo,1006);
                        AddVehicleComponent(wVeiculo,1007);
                        AddVehicleComponent(wVeiculo,1017);
                }
                if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 576)
                {
                        ChangeVehiclePaintjob(wVeiculo,2);
                        AddVehicleComponent(wVeiculo,1191);
                        AddVehicleComponent(wVeiculo,1193);
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1018);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1087);
                        AddVehicleComponent(wVeiculo,1134);
                        AddVehicleComponent(wVeiculo,1137);
                }
                else
                {
                        AddVehicleComponent(wVeiculo,1010);
                        AddVehicleComponent(wVeiculo,1079);
                        AddVehicleComponent(wVeiculo,1087);
                }
                return 1;
        }
        if(clickedid == wTuning2[0]){ // SHADOW
                AddVehicleComponent(wVeiculo,1073);
                return 1;
        }
        if(clickedid == wTuning2[1]){ // MEGA
                AddVehicleComponent(wVeiculo, 1074);
                return 1;
        }
        if(clickedid == wTuning2[2]){  // RINSHIME
                AddVehicleComponent(wVeiculo,1075);
                return 1;
        }
        if(clickedid == wTuning2[3]){ // WIRES
                AddVehicleComponent(wVeiculo,1076);
                return 1;
        }
        if(clickedid == wTuning2[4]){ // CLASSIC
                AddVehicleComponent(wVeiculo,1077);
                return 1;
        }
        if(clickedid == wTuning2[5]){ // TWIST
                AddVehicleComponent(wVeiculo,1078);
                return 1;
        }
        if(clickedid == wTuning2[6]){ // CUTTER
                AddVehicleComponent(wVeiculo,1079);
                return 1;
        }
        if(clickedid == wTuning2[7]){ // DOLLAR
                AddVehicleComponent(wVeiculo,1083);
                return 1;
        }
        if(clickedid == wTuning2[8]){ // ATOMIC
                AddVehicleComponent(wVeiculo,1085);
                return 1;
        }

        if(clickedid == wTuning1[14]){ // BLACK
                ChangeVehicleColor(wVeiculo, 0, 0);
                return 1;
        }
        if(clickedid == wTuning1[15]){ // WHITE
                ChangeVehicleColor(wVeiculo, 1, 1);
                return 1;
        }
        if(clickedid == wTuning1[16]){ // GREEN
                ChangeVehicleColor(wVeiculo, 128, 128);
                return 1;
        }
        if(clickedid == wTuning1[17]){ // CYAN
                ChangeVehicleColor(wVeiculo, 135, 135);
                return 1;
        }
        if(clickedid == wTuning1[18]){ // BLUE
                ChangeVehicleColor(wVeiculo, 152, 152);
                return 1;
        }
        if(clickedid == wTuning1[19]){ // YELLOW
                ChangeVehicleColor(wVeiculo, 6, 6);
                return 1;
        }
        if(clickedid == wTuning1[20]){ // GRAY
                ChangeVehicleColor(wVeiculo, 252, 252);
                return 1;
        }
        if(clickedid == wTuning1[21]){ // PINK
                ChangeVehicleColor(wVeiculo, 146, 146);
                return 1;
        }
        if(clickedid == wTuning1[22]){ // ORANGE
                ChangeVehicleColor(wVeiculo, 219, 219);
                return 1;
        }
        if(clickedid == wTuning4[0]){ // PAINTJOBS 1
                ChangeVehiclePaintjob(wVeiculo, 0);
                return 1;
        }
        if(clickedid == wTuning4[1]){ // PAINTJOBS 2
                ChangeVehiclePaintjob(wVeiculo, 2);
                return 1;
        }
        if(clickedid == wTuning4[2]){ // PAINTJOBS 2
                ChangeVehiclePaintjob(wVeiculo, 3);
                return 1;
        }
        if(clickedid == wTuning5[0]){ // NITRO 1
                AddVehicleComponent(wVeiculo,1009);
                return 1;
        }
        if(clickedid == wTuning5[1]){ // NITRO 2
                AddVehicleComponent(wVeiculo,1008);
                return 1;
        }
        if(clickedid == wTuning5[2]){ // NITRO 3
                AddVehicleComponent(wVeiculo,1010);
                return 1;
        }

        if(clickedid == wTuning3[0]){
                SetPVarInt(playerid, "neon", 1);
                SetPVarInt(playerid, "blue", CreateObject(18648,0,0,0,0,0,0));
                SetPVarInt(playerid, "blue1", CreateObject(18648,0,0,0,0,0,0));
                AttachObjectToVehicle(GetPVarInt(playerid, "blue"), GetPlayerVehicleID(playerid), -0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
                AttachObjectToVehicle(GetPVarInt(playerid, "blue1"), GetPlayerVehicleID(playerid), 0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
                return 1;
        }

        if(clickedid == wTuning3[1]){
                SetPVarInt(playerid, "neon", 1);
                SetPVarInt(playerid, "yellow", CreateObject(18650,0,0,0,0,0,0));
                SetPVarInt(playerid, "yellow1", CreateObject(18650,0,0,0,0,0,0));
                AttachObjectToVehicle(GetPVarInt(playerid, "yellow"), GetPlayerVehicleID(playerid), -0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
                AttachObjectToVehicle(GetPVarInt(playerid, "yellow1"), GetPlayerVehicleID(playerid), 0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
                return 1;
        }
        if(clickedid == wTuning3[2]){
                SetPVarInt(playerid, "neon", 1);
                SetPVarInt(playerid, "white", CreateObject(18652,0,0,0,0,0,0));
                SetPVarInt(playerid, "white1", CreateObject(18652,0,0,0,0,0,0));
                AttachObjectToVehicle(GetPVarInt(playerid, "white"), GetPlayerVehicleID(playerid), -0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
                AttachObjectToVehicle(GetPVarInt(playerid, "white1"), GetPlayerVehicleID(playerid), 0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
                return 1;
        }
        if(clickedid == wTuning3[3]){
                SetPVarInt(playerid, "neon", 1);
                SetPVarInt(playerid, "pink", CreateObject(18651,0,0,0,0,0,0));
                SetPVarInt(playerid, "pink1", CreateObject(18651,0,0,0,0,0,0));
                AttachObjectToVehicle(GetPVarInt(playerid, "pink"), GetPlayerVehicleID(playerid), -0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
                AttachObjectToVehicle(GetPVarInt(playerid, "pink1"), GetPlayerVehicleID(playerid), 0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
                return 1;
        }
        if(clickedid == wTuning3[4]){
                SetPVarInt(playerid, "neon", 1);
                SetPVarInt(playerid, "green", CreateObject(18649,0,0,0,0,0,0));
                SetPVarInt(playerid, "green1", CreateObject(18649,0,0,0,0,0,0));
                AttachObjectToVehicle(GetPVarInt(playerid, "green"), GetPlayerVehicleID(playerid), -0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
                AttachObjectToVehicle(GetPVarInt(playerid, "green1"), GetPlayerVehicleID(playerid), 0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
                return 1;
        }
        if(clickedid == wTuning3[5]){
                DestroyObject(GetPVarInt(playerid, "blue"));
                DeletePVar(playerid, "neon");
                DestroyObject(GetPVarInt(playerid, "blue1"));
                DeletePVar(playerid, "neon");
                DestroyObject(GetPVarInt(playerid, "green"));
                DeletePVar(playerid, "neon");
                DestroyObject(GetPVarInt(playerid, "green1"));
                DeletePVar(playerid, "neon");
                DestroyObject(GetPVarInt(playerid, "yellow"));
                DeletePVar(playerid, "neon");
                DestroyObject(GetPVarInt(playerid, "yellow1"));
                DeletePVar(playerid, "neon");
                DestroyObject(GetPVarInt(playerid, "white"));
                DeletePVar(playerid, "neon");
                DestroyObject(GetPVarInt(playerid, "white1"));
                DeletePVar(playerid, "neon");
                DestroyObject(GetPVarInt(playerid, "pink"));
                DeletePVar(playerid, "neon");
                DestroyObject(GetPVarInt(playerid, "pink1"));
                DeletePVar(playerid, "neon");
                return 1;
        }
        if(clickedid == Text:INVALID_TEXT_DRAW)
        {


                for(new i = 0; i < sizeof(wTuning1); i++) { TextDrawHideForPlayer(playerid, wTuning1[i]); }
                for(new i = 0; i < sizeof(wTuning2); i++)       { TextDrawHideForPlayer(playerid, wTuning2[i]); }
                for(new i = 0; i < sizeof(wTuning3); i++) { TextDrawHideForPlayer(playerid, wTuning3[i]); }
                for(new i = 0; i < sizeof(wTuning4); i++) { TextDrawHideForPlayer(playerid, wTuning4[i]); }
                for(new i = 0; i < sizeof(wTuning5); i++)       { TextDrawHideForPlayer(playerid, wTuning5[i]); }
        }
        return 1;

}

CMD:nangcapxe(playerid, params[]){
        if(IsPlayerInAnyVehicle(playerid))
        {

                new ModelVehicle = GetVehicleModel(GetPlayerVehicleID(playerid));
                if(GetModel(ModelVehicle))
                return SendClientMessage(playerid, C_AVISO, "Veiculo não pode ser tunado");

                SelectTextDraw(playerid,0x708090FF);
                for(new i = 0; i < sizeof(wTuning1); i++){TextDrawShowForPlayer(playerid, wTuning1[i]);}

                SendClientMessage(playerid, C_AVISO, "Tuning system made by Sn4Ke •");

        }
        else
        {

                SendClientMessage(playerid, C_AVISO, "Tuning system made by Sn4Ke •");
        }
        return 1;
}



forward GetModel(Model);
public GetModel(Model)
{
        switch(Model){
                case 417, 425, 430, 432, 446, 447, 448, 452, 453, 454, 460, 461, 462, 463, 464, 465, 468, 469, 471, 472, 473, 476, 481, 484, 487, 488, 493, 497, 501, 509, 510, 511, 512, 513, 521, 522, 523, 548:
                return true;
        }
        return false;
}
