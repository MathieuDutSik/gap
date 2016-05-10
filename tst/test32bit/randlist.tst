#############################################################################
##
#W  randlist.tst                   GAP library                Frank Lübeck
##
##
#Y  Copyright (C)  2016, The GAP Group
##
gap> START_TEST("randlist.tst");
gap> l := [1..2^(8*GAPInfo.BytesPerVariable-4)-1];
[ 1 .. 268435455 ]
gap> Reset(GlobalMersenneTwister, 1);;
gap> List([1..10], i-> Random(1, 2^70));
[ 389420078096435786116, 1135477438879460122740, 425191437180319830675, 
  1083900231106243887320, 600872374094649387692, 39438917363375403157, 
  860639563472417594821, 1064153947161477828981, 140455377727366448871, 
  198677943275448576238 ]
gap> List([1..10], i-> Random(l));
[ 13155435, 3131483, 21560873, 174688373, 142786538, 140745645, 25528157, 
  45625016, 214994737, 84644 ]
gap> List([1..10], i-> Random(1,10^(3*i)));
[ 721, 46797, 22238206, 187185663184, 734387696875236, 101821667962893342, 
  669052909362560486368, 769723171201061857635320, 
  874658974599856967310222061, 397063360144420204491778152435 ]
gap> Reset(GlobalRandomSource, 1);;
gap> List([1..10], i-> Random(GlobalRandomSource, 1, 2^70));
[ 1128431629504922105781, 1101744982711025966526, 975266616221323178376, 
  678285771456235093359, 337368903834409162500, 1067481644129172537859, 
  666712591436546208470, 471773889319658808870, 27293053954741592585, 
  894173925476383505759 ]
gap> List([1..10], i-> Random(GlobalRandomSource, l));
[ 40228334, 111587641, 262452744, 44854923, 39845682, 206581571, 92903376, 
  231314873, 66408590, 258714463 ]
gap> List([1..10], i-> Random(GlobalRandomSource, l)) mod 2^28;
[ 184978940, 159620597, 123129748, 68026743, 233471294, 232591449, 24005304, 
  5708683, 167299138, 197744113 ]
gap> List([1..10], i-> Random(GlobalRandomSource, 1,10^(3*i)));
[ 602, 615764, 985971579, 527993069062, 970982477709403, 915182928712255106, 
  52224684171237700022, 63091858766485771208964, 391269615753496331510430301, 
  929557928485066381724613674190 ]
gap> rs := RandomSource(IsMersenneTwister, 1);
<RandomSource in IsMersenneTwister>
gap> List([1..10], i-> Random(rs, 1, 2^70));
[ 389420078096435786116, 1135477438879460122740, 425191437180319830675, 
  1083900231106243887320, 600872374094649387692, 39438917363375403157, 
  860639563472417594821, 1064153947161477828981, 140455377727366448871, 
  198677943275448576238 ]
gap> List([1..10], i-> Random(rs, l));
[ 13155435, 3131483, 21560873, 174688373, 142786538, 140745645, 25528157, 
  45625016, 214994737, 84644 ]
gap> List([1..10], i-> Random(rs, 1,10^(3*i)));
[ 721, 46797, 22238206, 187185663184, 734387696875236, 101821667962893342, 
  669052909362560486368, 769723171201061857635320, 
  874658974599856967310222061, 397063360144420204491778152435 ]
gap> rs := RandomSource(IsGAPRandomSource, 1);
<RandomSource in IsGAPRandomSource>
gap> List([1..10], i-> Random(rs, 1, 2^70));
[ 1128431629504922105781, 1101744982711025966526, 975266616221323178376, 
  678285771456235093359, 337368903834409162500, 1067481644129172537859, 
  666712591436546208470, 471773889319658808870, 27293053954741592585, 
  894173925476383505759 ]
gap> List([1..10], i-> Random(rs, l));
[ 40228334, 111587641, 262452744, 44854923, 39845682, 206581571, 92903376, 
  231314873, 66408590, 258714463 ]
gap> List([1..10], i-> Random(rs, l)) mod 2^28;
[ 184978940, 159620597, 123129748, 68026743, 233471294, 232591449, 24005304, 
  5708683, 167299138, 197744113 ]
gap> List([1..10], i-> Random(rs, 1,10^(3*i)));
[ 602, 615764, 985971579, 527993069062, 970982477709403, 915182928712255106, 
  52224684171237700022, 63091858766485771208964, 391269615753496331510430301, 
  929557928485066381724613674190 ]
gap> STOP_TEST( "randlist.tst", 640000);
#############################################################################
##
#E  
