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
        name = "failure-detector";
        version = "0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 davean";
      maintainer = "davean@xkcd.com";
      author = "davean";
      homepage = "";
      url = "";
      synopsis = "Failure Detectors implimented in Haskell.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "failure-detector" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.statistics)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.failure-detector)
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }