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
        name = "genvalidity-time";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "GenValidity support for time";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.genvalidity)
          (hsPkgs.time)
          (hsPkgs.validity-time)
        ];
      };
      tests = {
        "genvalidity-time-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.genvalidity-time)
            (hsPkgs.hspec)
            (hsPkgs.time)
          ];
        };
      };
    };
  }