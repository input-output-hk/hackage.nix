{
  "0.1" = {
    sha256 = "84b932f82d35eeb3908f5c0c63c7f801de0307439794a1f2049d26bf8e346686";
    revisions = {
      r0 = {
        nix = import ../hackage/goal-core-0.1-r0-22a7614b2a2f2460db7d6ffbf82895df79396eb0bcd02c4839e48cd839dbd7b0.nix;
        revNum = 0;
        sha256 = "22a7614b2a2f2460db7d6ffbf82895df79396eb0bcd02c4839e48cd839dbd7b0";
      };
      default = "r0";
    };
  };
  "0.20" = {
    sha256 = "23cd800399459f08b9acaa7b7a09ee97b6c5490c34726a5a6f2283e728f50c53";
    revisions = {
      r0 = {
        nix = import ../hackage/goal-core-0.20-r0-ab7b0be0d013dd95a13fec1bb3fc2bdc2a69b0d6ca2421ecabb19508b6f83bcd.nix;
        revNum = 0;
        sha256 = "ab7b0be0d013dd95a13fec1bb3fc2bdc2a69b0d6ca2421ecabb19508b6f83bcd";
      };
      default = "r0";
    };
  };
}