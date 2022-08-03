{
  "0.1.0.0" = {
    sha256 = "d69c8143ea7fcd880e774744de779096b781fb6870cfb55125a897b8e13d953a";
    revisions = {
      r0 = {
        nix = import ../hackage/chr-pretty-0.1.0.0-r0-d39e505893b6d2ec575f24ccc2d50e53343575a96d79f2f7e9eb598fa59ec147.nix;
        revNum = 0;
        sha256 = "d39e505893b6d2ec575f24ccc2d50e53343575a96d79f2f7e9eb598fa59ec147";
        };
      r1 = {
        nix = import ../hackage/chr-pretty-0.1.0.0-r1-69d5021ad6fcf1af406d445c87dab3f1007fdfe389a097c7e0f8c4afce5e6597.nix;
        revNum = 1;
        sha256 = "69d5021ad6fcf1af406d445c87dab3f1007fdfe389a097c7e0f8c4afce5e6597";
        };
      default = "r1";
      };
    };
  }