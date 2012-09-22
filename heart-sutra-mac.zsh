#!/bin/zsh
CSI="\x1b["

KYOU=( \
仏 0.85 説 0.65 摩 0.35 訶 0.65 般 0.75 若 0.75 波 0.65 羅 0.75 蜜 0.45 多 0.65 心 0.65 経 4.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 \
　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 \
観 0.65 自 0.35 在 0.55 菩 0.55 薩 1.25 行 0.35 深 0.65 般 0.55 若 0.55 波 0.35 羅 0.65 蜜 0.65 多 0.35 時 1.20 照 0.45 見 0.45 五 0.55 \
蘊 0.45 皆 0.35 空 1.15 度 0.55 一 0.25 切 0.35 苦 0.55 厄 1.00 舎 0.85 利 0.85 子 1.25 色 0.45 不 0.65 異 0.45 空 0.95 空 0.55 不 0.55 \
異 0.45 色 0.95 色 0.55 即 0.65 是 0.55 空 1.15 空 0.65 即 0.65 是 0.65 色 1.20 受 0.75 想 0.75 行 0.75 識 1.20 亦 0.65 復 0.65 如 0.65 \
是 0.95 舎 0.95 利 0.95 子 1.05 是 0.65 諸 0.55 法 0.55 空 0.65 相 1.00 不 0.45 生 0.65 不 0.45 滅 0.85 不 0.65 垢 0.65 不 0.65 浄 1.00 \
不 0.55 増 0.65 不 0.65 減 1.20 是 0.35 故 0.55 空 0.65 中 0.65 無 0.55 色 0.95 無 0.65 受 0.40 想 0.65 行 0.65 識 0.85 無 0.45 眼 0.65 \
耳 0.55 鼻 0.45 舌 0.55 身 0.55 意 1.00 無 0.40 色 0.65 声 0.40 香 0.50 味 0.40 触 0.50 法 1.20 無 0.65 眼 0.55 界 0.30 乃 0.30 至 0.70 \
無 0.45 意 0.30 識 0.50 界 1.30 無 0.65 無 0.60 明 0.40 亦 0.90 無 0.60 無 0.60 明 0.60 尽 1.10 乃 0.65 至 0.75 無 0.65 老 0.65 死 0.85 \
亦 0.45 無 0.80 老 0.55 死 0.60 尽 0.90 無 0.65 苦 0.40 集 0.70 滅 0.40 道 0.75 無 0.65 智 0.65 亦 0.65 無 0.65 得 1.20 以 0.80 無 0.65 \
所 0.45 得 0.45 故 0.95 菩 0.60 提 0.50 薩 0.50 埵 0.95 依 0.65 般 0.50 若 0.35 波 0.40 羅 0.40 蜜 0.30 多 0.35 故 1.20 心 0.65 無 0.45 \
罣 0.35 礙 0.80 無 0.35 罣 0.35 礙 0.35 故 0.95 無 0.35 有 0.35 恐 0.65 怖 0.90 遠 0.65 離 0.85 一 0.30 切 0.45 顛 0.45 倒 0.40 夢 0.45 \
想 0.90 究 0.65 竟 0.50 涅 0.35 槃 1.20 三 0.65 世 0.55 諸 0.45 仏 0.80 依 0.85 般 0.45 若 0.55 波 0.35 羅 0.55 蜜 0.35 多 0.30 故 1.40 \
得 0.55 阿 0.75 耨 0.80 多 0.45 羅 0.65 三 0.45 藐 0.50 三 0.40 菩 0.40 提 0.95 故 0.35 知 0.50 般 0.65 若 0.85 波 0.75 羅 0.45 蜜 0.30 \
多 1.00 是 0.55 大 0.35 神 0.35 呪 0.75 是 0.35 大 0.35 明 0.65 呪 0.85 是 0.35 無 0.25 上 0.35 呪 0.85 是 0.35 無 0.25 等 0.85 等 0.35 \
呪 1.20 能 0.25 除 0.30 一 0.30 切 0.35 苦 0.85 真 0.55 実 0.75 不 0.25 虚 1.55 故 0.35 説 0.45 般 0.45 若 0.50 波 0.35 羅 0.45 蜜 0.45 \
多 0.45 呪 0.95 即 0.45 説 0.75 呪 0.95 曰 1.75 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 \
　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 　 0.00 \
羯 0.65 諦 0.65 羯 0.55 諦 1.05 　 0.00 波 0.55 羅 0.70 羯 0.55 諦 1.05 　 0.00 波 0.30 羅 0.55 僧 0.90 羯 0.65 諦 1.40 　 0.00 　 0.00 \
菩 0.65 提 1.00 薩 0.35 婆 0.35 訶 1.45 　 0.00 般 0.65 若 1.55 心 0.65 経 1.65 )

