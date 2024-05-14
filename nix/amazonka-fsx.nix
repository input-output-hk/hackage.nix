{
  "2.0" = {
    sha256 = "e534a95dbb10f86afd2c638b587352361dfa877b5035f3a393061e39e86faafb";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-fsx-2.0-r0-29eca91582273adc25911c7f682c51a9c624182550bbe67a617aa9ecf8ccfdbd.nix;
        revNum = 0;
        sha256 = "29eca91582273adc25911c7f682c51a9c624182550bbe67a617aa9ecf8ccfdbd";
      };
      r1 = {
        nix = import ../hackage/amazonka-fsx-2.0-r1-b4c4d8432800fc4a1f5e95bdf1afd24a2f110689cec945d774e568ed3c2e4377.nix;
        revNum = 1;
        sha256 = "b4c4d8432800fc4a1f5e95bdf1afd24a2f110689cec945d774e568ed3c2e4377";
      };
      default = "r1";
    };
  };
}