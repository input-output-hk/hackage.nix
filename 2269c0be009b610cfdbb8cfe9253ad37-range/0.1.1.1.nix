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
        name = "range";
        version = "0.1.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "robertmassaioli@gmail.com";
      author = "Robert Massaioli";
      homepage = "https://bitbucket.org/robertmassaioli/range";
      url = "";
      synopsis = "This has a bunch of code for specifying and managing ranges in your code.";
      description = "range is built to allow you to use ranges in your code quickly and\nefficiently. There are many occasions where you will want to check if\ncertain values are within a range and this library will make it\ntrivial for you to do so. It also attempts to do so in the most\nefficient way possible.";
      buildType = "Simple";
    };
    components = {
      "range" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "test-range" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework)
            (hsPkgs.random)
            (hsPkgs.range)
          ];
        };
      };
    };
  }