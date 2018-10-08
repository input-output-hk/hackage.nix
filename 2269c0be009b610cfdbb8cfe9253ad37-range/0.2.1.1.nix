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
        version = "0.2.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "robertmassaioli@gmail.com";
      author = "Robert Massaioli";
      homepage = "https://bitbucket.org/robertmassaioli/range";
      url = "";
      synopsis = "An efficient and versatile range library.";
      description = "The range library alows the use of performant and versatile ranges in your code.\nIt supports bounded and unbounded ranges, ranges in a nested manner (like library\nversions), an efficient algebra of range computation and even a simplified interface\nfor ranges for the common cases. This library is far more efficient than using the\ndefault Data.List functions to approximate range behaviour. Performance is the major\nvalue offering of this library.\nIf this is your first time using this library it is highly recommended that you start\nwith \"Data.Range.Range\"; it contains the basics of this library that meet most use\ncases.";
      buildType = "Simple";
    };
    components = {
      "range" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ] ++ [ (hsPkgs.free) ];
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
          ] ++ [ (hsPkgs.free) ];
        };
      };
    };
  }