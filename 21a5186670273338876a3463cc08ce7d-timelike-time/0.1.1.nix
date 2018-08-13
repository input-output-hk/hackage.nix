{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "timelike-time";
        version = "0.1.1";
      };
      license = "LicenseRef-Apache";
      copyright = "Copyright 2016 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <esz@posteo.de>";
      author = "Ertugrul Söylemez <esz@posteo.de>";
      homepage = "http://hub.darcs.net/esz/timelike-time";
      url = "";
      synopsis = "Timelike interface for the time library";
      description = "This library provides\n<http://hackage.haskell.org/package/timelike timelike> orphan\ninstances for the 'UTCTime' and 'ZonedTime' from the\n<http://hackage.haskell.org/package/time time library>.";
      buildType = "Simple";
    };
    components = {
      "timelike-time" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.timelike)
          (hsPkgs.transformers)
        ];
      };
    };
  }