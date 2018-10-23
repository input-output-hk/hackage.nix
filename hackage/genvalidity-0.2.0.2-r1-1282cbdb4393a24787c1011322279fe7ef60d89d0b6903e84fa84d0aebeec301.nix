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
        name = "genvalidity";
        version = "0.2.0.2";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Testing utilities for the validity library";
      description = "Note: There are companion instance packages for this library:\n\n* <https://hackage.haskell.org/package/genvalidity-text genvalidity-text>\n\n* <https://hackage.haskell.org/package/genvalidity-containers genvalidity-containers>";
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