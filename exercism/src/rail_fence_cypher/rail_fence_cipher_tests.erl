-module(rail_fence_cipher_tests).

-include_lib("eunit/include/eunit.hrl").
'1_encode_with_two_rails_test_'() ->
    {"encode with two rails",
     ?_assertMatch("XXXXXXXXXOOOOOOOOO",
		   rail_fence_cipher:encode("XOXOXOXOXOXOXOXOXO", 2))}.
'2_encode_with_three_rails_test_'() ->
    {"encode with three rails",
     ?_assertMatch("WECRLTEERDSOEEFEAOCAIVDEN",
		   rail_fence_cipher:encode("WEAREDISCOVEREDFLEEATONCE",
					    3))}.
'3_encode_with_ending_in_the_middle_test_'() ->
    {"encode with ending in the middle",
     ?_assertMatch("ESXIEECSR",
		   rail_fence_cipher:encode("EXERCISES", 4))}.
'4_decode_with_three_rails_test_'() ->
    {"decode with three rails",
     ?_assertMatch("THEDEVILISINTHEDETAILS",
		   rail_fence_cipher:decode("TEITELHDVLSNHDTISEIIEA", 3))}.
'5_decode_with_five_rails_test_'() ->
    {"decode with five rails",
     ?_assertMatch("EXERCISMISAWESOME",
		   rail_fence_cipher:decode("EIEXMSMESAORIWSCE", 5))}.
'6_decode_with_six_rails_test_'() ->
    {"decode with six rails",
     ?_assertMatch("112358132134558914423337761098715972584418167"
		   "651094617711286",
		   rail_fence_cipher:decode("133714114238148966225439541018335470986172518"
					    "171757571896261",
					    6))}.
