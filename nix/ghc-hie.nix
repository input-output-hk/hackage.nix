{
  "0.0.0" = {
    sha256 = "2ccabdf98385037a6453f9227d537967da11a2c29ded3a173d523c68928b5257";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-hie-0.0.0-r0-e0ed7480320809c1d57e05cfe3ce135e10e00b043daf132ee72fdce78411d32e.nix;
        revNum = 0;
        sha256 = "e0ed7480320809c1d57e05cfe3ce135e10e00b043daf132ee72fdce78411d32e";
      };
      default = "r0";
    };
  };
  "0.0.1" = {
    sha256 = "8c80edc481d66cf62495afeb4fa01385c8ffd6b6fa29d5c63a0ea73ba4be5a04";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-hie-0.0.1-r0-2ae3833ec867210a1d06cec2075b2e4ea43cde0a20e0f1737fd08466cc2e1f02.nix;
        revNum = 0;
        sha256 = "2ae3833ec867210a1d06cec2075b2e4ea43cde0a20e0f1737fd08466cc2e1f02";
      };
      default = "r0";
    };
  };
}