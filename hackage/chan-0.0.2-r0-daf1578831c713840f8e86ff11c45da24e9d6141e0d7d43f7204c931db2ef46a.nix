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
        name = "chan";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Athan Clark";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/chan#readme";
      url = "";
      synopsis = "Some extra kit for Chans";
      description = "";
      buildType = "Simple";
    };
    components = {
      "chan" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "chan-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.chan)
            (hsPkgs.async)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }