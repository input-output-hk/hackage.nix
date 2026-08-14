{
  "0.1.0.0" = {
    sha256 = "7d60d638411cf65d2b652ffa920eca0c4a04030fec0a4c3e6ae478a0a4c55648";
    revisions = {
      r0 = {
        nix = import ../hackage/hgg-ihaskell-0.1.0.0-r0-765f472c7a439d3e8df47ffbf161c952f70ebeb025e9844cb990347ce15e93ec.nix;
        revNum = 0;
        sha256 = "765f472c7a439d3e8df47ffbf161c952f70ebeb025e9844cb990347ce15e93ec";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "4a9a53cb93f2aa10f6c9afae100852a36c6dffc200acd8e1039c0e843b66eb65";
    revisions = {
      r0 = {
        nix = import ../hackage/hgg-ihaskell-0.2.0.0-r0-4125534610365e9678f0b246b5d729931f54179147d03a3cd89362edfc12500e.nix;
        revNum = 0;
        sha256 = "4125534610365e9678f0b246b5d729931f54179147d03a3cd89362edfc12500e";
      };
      default = "r0";
    };
  };
}