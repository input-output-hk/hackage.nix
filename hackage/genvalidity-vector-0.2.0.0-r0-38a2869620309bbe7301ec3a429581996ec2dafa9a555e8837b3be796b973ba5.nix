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
        name = "genvalidity-vector";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2017-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "GenValidity support for vector";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "genvalidity-vector" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.genvalidity)
          (hsPkgs.validity)
          (hsPkgs.validity-vector)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "genvalidity-vector-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.genvalidity-vector)
            (hsPkgs.hspec)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }