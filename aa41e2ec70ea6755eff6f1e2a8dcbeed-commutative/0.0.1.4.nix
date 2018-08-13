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
        name = "commutative";
        version = "0.0.1.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Commutative binary operations.";
      description = "This package provides a trivial class for abelian binary operations, and an\nanalogue to @Data.Foldable@.";
      buildType = "Simple";
    };
    components = {
      "commutative" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.semigroups)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.random)
            (hsPkgs.semigroups)
          ];
        };
      };
    };
  }