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
        name = "flick-duration";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) Christopher Lord (Pliosoft), All Rights Reserved";
      maintainer = "christopher@pliosoft.com";
      author = "Christopher Lord";
      homepage = "https://github.com/pliosoft/flick-duration#readme";
      url = "";
      synopsis = "work with durations of time using the Flick as the smallest unit";
      description = "Please see the README on GitHub at <https://github.com/pliosoft/flick-duration#readme>";
      buildType = "Simple";
    };
    components = {
      "flick-duration" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clock)
        ];
      };
      tests = {
        "flick-duration-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.clock)
            (hsPkgs.flick-duration)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }