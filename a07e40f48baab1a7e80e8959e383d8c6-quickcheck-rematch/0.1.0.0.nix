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
      specVersion = "1.8";
      identifier = {
        name = "quickcheck-rematch";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tcrayford@gmail.com";
      author = "Tom Crayford";
      homepage = "http://github.com/tcrayford/rematch";
      url = "";
      synopsis = "QuickCheck support for rematch";
      description = "";
      buildType = "Simple";
    };
    components = {
      "quickcheck-rematch" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.rematch)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.rematch)
          ];
        };
      };
    };
  }