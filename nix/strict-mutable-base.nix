{
  "1.0.0.0" = {
    sha256 = "76ec8439cd1652e48cee069128581eb9c957c749ec0befcff3399d264032a419";
    revisions = {
      r0 = {
        nix = import ../hackage/strict-mutable-base-1.0.0.0-r0-fb6518f44185c9fca503dfe6c15437d448fd6c1cc72e2b87caacd2718e3885a5.nix;
        revNum = 0;
        sha256 = "fb6518f44185c9fca503dfe6c15437d448fd6c1cc72e2b87caacd2718e3885a5";
      };
      r1 = {
        nix = import ../hackage/strict-mutable-base-1.0.0.0-r1-b897986711ce4a4d6f1a1d438d259e48085b4557bca1d1a4865aa54c01a810db.nix;
        revNum = 1;
        sha256 = "b897986711ce4a4d6f1a1d438d259e48085b4557bca1d1a4865aa54c01a810db";
      };
      default = "r1";
    };
  };
  "1.1.0.0" = {
    sha256 = "ffe3d127d84a3931a67005f4388de4d8f908c8ed57feb3e7797d6eb0d13e90ff";
    revisions = {
      r0 = {
        nix = import ../hackage/strict-mutable-base-1.1.0.0-r0-b1c039f6b179aedb420a90cbe15d3c3e78fbaaa7146ed02700b84c6018ee734f.nix;
        revNum = 0;
        sha256 = "b1c039f6b179aedb420a90cbe15d3c3e78fbaaa7146ed02700b84c6018ee734f";
      };
      default = "r0";
    };
  };
}