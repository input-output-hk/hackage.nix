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
      specVersion = "1.10";
      identifier = {
        name = "ticker";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 OSANAI Kazuyoshi";
      maintainer = "osmium.k@gmail.com";
      author = "OSANAI Kazuyoshi";
      homepage = "https://github.com/kazeula/ticker-hs";
      url = "";
      synopsis = "A concurrent utility inspired by Ticker in golang";
      description = "A concurrent utility inspired by Ticker in golang";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.safe-exceptions)
        ];
      };
      tests = {
        "ticker-hspec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ticker)
            (hsPkgs.hspec)
            (hsPkgs.async)
            (hsPkgs.deepseq)
          ];
        };
        "ticker-doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
          ];
        };
      };
    };
  }