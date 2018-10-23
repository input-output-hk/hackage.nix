{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hledger";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://joyful.com/hledger";
      url = "";
      synopsis = "A ledger-compatible text-based accounting tool.";
      description = "hledger is a minimal haskell clone of John Wiegley's \"ledger\" text-based\naccounting tool (http://newartisans.com/software/ledger.html).  hledger\ngenerates ledger-compatible register & balance reports from a plain text\nledger file, and demonstrates a functional implementation of ledger.";
      buildType = "Simple";
    };
    components = {
      "hledger" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.haskell98)
          (hsPkgs.directory)
          (hsPkgs.parsec)
          (hsPkgs.regex-compat)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.HUnit)
        ];
      };
      exes = {
        "hledger" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
            (hsPkgs.parsec)
            (hsPkgs.regex-compat)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }