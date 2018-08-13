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
        name = "delay";
        version = "0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014-2016 davean";
      maintainer = "davean <davean@xkcd.com>";
      author = "davean";
      homepage = "";
      url = "";
      synopsis = "More useful and humain delaying functions";
      description = "Functions to provide delays, timeouts, and callbacks where the target time is calculated either from a period as an offset from the initialization time, or at a specific 'UTCTime'.\n\nMost standard Haskell types are supported for periods, based on the second as the base unit quantity. For more complicated period calculations, 'Dimensional's 'Time' type is supported.";
      buildType = "Simple";
    };
    components = {
      "delay" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.unbounded-delays)
          (hsPkgs.mtl)
          (hsPkgs.dimensional)
          (hsPkgs.exceptions)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.delay)
            (hsPkgs.time)
            (hsPkgs.async)
            (hsPkgs.dimensional)
            (hsPkgs.exceptions)
          ];
        };
      };
    };
  }