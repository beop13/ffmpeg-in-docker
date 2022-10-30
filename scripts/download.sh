#!/bin/bash

LINK=$1
FILEPATH=$2
FILENAME=$3
BASEDIR="/home/Downloads"

if [[ -z "$FILENAME" ]]; then
	echo "usage ./download.sh [link] [path/with/folders/you/like] [filename.mp4]"
	exit 1
fi

mkdir -p "$BASEDIR/$FILEPATH"
ls -la "$BASEDIR/$FILEPATH"

echo ";cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccclc::::ldocllllcccccccccccccccccccccccccccccccccccccccccccccccccc::::::::::::::::::::::;
;lllccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc::c:ldl:clllcllclccccccccccccccccccccccccccccccccccccccccccccccc::::::::::::::::::::;
;lllllclccccccccccccccccccccccccccccccccccccccccccccccccccccccccc;;::ll:;:cllllllllccccccccccccccccccccccccccccccccccccccccccccccccccc:::::::::::::::;
;llllllllllllllllllllllcccccccccccccccccccccccccccccccccccccccccc:cccclc:cccllllllllcccccccccccccccccccccccccccccccccccccccccccccccccccc:::::::::::::;
;lllllllllllllllllllcccclllllllllllllcclcccccccccccccccccccccccllclollol:::cclllllllccccccccccccccccccccccccccccccccccccccccccccccccccccc::::::::::::;
;llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllcoollolcccllllllllllccccccccccccccccccccccccccccccccccccccccccccccccccccccc:::::::::;
;llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllccc:;coc:cclllllllllllcccccccccccccccccccccccccccccccccccccccccccccccccccccc::::::::;
;lllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllc;::;;:lc:;:cllllllllllllcccccccccccccccccccccccccccccccccccccccccccccccccccccccccc::;
;lllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllccol::coolllllllllllllllllllllllcccccccccccccccccccccccccccccccccccccccccccccccccccc:;
:loollllllllllllllllllllllllllllllllllllllllllllllllllllllllllllccc:;;:ol:clccllllllllllllllllllccccccccccccccccccccccccccccccccccccccccccccccccccccc;
:ooooooollllllllllllllllllllllllllllllllllllllllllllllllllllllll;'',,,;c:::::cllllllllllllllllllllllllccccccccccccccccccccccccccccccccccccccccccccccc;
:oooooooooooolloooolllllllllllllllllllllllllllllllllllllllllllll;'';,',:c:;;;;lollllllllllllllllllllllccccccccccccccccccccccccccccccccccccccccccccccc;
:ooooooooooooooooooooooollllllllllllllllllllllllllllllllllllllll::c:;',loclll:collllllllllllllllllllllllccccccccccccccccccccccccccccccccccccccccccccc;
:ooooooooooooooooooooooooooooolllllllllllllllllllllllllllllllllc;;::;,:llccllccllllllllllllllllllllllllllcccccccccccccccccccccccccccccccccccccccccccc;
:ooooooooooooooooooooooooooooooooooooooolllllllllllllllllllllllc;clc;;:cc:::::cllllllllllllllllllllllllllllcccccccccccccccccccccccccccccccccccccccccc;
:ooooooooooooooooooooooooooooooooooooooooolllllllllllllllllllll:;:lc;,;cl:;;;,:llllllllllllllllllllllllllllcccccccccccccccccccccccccccccccccccccccccc;
:ooooooooooooooooooooooooooooooooooooooooooooolllllllllllllllll:;:cc;,,:lccolcccllllllllllllllllllllllllllllllllccccccccccccccccccccccccccccccccccccc;
:ooooooooooooooooooooooooooooooooooooooooooooolllllllllllllllllcoolc;'':ccclllcclllllllllllllllllllllllllllllllllccllllllcccccccccccccccccccccccccccc;
:ooooooooooooooooooooooooooooooooooooooooooooooooollllllllllllc:cllc,'';ccccccccllllllllllllllllllllllllllllllllllllllllllllllllccccccccccccccccccccc;
:oooooooooooooooooooooooooooooooooooooooooooooooooooolllllllllc;,,;;'..,::,',,;:cllllllllllllllllllllllllllllllllllllllllllllllllllllllllcccccccccccc;
:ooooooooooooooooooooooooooooooooooooooooooooooooooooooooollolc;'',,...,:;'...':clolllllllllllllllllllllllllllllllllllllllllllllllllllllllccccccccccc;
:oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooolc;,,;;..';c:,,''';clolllllllllllllllllllllllllllllllllllllllllllllllllllllllllllccccccc:
:oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooolc::ll:'..,cc:ccc;;:looollllllllllllllllllllllllllllllllllllllllllllllllllllllllllllcccc:
:ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooool:ccll:,'',cc;;::,;:loooooolllllllllllllllllllllllllllllllllllllllllllllllllllllllllllcl:
:odooooooooooooooooooooollcc::::cclloooooooooooooooooooooooool:ccll:''',cc:cc:,,:cooooooooollllllllllllllllllllllllllllllllllllllllllllllllllllllllll:
:oddddodoooooooddoolc:;;,'''....'',;clloooooooooooooooooooooolcclol;'..,ccldol:;;cooooooooooooolloooooooollllllllllllllllllllllllllllllllllllllllllll:
:odddddddddoddool:;,'...............',;:clloooooooooooooooooocccll:,'.',:clddl:;;cooooooooooooooooooooooooooooooooooooollllllllllllllllllllllllllllll:
:odddddddddoolc;,'.......................',:looooooooooooooooc:looc;''',ccloolc:;cooooooooooooooooooooooooooooooooooooooooooolooollllllllllllllllllll:
:oddddddddolc;,'............................':looooooooooooooc:clll;''.,clcllooc::ooooooooooooooooooooooooooooooooooooooooooooooooooollllllllllllllll:
:dddddddolc;,'................................;cooooooooooooocclooc;,'',clclollc:cloooooooooooooooooooooooooooooooooooooooooooooooooooooollllllllllll:
:dddddooc:;'...................................;loooooooooooocclooc:;;,;llllllcc::loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooollllllc
:dddoolc;,'....................................,cooooooooooooccc:::,',,:ol::;,;;;:ldooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooollc
:ooolc:,'.............................'........':oooooooooooocc:;::,''',cc,''.'',:ldoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooc
:olc:;,''............................''.......',:odddoooooddoc:cccc:;''':c,''''.,;ldoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooc
:lc:;,''''..........................'''......',;:oddddddddddoc:lloc::'',:cclllc;,;ldddoooooooooooooooooooddddddddddooodddddddddooooooooooooooooooooooc
;c:;,'''''.............',,'.........',,'....',;:lddddddddddddccloo:::,,,:c;;;:;,,:ldddddddddddddddddddddddddddddddddddddddddddddddddoooooooooooooooooc
,:;,'''''............';;::;;,,'''''',;,...',;::coddddddddddddcclol:,,,,,:c:::;;:::ldddddddddddddddddddddddddddddddddddddddddddddddddddddddddoooooooooc
',,,'''''...........',;:::::::;;;;,,,;;'',,';llooddddddddddddc:loo:,',,;cccllccc::ldddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddoooooc
.',,,'''............',;;;;;;;:;;,,,,,;c:;::',odddddddddddddddc:lll:,,;;;ccclcccc::cdxxdddddddddddxdddddddddxxxxxxddddddddddddddddddddddddddddddddddodl
.,,,,''..'''.......'',,,,;,,;;,,''''',;;;:c;;oddddxddddddddxdlclol:;;;::cccllc:c::coxxxxxxxxxxxxxxddddddddddddddddddddddddddddxxxxxxxxdddddddddddddddl
.,,'''''''.........',,,,,,,,,,,,,,''',,,,;c;;oxxxxxxxxxxxxxxdc:clc:;;,;;:;;;;;;;,,,;::::;;;;;;;;;;;;;;;::::::::::::::::cccccc:cclodxxxxxxxxxxxxddddddl
.,,'','''..........',,,;;;;;,'''',,,,;;'',;,;odxxxxxxxxxxxxxc'.....................'',,,,,,;;;;;;;;:::::::;,;:::::;;;;;;;;;;;;;;;;:ldxkxxxxxxxxxxxxxxl
.,,,,''.............',,,;;;;;,''..'',,,,'..':odxxxkkkkkkkkkx:.';:;;;,,;;;;,,;;:;,;:ldxxxxxxxxxxxxxxxxxxxxdl;:dxxdddddddddooooll:;;;;;lxkkkkkkkxxxxxxxo
',,''.''..............'',,;;;;,,''',::;'...,codkkkkOOOkkkkOx;.;odoc::ccclc;;;;;;;:cokOkkkkkkkkkkkkkkkkkkkxl;lkkkkkkkkkkkkkkkkkkxdl:;;,:okOOkkkkkkkkkko
.''..''..................'',,;;;;;;:c:'...';ldxkOOOOOOOOOOOd,.:odoc:;;;:cc:;::::;:clxOOOOOOOOOkOOOOkkOOOOxc:dOOOOOkkOOOOOOOOOOOOOkdc;;;;oO0OOOOOOOOOOd
....','......................'',,;::;.....,:ldxk00000000000d''cdxdccc:ccclc:clcc;:cok000OOOOOkkOOOOOOOOOOxc:xOOOOOOOOOOOOOOOOOOOOOOkl;;;;oO000000OOOOd
..'''''............................'.....',:ldxO000000KKKK0o',ldxdlccccccllccllc;:cok00000OOOOOOO00OOOOOOd:ckOOOOkOO000OO0OOOOOOOOOOkl:;;;oO00O0OOOOOd
.'''''...................................';:oxkO0000000000Oc.,odxdlcc:cclolcccc:;:cox0K00000000000000000Od:lkOO000O0000OOOOOOOOOOOOOOko:;;;oO0OOOOOOOd
..''.....................................,::lxOO0Okkxxddoll;.;odxdlllcccllc::::;;:lox0K00000000000OOOOkkko:oOO000OOOOOOOOOOOOOOOOOOkkOko:;,;okOOOOOOOd
.'........................................,:clooolcllllccll;';lloolllcclolcccc:c:clldO000OOOOOOOOOkkkkxkxl:dOOOOOkkkkkkkkkkkkkkkkkkxkkkxl;;,;lkkkkkkkd
............................................;clc:;;::ccccll;,:cclcccccccllcccccccclldOOOOOOOOOOOOkkkkkkkxccxOOkkkkkkkkkkkkxxxxkkkxxxxxxxxl;;,;lxkkxxxo
.............................................':llccllcccccc;,:cclcccccccllc:cccc:clldkkkkkkxxxxxxxxxxxxko:cdxdoooooddxxxxxxxxxxxxxxxxxxxxxl;,,;lxxxxxo
...............................................;lllcc:clllc,,:clllc:::ccllccclllcclodxxxdooddddxxxxxxxxxl::;'......'cdxxxxxxxxxxkkxxxddxkkxl;,,;cdxxxl
................................................;lllllloooc;;:clolc:::::cllccooollooodxdocccllllllooodddl;,'....,,';oddddddddodddddddoodddddc,,,;coddl
................................................':lllllooo:;;:cloolllccoollcloodolooddxdooooololollolodoc:c,....cddddddoooddooddoddddoooooool;,,,,:ooc
.................................................,cllcllol:;::loollllclllllllllccclllllllllllllcccllllll::ll,...,loooollllllcccccc:::::;;;;;;;,,'',:c,
.................................................,lxxkkkko:clcooc:;'....'',,;:cclcllcc::cc:::::;;;:::ccc;:cc:,. .:c::::;;;,,,,,,,;;;;;;;;;;;;;;;,',,;,
..................................................:ooooool:c:''.................,,,,,,,''''''',,,,;;::cccccc;'. .:cccc:::;;,,,,;;;;;;;;;;;;;;;,,,'.';;
..................................................':lllloc;... ..',,,,,,,'''...  ..''''......'''''',,,,;;;;;,'. .,;,,,,,,,'''''''''''''''''''''.....',
...................................................;dxxxl,.......',,,,,,,,,,;,.    ..';;;;;;;;;;::::::ccccc:,'...;cccc:::::::cccccccccccccccccccccccc:
....................................................;ll:...,;;;'.,:::::::::::,..,,....,:::::::::::ccccccccc:''...,ccc:::::::ccclllccllllllloollcccccc:
....................................................,c:...,:ccc:;;::::::;;:::,,;:::'. .,::::::::::::cccccc:,'''...',,,''',;;;;:ccccccllccccllcccccccc;
....................................................';'..,cccccc:;,,;:c:::;;;;::::::,...,::::::::::::ccc;'',;:;..   ..'.......';;:ccccccccccccccccccc;
.....................................................'..':cccc:;'.';c::::c:::::::::::'...;::::::::::::c;..,;col,.    ...........',;:ccccccccccccccccc:
........................................................,clcc:'...;l:,,;,:c::::::::::;...,:::::::::::::;..,',;c;.     ......  .....,;::cccccccccccccc:
........................................................,:ccc;....,::,;;,;:;;::::::::;...':::::::::::::,.....';'.      .....  ......,;;::cccccccccccc:
.........................................................','','....';::;::'.';:::;,;;,...':::::::::::::,......'..        ..     ..,'',,;::ccccccccccc:
....................................................... ...';,..  ....''....';:;;'.......,:::::::::::::,........        ...  .....,'',;;::ccccccccccc:
........................................................  ..;:,..    .....',;:::;;;,.....;:::::::::::::,. .....         ...  .....'''','',;:ccccccccc:
........................................................    .;:;,.....,,';:::::;;;;;'...';::::::::::;::;..              ...  ..  ...'''',;;;::ccccccl:
..........................................................   .:c:;;;;,,;:c:::::;;;,....';:;::::::::;;;::;'.....          ..  ..  ....,:clc::::::cclll:
...........................................................  .',;::cc;..;ccc::;;,'....,;;;;,,''......',,;;:;;,'........     ...  .....;:,''',::;:clll:
..................................................................',;,..';;,,'....  ........          .....'',,,,,,,,''...................'.',,',clcl:
...............................................................................                              .....'',,,,,,,,'..................',::::;
 . ..... ...............................................  . ......   .......                                       ........................  ........."


ffmpeg -y -user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3554.0 Safari/537.36" -i "$LINK" -codec copy "$BASEDIR/$FILEPATH/$FILENAME"