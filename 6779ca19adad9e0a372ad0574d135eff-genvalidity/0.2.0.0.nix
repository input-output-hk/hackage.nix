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
        name = "genvalidity";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Testing utilities for the validity library";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "genvalidity" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.validity)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "genvalidity-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.genvalidity)
          ];
        };
      };
    };
  }