--This Code was done in collaboration between 
--Erick Garcia and Julio Lopez Molinar
module Main where
	import Battleship
	main = 
		do
			uiHitShips boardWithShips
			gaben
	mainCheat = 
		do
			uiHitPractice boardWithShips
			gaben
	mainDebug =
		do
			uiHitPractice boardWithShipsInOrder
			gaben
	gaben =
		do
			putStrLn ",;,,,;,;,;,;,;,;,;;;;L                ...:,;;L;L;FyjjEhK5hKOO8S8SESpObb8OBOpb88bbpO8bb8BbQBQBQQgQQBQBQBQBQbbGpOGnzLrL;,  ,,:.... ..:L;;,;;;;,;;;;;,;;;,;,;,;,;,;"
			putStrLn  ",;,,,;,;,;,;,;,;,;;;;L                ...:,;;L;L;FyjjEhK5hKOO8S8SESpObb8OBOpb88bbpO8bb8BbQBQBQQgQQBQBQBQBQbbGpOGnzLrL;,  ,,:.... ..:L;;,;;;;,;;;;;,;;;,;,;,;,;,;"
			putStrLn  ";;;;;;;;;;;;;;;;;;;;L;      .         :;;;rzyyZFFZGOpG8OQ8Bbb8QBB8bBQBgg8OBbBOBBQBQQgggggg@g@g@g@@@@@@@@@@@g@ggQb5yL;;;:. .         ,zc;;;L;;;;;;;;;;;;;;;;;;;;;"
			putStrLn  ",;,;,;,;,;,;,;;;,;,;;,     .   . .   ,;;;cLFzjFzyh3hKShS5OGES88bpGEOhGGGnGhEEOE8bQQQBQBQQgQgQgQQQgQQBQQgQgQQQQBQbOyL:: .,:.  ,;;;;   ;:;;;;;;;,;,;;;;;;;,;,;,;,;"
			putStrLn  ";;;,;,;,;,;,;,;,;,;;L,      . ..,:::,,;;L;rLLF7cyZE5SSGoE5GE8pbbBSGEOpGhOp85O8BBgQgQgggQgQgggQgQgQQQgQQQgQQQQQQQQQBKr;:   .;cz5ShSL ...;L,;;;;;;;,;;;;;;;,;,;,;;"
			putStrLn  ":;,;,;,;,;;;,;,;,;,;;;       ....,;;,;;;;LLrrzrzLyyZK55OE5hp8bBQpG5hOOhGE8bBbQQQBQQgQgQgggggggQgQgQQQgQgQQQgQQQQBgQQpn;;.  .,.:rF7y,   .;;;;;;;;;;;;;;;;;;,;,;,;"
			putStrLn  ";;;,;,;,;,;,;,;;;;;;;;.   . .   ..,;;,;,;;LLz;7zcznZhoOGOE8bBbQQBEEKOGOE88QQBBBbQBgQgggQgggQgQgQgQgQgQgggBQQQBQBQBQQgB5LL;;.. . :;;;c;L;;:;;;;;,;;;;;;;;;,;,;,;;"
			putStrLn  ",;,;,;,;,;,;,;;;;;,;;L.    .   ..,,;,;,;;;;;;L;cLjnhK558OGEBbBQQQbGpEOO8pbQQOBbQQgggggg@ggQgQgBQQggggQQgQQBQQQQQBQBQQgQby,,7  .   ;z8@g@h.:;;;;;,;;;;;,;,;;;,;,;"
			putStrLn  ",;;,;,;,;,;,;,;,;;;;;;;   .   ..::;;;,;,;;;;;,;;rzZKEhEObG8pbbQQgb8ObOGpBbQb8pbpQQgg@ggggQQ8BBB8QQQQQBQQgQQQQBQQQQQQg@@gO  :      3j;;LE@7.,;;;;;;;;;,;;;;;,;;;;"
			putStrLn  ",;,;,;,;,;,;;;;;;;;;;;L,   .   ..,,;;;;;;;;L;;;;;zzZoS5O8b8bEbbQgQGpOB8SOOS5j5nh5ych53SpGOGESOSEoOOO5O8BbQBQQgQgg@@@gS::;K8G,,;L,nQQoy. Sg:,,;;;,;;;;;;;,;,;,;,;"
			putStrLn  ";;;,;,;,;,;,;;;,;,;;;;;;       .,:,,;,;;;;;;L;LLLLyoESOOp8bO8bbBg83SpGB5ncr;;;;;L:,;,,;,,,;rnnpphnKKS5OOpQgQgg@@@b7   ;p@BQbKLjQbQgQb8Z.c@L:;;;;;;;;;,;,;,;,;;;;"
			putStrLn  ",;,;,;,;,;;;,;,;;;;;;;;L,      ..,:,,;,;;;;;;LLrLzcyZhGOEp5hpb8QBOcKEOE5;LLL;L,,;;,:.,:,:;,;;;ro8gQgBQQQQgg@gQZ.   rb@ggQBOQbObQggQgBBO;,@F:;;;;;;,;;;;;;;;;,;,;"
			putStrLn  ",;;,;,;,;,;;;,;,;;;,;;;;r:      ::,.,:,,L;L;L;;;;,;;;;;;j3oy3KOGBn;yOO8pSz7LFryjL;zKGE88BBgg@@@B8EB@@BQg@QG;   .ng@@@QQBB8pBQBg@@ggggB8;L@c.;;;;;,;;;;;,;,;;;,;;"
			putStrLn  ":;,;,;,;,;,;,;;;;;;;;;;;;L.    ..:::.::,;;,;;;,:....   .:,;;;Ljhn;,yhBQ@ggbGzZ3Lnb88OpG88BBQggg@gg3yKppF.   ,8@@g@gQBQbB88ObQgoy8BBQBQBzOb.,,;,;;;;;;;,;,;;;;;,;"
			putStrLn  ";;;,;,;,;,;;;,;,;;;;;;;;;;L     .:::,:. ....,.. ..,:,,;,:...;;c;:,LzSb@@@g@bp7.jSKSKF;. .  ;. ,,;;yc;oE.:Lb@@@@QQBQBQbBbb888QE .zSb8BQgGgL.,;;;;;;;,;;;;;;;,;,;;"
			putStrLn  ",;,;,;,;,;,;;;;;;;;;;;;;;LL.     :,,,,.      .,LFhOb8BQQO8h3z7;;..,L,;;;FOphByhy,;:. .;;.  ;:;FZEbBQ8QBQQ@ggQQQgBBbQBQBb8B88bbz:;noOOBgQQ,.;,;;;;;,;;;;;;;,;;;,;"
			putStrLn  ",;;,;,;,;,;,;,;;;;;;;;;;;,,:.     .:,;,.....;LFjKZ5SShjLF7zrL;. c.  ,r7KBB8LLr8S7;;;;LcLcrjSQg@@@gQ8bpbbbQgQgQQQQBbbBBBbBbB88Q@bz;LyohQQQ::,;;;;;;;,;;;;;;;,;;;;"
			putStrLn  ":;,;,;,;,;,;,;,;,;;;;;;;;: ......    :::.. ;,;;;::..   y.:       . .ZbE8Q@@g.,y38BhjyyFZZES8p8pB8bbQbbQQQQQQQQQQBQbbbQBQbBbbO8g@g5L7ZOQgQ;.;,;;;;;;;;;,;;;,;,;,;"
			putStrLn  ",;;,;,;,;,;,;,;,;,;,;;;;L.    . . :.      :,          .zLcr;;;:... :yKEbQQ@@B.p5,3bOOSGhOOOSOGppbQgBBQgQQQQBQQQQQbb8BQQBBbBbbhBg8c;zObgBg,,,;,;,;,;,;;;;;;;;;,;;"
			putStrLn  ",;,;,;,;,;,;;;,;;;;;;;;;;;      ...,::..  ,c   ..,,;;zyn3oZnc;.... ,;ypbQQg@gg;Go3ZohOEO5OOO8b8ObQBBQQBQQQQQQQBQBB8bpQBQQQBBb8SShppQQQpgS.:;;;;;;;;;,;;;,;,;,;,;"
			putStrLn  ",;,,;,;,;,;,;;;,;;;;;;;;;;;.    ...:::,,;:.K;.,,;Lz7yyyzyrrLL;;....;;jbBgggg@@@8ggbhEhhK5ZEGOSKySGb8bbBbQQgQgQQQQbQBBpQQQQQBB8phbQgQQpB@z.,;;,;;;;;,;,;,;;;,;,;;"
			putStrLn  ",;,;,;,;,;,;,;,;,;;;;;;;;;;r;.   ....:,;;;:;OF.:,;;LrrLr;L;L;;::::;;;GBgggggggg@@@ggbbOOEEhhoh5OObbBBQQQQQQgQQQQQQQQBBBQQQBB8BpOQgBQbQg8c;,;;;;;;;;;;;,;,;;;,;,;"
			putStrLn  ",;,,;,;,;,;,;;;;;;;;;;;;;;;;LL;.......:,;;r;;hG7L;L;rLLLc;r;;,,,;;;,;nbQgggQgggg@g@QQ8B88p8O8OBbbbBBQQgggQgQQQQQQBQQQbQbQQQbQbBEbQQQQQ8;,;;;;;;;;;;;;,;;;,;;;,;;"
			putStrLn  ",;,,,;,;,;,;,;,;;;,;;;;;;;;;;;;r:  ...:;,;;;;;75hKFyzyFzLc;;;L;L;;;;;yGbQgQgQgQgggQQOo3ESSG8O8pb8QBQBgQgQgQgBQBQBQBQBbBQBQQQbBBbOQbbbgn .;;;;;;;;;;;;;;;,;;;,;,;"
			putStrLn  ",;;,;,;,;,;,;,;,;,;;;;;;;;;;;;;;L.. ..::;:;;L;L;LcjyZyZFyzFzzL;,,;;,rjEpQQgQQBgQQBBBQ5r;;LFnK5OOb8bbQBQQgggQQBQBQQQQQbBBQbQQQBB8p8BbQ@O .;;;;;;;;;;;;;;,;;;,;,;;"
			putStrLn  ",;,;,;,;,;,;,;,;,;,;;;;;;;;;;;;;;;...:.::;,;;LLyZShGGESEKKjz;,..:;;;;ZSbQgQQQQQQ8bbQQQn;,::;;7ySEppbbBQgQQBQQQbQQQQQQQbBQQBQBQbBObg@@@.::;;;;;;;;;;;;;,;;;;;,;,;"
			putStrLn  ";;,,;,;,;,;,;,;,;,;,;,;;;;;;;;;;;;,...:.::;,;;zF535oEo5jycL,.  :;,;,;yppQQgQgQQQQQgggQ8GGy;::,;roS8p88QQQQQBBBQ8QQQBQQQ8QQQBQBB8bObEc  ;;;;;;;;;;,;;;,;,;,;,;,;;"
			putStrLn  ",;,;,;,;,;,;,;,;,;,;,;;;;;;;;;;;;;;,.:...::;;L7zj5K5K5ZyrL,.   L;;;;;ch8bQggQgQgggQbObBQBbEj;;:;;ynEE88BBQBQBQQBBQQQBQbQBQBQBBbB8B;    :,LLL;;;;;;,;;;;;,;,;,;,;"
			putStrLn  ",,;,,,;,;,;,;,;,;,;,;;;;;;;;;;;;;;L;..:...::;;z7jZ5noK5Zz;;.  :;;;;;zFS8BQgg@QgBbOEnOQgQgBBpOycLL;c7yKGO88BbQBQBQBQQQQQBQBQbQBQbbbO,    ..::,;L;L;;;;;;,;,;,;,;,"
			putStrLn  ",;,;,,,;,;,;,;,;,;;;,;,;,;;;;;;;;;;;.......,,LLz7Z333oKEnz;;:;,,:::;LKSp8QggggBbQQQQbQQgQQ8b8b53nc7KK3opOBBQBQBQbBBQBQBQQQBQbQbB8bpby          ..;;;;;;;,;,;,;,;"
			putStrLn  ";,,,;,;,;,;,;,;,;,;,;,;,;;;;;;;;;;;;: :.,.::;;LLyy5ZKKh5oFF;;;;;;.. .;ynhObBBZ3SOpBbQQQQQbB8bBQ8QE3KO88ObBQQQBQB8BQQgBQQQbBbBBB8b8pOQO.           .,L;;;;,;,;,,;"
			putStrLn  ",;,,,,,;,Y  o  u,;,;,;;;,;,;;;,;;;;L, ..::..:;;rFZZo3ESh3ncrLL;;;;.....,;znhz;zny5O8bQQQBQQQBQQgB8ozy55nhQBQBQBQbBBQQQBQBBb88b8b8bpEOB8.            .;;;,;,;,;,;"
			putStrLn  ";,,:,,,,;,;,;W  i  n;,;,;;;,;;;;;;;;L...::...:;;cLjZ5oSo53F;;;;,;,;;;;LLyyh5SS5nEOBbgg@@@@@@@Q8Sy7y7y;;LSBQbQBQQQbQBQQQBB8bpB8Bbb88SEGbb;            .;;;,;,;,;;"
			putStrLn  ",;,,,;,;,;,;,;,;,;,;,;,;;;;;;;;;,;;;;; ..:....,;;zjSo5KoZ5jL;;;;;;;L;zFE8BQQBQBb88p8OGo3jz;;;73EKno8EF;38QQQBQQQQB8BBQbQbb8bbb8b8bpEKGObBL          ...;;;,;,;,;"
			putStrLn  ",,,,;,,,;,,,;,;,;,;,;,;;;;;,;,;;;,;;;;. ..:...,,;rno3j3ZKjzL;;;;;;r7jn35G5Oh5KKjZL; ,...::LhQggggbbO5y5GBBQQQQQBQBQbQBB8b8b8B8B8bpbSEGOGbQ;         ....,;;;;,,,"
			putStrLn  ":;,,,;,,,;,;,;,;,;,;,;,;;;;;;;;;;;;;;L,........,;FFLLnjjynFL,,,;;L;;;;::   ..  ,LjnKGBQgg@@@gQQQQQBbhoEbBQBQBQBBBQBQBB8bpb888bbb888S58EpO8pL.      ......:,;;;,;"
			putStrLn  ",,,,,,,,,,,,;,;,;,;,;,;,;,;,;;;;;;;;;;L. ...:...;zS;LnonK3KL;:.         .:;cjcFZpbQg@ggggQgQQbQQQQQbbG88BBQBQBBbQbBbB8bO8pb8BbB888boSpOOpO8cL:    ....: ....,;;;"
			putStrLn  ":;,,:,:,:,,;,;,;,;,;,;,;,;,;,;;;,;;;;;;;. ...,. :7nZzohpGOE5y;,;::...:;y5pO888O88BBQQQQQBQQQbQbQQQQQBB8B8bpB8BBB8Q8b8bOp8b8BbBbbO8Ohh8O8ObEz;;     ..,:. ......,"
			putStrLn  ",,;:,:,,;,,,;,;,;,;,;,;,;,;,;,;;;;;;;;;;; ...:;. :LjyrSObpGhSzL;L;;;,.,;FjooEhOE5KEG8bQBQQQQQBBQQQgQQBQbb8b88bQ888Bp8O88bpb8b88O88OnGE8EOOEL;:    ..:::.. ......"
			putStrLn  ":;,;:,:,,,,,,,,;,;,;,;,;,;,;,;;;,;,;;;;;;,  ..:;. .Lz77SpbpOZF7c;L;,...:,LcnzLLKn3n5OBBQBQQgBQBBbQQgQQBQ8b8QbBBB8b8bO888pb8b88pb8853EOOOGOK;..   .....::........"
			putStrLn  "::,:,:,:,:,,,,,,,,,,;,,,;,;;;,;,;;;,;;;;;;:   .,;. .;;LyhhphS7Lr7LL;;,,:;;jK5zyKOEGS88bBQBBbb8BbQBQBQQQQQbbbb8bbbp8p8O8Ob8bpb88ObGSKEGpSpSj.    ................"
			putStrLn  ":;:,:,:,:,:;,;,;,;,;,;,;,;,;,;,;,;,;,;;;;;L.   .:;.  ,;7y35Go5;Lc7L7;L;Lco5Go53EEShOG88bO8OppbbQbBQQBQQQbBbB8B8b888b88Ob8B8b8pp8GpSS5pGOGS;.     ..............."
			putStrLn  ",:,:,:,:,:,,;,,,,,;,;,;,;,;,;,;,;,;;;;;,;;;;.   ..,.. .,LLFzyyF;rLrcyzyz3nKojFF7yjKoEObGESpO88QBQQQBQQQBBbBbBbb88Ob8b8b8B88pbObGOOGEOOGoOy.     ................"
			putStrLn  ":,:::,:,:,:,:,:,,,,,,;,;,;,;,;,;,;,;;;,;,;,;;. .   ... .:::;;L;rcz;nZ33on7;;;LLnKSSpG8p88b8BbQBQQQBQBQBB8bpb8b88Ob8b8bbBpb8b88G888GOGOEG3;     ................."
			putStrLn  ":::.,:,:,:,:,:,:,,,,;,;,;,;,;,;,;,;,;,;;;,;;L;. .   ........:,;;rLcz3h5rL;;;Fzo5OS8Ep8bpBBBBQBQBQBBbB8b8b8bpbO88b8B8b8b8bOb88O8O8pGG8SG3L     ....:............."
			putStrLn  ":,.::::::,:,:,:,:,:;,,,;,;,,,;,;,;,;,;;;,;,;;;;. . . ..... . .:;;L;LLycL;LLynSSOEEhO8B8bbQBQBQQQBQ8bppO88b8b8b8B88pb88pBpbO8O8p8O8E8hE57.     .................."
			putStrLn  ":::.,:,:,:,:,:,:,:,:,,,,;,;,;,;,;,;,;,;,;,;,;;;;. ... . ..... ..,,;;;;cL;;7nhZOEEEpO8bB8BbQQQQQbQb8EpO88bO8p88B8b88p8p8pbpbpbp8O8O8OpEj.    . . ......... ......"
			putStrLn  ".,.:.::,.,:::::,:,:,:,:,,;,;,;,,,;,;,;,;,;,;,;;c;  ... . ....  ..,,;;;;L;LLyjoEOhSOpObOb8BbQbBbbpphGO8pB8b8pb8bbp8O8O8O8p888p8Opp8ObOo.    . . ........... ....."
			putStrLn  ":::.,.::::::::,:,:,:,:,:,,,,,,;,;,;,,,;,;,;,;;LL   .. ... . ...  .::;,;;L;LLzyOK5oGSOGOpb8bO8GOGh5OObO8p888p8O8O8O8O8OpO8O8OOOOG8O8OZ:    . ....... ....... ... "
			putStrLn  ".,:,:,:,:,:,:,:,:,,,,;,;,,,;,;,;;;;;;;;;;;;;;;:    ..... . .....   ..::;;;,;;yooKGhGEOG8O8ppppSGOQBQQQBQBQBQbBbBbBBBbQbQBQBBbQBBbbGy.    ................... ..."
