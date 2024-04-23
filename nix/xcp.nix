{
  "0.1.0.0" = {
    sha256 = "4bc1217c3ffca6ba1bf82c4e1715974beb096e009bf3389cc355e2d2f50fe764";
    revisions = {
      r0 = {
        nix = import ../hackage/xcp-0.1.0.0-r0-8b800c23578b51937e7ebc4adedb97525cbfbe5855323fd28c018594de97e768.nix;
        revNum = 0;
        sha256 = "8b800c23578b51937e7ebc4adedb97525cbfbe5855323fd28c018594de97e768";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "fad7bae8995dfe539508ce21c85e300df8970805f00706b2c2d9c66ff256a9c3";
    revisions = {
      r0 = {
        nix = import ../hackage/xcp-0.1.0.1-r0-64554133b5c6198cf00bb2611cb412b740da3b60dfd9429f4f71746a773b9063.nix;
        revNum = 0;
        sha256 = "64554133b5c6198cf00bb2611cb412b740da3b60dfd9429f4f71746a773b9063";
      };
      default = "r0";
    };
  };
}