PRONOUNCE=( 
"Boot oo oo sets oo mark ah a Han oo nia ah a haal oo laam oo me ee tar ah a sing oo oo giee EOOOOO...!!"
"Kan oo geez oo I bow sir art, Gyoh oo zeen oo han nia ah haa laa ah me ee tar gee ee."
"Show ken go woon oo kai cool, Dow oo is sai cool year cool."
"Shaah oo lee ee sea ee ee, Seeky ee foo oo E cool, Cool oo fool oo E seeky, Sicky E so cool oo zey cool oo oo, Cool oo oo so cool oo zey seeky E."
"Ju oo so oh giee oh seeky, Yah cool bboo oo Neo oh zey."
"Shaa oo lee ee sea ee ee. Zey show oo houl oo cool oo so oh, Fool oo show oo fool mets, Fool oo cool oo oo fool oo Joe oh, Fool oo zoo oh oo fool oo gan." 
"Zey cow cool oo chu oo, Moon seeky ee moon oo oo jue so oh giee oh seeky, Moon gan oo neat ee ee bee ee zetsu she in neat ee, Moon seeky ee show cow me ee ee so cool oo houl." 
"Moon gan kai night see E E mool E sicky caa I." 
"Moon ooh moon ooh miao yah cool moon ooh oo oo moon ooh miao oh geen."
"Night sea E E moo oo oo raw see, Yah cool mooh oo row see E E geen, Moon cool oo oo shoot mets doe oh, Moon cheet yah cool oo moo oo oo to cool oo."
"Eat E E moon oo show to cool cow, Bow oh dai sutt tar, AA han niaa haa laa meet tar cow."
"Sing moo oo kay gay, Moon kay gay koul, Moon oo ooh cool oo oo fool oo, O on lee E E is I oo oo ten doe moo oo so, Cool giee O oh ney han."
"Sun oo zey show boots, AA han niaa haa laa meet tar cow."
"To cool oo ah ah an no cool tar laa sun miack sun bow dai, Cow chee E han niaa ah ah han al la mee E E E tar."
"Zey dai geen shoe oo zey ee dai miao shoe, Zey moo oo Joe shoe, Zey moo oo touh oo doe shoe."
"No Joe issai cool, Sing oo geetsu fool cow."
"Cow sets han niaa haa laa meet tar shoe, So cool sets oo oo shoe oo oo war tsu."
"N Gaa ah tei Gaa ah tei, Haa ah laa ah Gaa ah tei, Haa a la ah so O oh Gaa ah tei."
"Bow oo oo gee E E so worker ah ah, Han oo n niaa ah ah ah sing gu EOOOOOO...!!"
 );

