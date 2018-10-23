{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "timelike-clock";
        version = "0.1.0";
      };
      license = "LicenseRef-Apache";
      copyright = "Copyright 2016 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <esz@posteo.de>";
      author = "Ertugrul Söylemez <esz@posteo.de>";
      homepage = "http://hub.darcs.net/esz/timelike-clock";
      url = "";
      synopsis = "Timelike interface for the clock library";
      description = "This library provides a\n<http://hackage.haskell.org/package/timelike timelike> interface to\nthe <http://hackage.haskell.org/package/clock clock library>.";
      buildType = "Simple";
    };
    components = {
      "timelike-clock" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clock)
          (hsPkgs.timelike)
          (hsPkgs.transformers)
        ];
      };
    };
  }