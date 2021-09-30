
randomize();

speed = 0.15;

alarm[0] = room_speed-38; // Start Shrinking
image_angle = irandom_range(0, 360);
direction   = irandom_range(0, 360);

/*
OOOOhL88bSl````,,,,,-'''0@@MMMMMMMMMqlcvv111177rrrs?ti}}}++++!""""""""!!!!!"""!"""""">>""">>>>>>"""!]DR
GOOOp8L$d8z`,,,,,,,,-:''0@@MMMMMMMMM$cvv117rrrrssrsssj?i}}}ii+!"">>>""""""">>>"">||||>||||||>>>>>>"!aDR
GGOOp$q0qqz,:::-----:'''0@@MMMMMMMMMLvvv177r7rrssrrssssj???i}}+!!!!">"""">>>>>>">>|||>||||||>>>"!!"!aDR
GGGOpwq0qqz,:':-,,,-::''0@@MMMMMMMMMbvvv77rr7ssrssla3elssjtiii++++++!>>"">>>>>>>>>>>|>||||||>>"|\'~+xDR
GOOOhqqqqdz:-,,,`,,,,,::0@@@MMMMMMM@Svv117rrrsssrextsl25axl?ti}++++++!!!++++++!!"">>>>||||||>>"`  `+nDR
GOOOh$d8SSz,````,,-,,-:'0@@MMMMMMM@@0nuxxnu2vss7u2++sIj++?zeel?tttttt}+++++}ii++!">|>>||||||>!>`   _CDR
GOOOhL8SCnc`````````,,,-0@@@MMMMMMMAn?+++ivey]I0yzt++rnj+++++laalj?tt+++++++++++!>>>>>|||||>"!, `` ^CMQ
OOOOhSSCCnc````````,,,,-p&@@@@@MOS7}++++++++++u]80z+++inv+++++2xla]v}+++!!!!!!+}+!>>>|||||>>+"_!+}}tnDR
OmmOUq$$dbl```````,,,,,:h&&@@@Nx}++++++++++++3nuAPI}+++tn?+++++2x+}2as++!!"""""!">>||__||>>>>|>>>""+nDQ
OOmmZqqdLSz,,,`,,,,,,--'ZW&@Ne!+++!+++jv}+++zwIgAApc++++vn++++++zI}++eyt">>>>>>>>>>|__|||>>>>|>>>>>!IMD
GOmmZq$wLbl`,,,,,,,,,-,'ZWXx">^!"~|+sebdx}+?8IUAq0Px++|>+33++++++y$?+!t5z!>>>>""">>||_||||||>||>>>!+IMD
GOmmUqqdd8z,,,,,,,,,--,\g0++}^^'\"iypNGP0x}n80Pq0ZNgt+"\>+Cl++>"++Iqs+it7y!>>>>>>>|_||||||||||||>"+}nMD
OmmmUqq$d8z,,,-,,-,,-:^vv!+^``,_+lSAGhAPPqIdbApAP00Gz++^\_+pc+"\^_"C$}invrx!>>||||||||||>||||||>>"!+nMD
OOmmg00qd8z,,,,,,,,,->t+e?^,`\+z8NNAhUAgOPknAPghgghUhr+>,,,z0c+>,`-^nx!^zz?n+>>||||___||||||||>>"!!+IMD
OOmmU00qd8l,,,,,,,,'+?1Cs!_\_1nAAUgAPA0k0hnaqS0kpkphNn}+^`,~CC7!_,``>Zl|'ezvn"|||||____|||||||||>""!uMD
OOmmU00qqwz,```,,,~z?lIi++!+30PpL8Ilv}+!">||>>!+rzenqA5+>,,,t0It!\,,,b8?^\ncly>||||_|__|||||||||||>>xMD
OOOOg0qqq$z,`````,]jcz++++?IkASnuv>____~~~~~~~~~~__>2qUz!^\|"awa}>\|"+k5!_!S+zz>|||_|__||||||||||||>xMM
GGGOU00q$wz,,,,,,+il2}+++jnUhIIz!____~~~~~~~~~~~~~~_>l00l!_"+iwS5+_>+!a01+>zn!Ij__||____|||___|||||>uMM
GGGO0b88SCl`````,s7xi+++iuU0Ixj|_~_~~~~~~~~~~~~~~~~_~>zhqc!"++50Cv!!++}0]++!qs}n"_||||||||||||||||>>IDQ
GGGG0CCCCCc`````'ln2++++ep0Iy}___~~~~~~~~~~~~~~~~~~~~~!3Uwc++++Cdns++++z0t++ax!z3||||>+>|||>>>>>>>>"IDQ
GGGG0CCCnnc`````_S0l+++500uz"__~~~~~~~~~~~~~~~~~~~~~__~"20Zz+++t$dns++++ua+++}+!uezz2L2>>>>>>>""""""nDQ
GGGG0SCCCnc`````\Cpvi+c8Anz>~___~~~~~~^^^^^^^^^^^~^^~~~~"zqAa}++r0LIt+++t8++++++++!vxl>>>"+tvxz"!!!!nQR
GGGG0SCCCCc``````xhzv+xAqy!~_+>_~~~~~~^^^^^^^^^^^~~~~~~~~>cCgC?++cp8x++++nc++++++inSzz22z232xqs>"""!CQR
GGGG0SSCCCc``````lPCev8Ans___!c2t|_~~~~~~~^^^^~^^~~~_~__~__}]00l++lpL2+++z3++++++++!+++++?3Iz!""""!!CQR
GGGGpdSCCCc``````'X0kx$A3"_____"znIzs!_~~~~^^^^^~~>}ce2l1+__!zLAut+lhbai++}+++++++++szenZPLzzaIwn}!!nQR
OOOOU0$SCCc``````|aAAhqgs~__~_____>cx8u>~~~^^~~+ndLn3j>_~~~~__}uUq7+7hwnl++++++++++++tc5In8p0hhn+!!!CQR
OOOOZdLCCCc`````lnhPUN0A?zSAUnuxezv?}!|~~~~^~~_s+__"+}tti}++tzlsagPIitnhwn2cvsj??tttjrlzan00nl+!!!!!CRR
OOOOUqd8CCc`````leC2PhPN>|+?tiPHHHHgk@ql_>>~~^~~__?eeCQBBBBGluASl!c$qs2nAA0L8888SS8b880gpby+"!!""!!!CRR
OmmOg00$8Sl````,zvznxlzm+_~``\X@MBH03m!^~!z^~^^~~^\``yD&RHHA+c0'^_7SPPe?2b0C2xn0kUggAmGduuu0ql!!!!!!bQR
OmmOU00k$bl```-}lz+l2||pz__!++PAZOGpO8^~_tv^~^^~~~^'~n@PPXXgNW0|~!yxxP+!!ntC+++}itsl2xLhgqnz+!+++}}tqQQ
OmmOU0qZPOLjlnl+cl|zl_+00__~~|!_"+|!!___!v|^^~~~~~~~~+i+sciletti_cx"}$!_|Sznzvcz23LgPGXmAx!>"!+}}t?s0DQ
Ommmg000q0q03llc!+c!_!2kA!~~~~~~~~~~~~~~z"~~^^~~~~~~~~~~~~~~~~~__+n__+x}_>naZU0kUgAAUAGpxr++++++}t?s0DQ
OXmmg0000qnnnv|tls_"7IUP5___~_~~~~~~~~~~lv^^^^^~^^^^~~~~~~~~~~~~~!Pn>_"yz_|nC0@N0wxl7tjzauxnC0AACl?s0QQ
Om&Mmh0q00Cngqxi_"z8AAnC>~~~~~~~^^~^^~~~>!^^^^^~~^^~~^~~~~~~~~~~~|0Az~~_n"__nzb0Pqd0gNkd$8nIxl+!!+}t0QR
OmmmPhC2vi}+1p!_|lnZh000_~~~~~^~~~~"_^^^^^^^^^^~~~^>!^^~~~^^~^~^~_gA+~~?z__>n]nzAqqqqppnz+!!!!!+++}t0QR
Ommmg00gAAhq0pqs___>sC00+~_~~~^~~~^c"~^~^^^^^^^^~^^v|^^~~~^^^^~~~>Au>~_x!~~l0Cn&OGGPPPPAPALI2?++++}t0QR
mmmmA0000pClCA&Xq+___|txC+~~~~~~~~~57+_~~~~~~^^~|tszj~~~~~~~~~^^_Cms~~72__|AAnWW&&&&&&&&@@XU0pqSSS]s0QR
OmmmA00UAG&@&&&&&mz_~__>cuv|~~~~~~|i^"r?"~~~~"?7s!~~z?~~~~~~~~~_nOC"~~?z_~jkCAZh00hUP&OPAgAAGASCu2s?0QR
PPNNUpgIzzekWmAggUAC"_____!t?+~^~~~~~~^>r17s7?!~~~^^_}|^^^~~~_tC0c|~~~~_~~+z0ccccczSL3ccclcc20l+++}?0QR
0000pZ2llllcxblcccvzn}__~~_~~!svv+~^^~~~~~~~~^^~~~~~~~~^_!?2npLl!~~~~~~~~~~IuvvvzqClvvvvvvvcvl0l++}i0QR
0000UyllllcccxqlccvvlCv_~~~~~^^~"rrrt>~^~~~~~^^~~~~~>1eunwS2s+>~^~~~~~~~~!eIvvcCbzvvvvvvvvvvcc]pzzlzARR
PAAP0lllllccccCLccvvvv3z!~~~~~~~~^^_+lnv_~~~~~~~_+z3CCelt!_~^^^~^^^^~~_i2al1vadyvvvvvcnuvvvvvcckmAAAPPP
RRDM0lllllllcclLuvvvz2vlu5!~~~~~~~~~~~?hCz!__+zICSIyc+>~~^^^^^~~~~~~|ceecvvlbCcvvvlnqUmxvvvvvvc5mqb888L
RMXWqlllllllccczdzvc28vvvzI5+~__~~~~~~_vqnqASPAxx]s!_~~~~~^^^^^^~_tzaz2v1vz0avvvcIhZkA2vvvvvvcczXO8b8b8
WmmX8lllllllcccca8cczhevvvvlxx7_~~~~~~~xqInAng$Ia}_~_~~~~~~~~_"vze2vvIhvv20zvvcznZ0AkzvvvvvvvcczN@hS8bb
OOOX8llllllcczzclqcclkLzccvvzhA2+~~~~~~unIhgI$AIl_~~~~~^~~"132yzv11vzgpvldzvvcxq0gUucvvvvvvvvcczgWPb888
GGGmqllllllcczkalIxczU0Ccvv2lc]>+>~_~_|jcqPggNOAl_~^~~^"i7+lOhz11vvcCghvwncccI0kUuvvvvvvvvvvvccz0XOqbbb
GGGmZlllllcccc0guzwleA0qzvvn+`^ts"~~~___lNmpyCW@I>_~~~~|}sit!>yvvvveqpAlp2ccx0A0lvvvvvvvvvvvvvc20Xmpbbb
OOGmPzllllllll5A0ILlCAp0ac5n-```'iv+___!n&@&PX@MA+~>vzcs!,````zlvvv]00PeUlc3hAIccvvvvvvvvvvvvvca0OmUb8b
OOOON5lllllllllCA00l0Apg0C02```````+t7+c0Zb&DOhUOnlt|,````````c0Cn3x00GnglzhgzccvvvvvvvvvvvvvccI0ANg88b
OOOmXSlllllllllzAUPuAZZU5qd\`````````^vnAPx8PnSnz>,```````````~$nzwIppNpglL0lcccl2CLxvvvvvvvcclC0pPU8bS
GGOWOgzlllllllllnAAhPhO8l2Sv\``````````tzanImnzl>```````````\7xxllhAhhAmPCwllzadhqxlvvvvvvvvccz$ppPh88b
GGXU0NIllllllllll0g&GP@Wpzlzn2!```````_lzzzq@Pzz+````````>leallz8O@&gkkPWSzI0Aqecvvvvvvvvvvvccy0pUXh8S8
GOm0ukhzlllllllllzPmPW@&&Xp2llxyj\```,izzz3O&&Szt,````"zeyzllnAX@&&@GZZNqnpA$zcccvvvvvvvvvccccSppGPPw88
OOOmnekSzlllllllzz0mWM&&&&@Wgxll3I2_`>zzzzZMMMX]l^`~zauzllIkO@&&&&&@WUNP0pqacccccvvvvvvvcccccxPhNPkG088
OOOmNxzwxllllllllz2mR@@&&&&&@@Ndzlzn]a2zznGOQWGkezIUull30O@&&@@&@@@&MUGGACllcccvvvvvvvvccccllAAPGkhNZww
OmOmAA3z2llllllllzzbPIA&@&&@@@&@XguzzxC8nANOXgAOPAZCznA&@@@&&@@@@@&&mAgXUzlccccvvvvvvvccccclxGPmUkZGAww
OmmmgGPzzzlllllllzzLpzzuAX@&@@@@&@&AnzzIPW&@GPAgggq8G&&@&@@@@@@@@WPS2PAAzllcccccccccccccccllZGmgZZZNGgZ
OmmmAP0qzzllllllllzPWk]zze0m@@@@@@@@@OpuwAmNAAAAPXW@@@@@@@@@@@@Gqez2d@P2lllccccccccccccccclxmOgkZZZPWmm
OmmmAgz0IzllllllllnPX&&Gq3zzIAW@@@@@@@@M@@@@&&MRBR@@@@@@@@@&Nqyz2CAW&@nllllccccccccccccccllAXgZZZUUgWXX
OmmmA0ze3zzllzlzzzS2aUX&&XAS5zyqG@@@@@@@QBBHBBBBBBM@@@@@@mhI22nAX&&@WO$llllllcccccccccclllumgkZUUhnCXXX
GOOmA0zzzzzzzzzzzzSzzzy0O&&@Opx22IUW@@@MRBBBHBBBBBQ@@@&N8e2]$N&&@&Nq22qlllllllccccclccllllhAhhZZ0xz8WmX
GOOOA0zzzzzzzzzzzzIzzzzz2CP&&@&AC52ybAmMBBBBHBBBBBBMG0ue3bAX&&@XZuzzzl0zllllcclllllllllllnPhkkhS2zz0WXX
OOOOA0zzzzzzzzzzznzzzzzzzzzIhO@&@OhaeenAm&@BRBRDM&Xp3adPX@@@&Pw2zzzlllLxllllllllllllllllzAUhk0IzzzzUWXX
OOOmghzzzzzzzzzznnzzzzzzzzzzz2SP&@@WNhgAAAmQDDWAAAPPPX@&@&N0xzzzzzzlzznUzlllllllllllllllLPhp8ezzzzzAXXX
*/