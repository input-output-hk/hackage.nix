{
  "0.0.1" = {
    sha256 = "c110869fb023390f55556bf94e4f848b1191d2019290d73be1821da0ae2e350c";
    revisions = {
      r0 = {
        nix = import ../hackage/sloth-0.0.1-r0-203ebd5d315d993d24bedceead616ad06c4943642104cc3f36dd156583a13f20.nix;
        revNum = 0;
        sha256 = "203ebd5d315d993d24bedceead616ad06c4943642104cc3f36dd156583a13f20";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "095fad381ced5fdbcdab934c1b35598e7518225826f739873878d0856be07174";
    revisions = {
      r0 = {
        nix = import ../hackage/sloth-0.0.2-r0-980017b59564127d7653a140cc57eb9462e4b13e394c45655d9c205e2b4ec442.nix;
        revNum = 0;
        sha256 = "980017b59564127d7653a140cc57eb9462e4b13e394c45655d9c205e2b4ec442";
      };
      default = "r0";
    };
  };
}