TRANSLATION=( 
"\x1b[1;36m                     THE PRAJNAAPAARAMITAA-HRIDAYA SUTRA\x1b[m\n
              \x1b[1;35mClassic Chinese Translation by Xuanzang (602-644)\n\
           English Translation by Daisetz Teitaro Suzuki (1870-1966)\x1b[m"
"\x1b#5    When the Bodhisattva Avalokitesvara was engaged\n\
\x1b#5    in the practice of the\n\
\x1b#5    deep Prajnaapaaramitaa,"
"     He perceived:\n\
       there are five Skandhas;\n\
       and these he saw in their self-nature to be empty." 
"     \"O Saariputra, form is here emptiness, emptiness is form;\n\
     form is no other than emptiness,\n\
     emptiness is no other than form;" 
"     What is form that is emptiness, what is emptiness that is form.\n\
     The same can be said of sensation, thought, confection,\n\
     and consciousness."
"     \"O Saariputra,\n\
     All things are here characterised with emptiness:\n\
       they are not born, they are not annihilated;\n\
       they are not tainted, they are not immaculate;\n\
       they do not increase, they do not decrease." 
"     Therefore, O Saariputra,\n\
     in emptiness there is no form, no sensation,\n\
     no thought, no confection, no consciousness;\n\
     no eye, ear, nose, tongue, body, mind;\n\
     no form, sound, colour, taste, touch, objects;" 
"     No Dhaatu of vision,\n\
     till we come to no Dhaatu of consciousness;" 
"     There is no knowledge, no ignorance," 
"     Will we come to there is no old age and death,\n\
     no extinction of old age and death;\n\
     there is no suffering, accumulation, annihilation, path;\n\
     there is no knowledge, no attainment,"
"     〔and〕 no realisation because there is no attainment.\n\
     In the mind of the Bodhisattva who dwells depending on the\n\
     Prajnaapaaramitaa there are no obstacles,"
"     And, going beyond the perverted views, he reaches final Nirvaana.\n\
     All the Buddhas of the past, present, and future,"
"    Depending on the Prajnaapaaramitaa,\n\
     attain to the highest perfect enlightenment."
"     Therefore, one ought to know that the Prajnaapaaramitaa is\n\
     the great Mantra,"
"     The Mantra of great wisdom, the the highest Mantra,\n\
     the peerless Mantra, which is capable of allaying all pain;."
"     It is truth because it is not falsehood:"
"    This is the Mantra proclaimed in the Prajnaapaaramitaa.  It runs:"
"     'Gate gate paaragate, paarasamgate, bodhi, svaahaa!'\n\
     (O Bodhi, gone, gone, gone to the other shore,\n\
     landed at the other shore, Svaahaa!)"
"     'Gate gate paaragate, paarasamgate, bodhi, svaahaa!'\n\
     (O Bodhi, gone, gone, gone to the other shore,\n\
     landed at the other shore, Svaahaa!)"
)

alive=true;
start_x=69;
start_y=2;
row=17;

#Gya-tei Gya-tei...
line=17;
start_index=613;
initial_timeout=1.2;

#Cow Sets Hannya...
line=16;
start_index=531;
initial_timeout=1.0;

#No Ju issai cool
line=15;
start_index=513;
initial_timeout=1.2;

#Zei Dai Jeen...
line=14;
start_index=479;
initial_timeout=0.8;

#To cool oo ah ah an no cool tar laa...
line=13;
start_index=443;
initial_timeout=0.8;

#Sun oo zey show boots...
line=12;
start_index=419;
initial_timeout=1.0;

#Sing moo oo kay gay..
line=11;
start_index=371;
initial_timeout=1.0;

#Eat E E moon oo show to cow...
line=10;
start_index=337;
initial_timeout=1.0;

#Night sea E E moo oo oo raw see...
line=9;
start_index=297;
initial_timeout=0.5;

#Moon ooh moon ooh miao yah cool...
line=8;
start_index=281;
initial_timeout=0.5;

#Moon gan kai night see...
line=7;
start_index=263;
initial_timeout=0.5;

#Zey cow cool oo chu oo... 
line=6;
start_index=213;
initial_timeout=0.5;

#Zey show oo houl oo cool oo so oh...
line=5;
start_index=179;
initial_timeout=0.5;

#Ju oo so oh giee oh seeky...
line=4;
start_index=157;
initial_timeout=0.5;

#Shaah oo lee ee sea ee ee...
line=3;
start_index=119;
initial_timeout=0.5;

#Show ken go woon oo kai cool...
line=2;
start_index=97;
initial_timeout=0.5;

#Kan oo geez oo I bow sir arts...
line=1;
start_index=69;
initial_timeout=0.5;

#"Mark ah a Han oo nia ah...
line=0;
start_index=1;
initial_timeout=0.0;


function chant
{
    trap cleanup 2;
    while ${alive}; do
        let line=line+1;
        statement="${PRONOUNCE[${line}]}";
        translation="${TRANSLATION[${line}]}";

        if [ -z ${statement} ]; then
            break;
        fi;
        printf "${CSI}20;1H${CSI}0J";
        if [ ${line} -eq 1 ] && [ $TERM_PROGRAM = "Apple_Terminal" ]; then
            printf "\x1b[1;36m\x1b#3  THE PRAJNAAPAARAMITAA-HRIDAYA SUTRA\n\x1b#4  THE PRAJNAAPAARAMITAA-HRIDAYA SUTRA\x1b[m\n\
               \x1b[1;35mClassic Chinese Translation by Xuanzang (602-644)\n\
           English Translation by Daisetz Teitaro Suzuki (1870-1966)\x1b[m"
        else
            printf "${translation}";
        fi
        echo ${statement} | say -vb;
    done;
}

function cleanup
{
    let alive=false
    #printf "${CSI}H${CSI}2J";
    printf "${CSI}?1049l";
    printf "${CSI}25h";
    printf "\x1b8";
    exit;
}

printf "\x1b7";
printf "${CSI}25l";
printf "${CSI}8;25;80t";
printf "${CSI}?1049h";
printf "${CSI}H${CSI}2J";
printf "${CSI}${start_y};${start_x}H";

i=1;
printf "${CSI}33m";
while true; do
    glyph=${KYOU[$i]};
    if [ -z "${glyph}" ]; then 
        break;
    fi
    x=$((${start_x}-$i/(${row}*2)*3));
    y=$(($i%(${row}*2)/2+${start_y}));
    printf "${CSI}${y};${x}H${glyph}";
    let i=i+2;
done
printf "${CSI}${start_y};${start_x}H";
printf "${CSI}m";

chant&

trap cleanup 2;

let i=${start_index};
timeout=${initial_timeout};
while true; do
    sleep ${timeout};
    glyph=${KYOU[$i]};
    if [ -z "${glyph}" ]; then 
        break;
    fi
    let timeout=${KYOU[$i+1]};
    x=$((${start_x}-$i/(${row}*2)*3));
    y=$(($i%(${row}*2)/2+${start_y}));
    printf "${CSI}${y};${x}H${glyph}";
    let i=i+2;
done
read -k -s;

cleanup;

