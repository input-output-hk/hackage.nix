{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hledger-chart";
        version = "0.14";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "A pie chart generator for the hledger accounting tool.";
      description = "hledger is a haskell port and friendly fork of John Wiegley's ledger accounting tool.\nThis package generates simple pie chart graphics showing relative account balances.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hledger-chart" = {
          depends = [
            (hsPkgs.hledger)
            (hsPkgs.hledger-lib)
            (hsPkgs.base)
            (hsPkgs.safe)
            (hsPkgs.Chart)
            (hsPkgs.colour)
          ];
        };
      };
    };
  }