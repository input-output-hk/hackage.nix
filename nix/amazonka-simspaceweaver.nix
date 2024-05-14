{
  "2.0" = {
    sha256 = "32ae2bbd842c4690294d06670fc3338d6d3f64f310ff0f940912a991716a7d04";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-simspaceweaver-2.0-r0-29fe931df0dec035599991e1b46bde0f099d89929602fdbed624a67a728390be.nix;
        revNum = 0;
        sha256 = "29fe931df0dec035599991e1b46bde0f099d89929602fdbed624a67a728390be";
      };
      r1 = {
        nix = import ../hackage/amazonka-simspaceweaver-2.0-r1-aba7e4a4737588725dd7b5eaf2c056e2228b7a5bc0507565defea94fae0f03d7.nix;
        revNum = 1;
        sha256 = "aba7e4a4737588725dd7b5eaf2c056e2228b7a5bc0507565defea94fae0f03d7";
      };
      default = "r1";
    };
  };
}