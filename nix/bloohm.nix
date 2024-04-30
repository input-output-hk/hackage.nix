{
  "1.0.0.1" = {
    sha256 = "9c3d0ed731d36a8160a0150dfb088a2910ca7719ac8fb1695093ee60c609b83f";
    revisions = {
      r0 = {
        nix = import ../hackage/bloohm-1.0.0.1-r0-7b7b01ba6d28e839b216823119ef74999e71cd0876388b5fcdeed5d9656ae6df.nix;
        revNum = 0;
        sha256 = "7b7b01ba6d28e839b216823119ef74999e71cd0876388b5fcdeed5d9656ae6df";
      };
      r1 = {
        nix = import ../hackage/bloohm-1.0.0.1-r1-3c07bdd70b0b3669e6f7d680cf67d382dc3cd44c7dd0997d6b904269423fa8f0.nix;
        revNum = 1;
        sha256 = "3c07bdd70b0b3669e6f7d680cf67d382dc3cd44c7dd0997d6b904269423fa8f0";
      };
      default = "r1";
    };
  };
}