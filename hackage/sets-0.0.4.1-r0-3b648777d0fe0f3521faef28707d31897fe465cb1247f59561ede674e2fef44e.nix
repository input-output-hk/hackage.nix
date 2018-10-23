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
        name = "sets";
        version = "0.0.4.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Various set implementations in Haskell";
      description = "This also includes overloaded functions for common set operations. See @Data.Set.Class@.";
      buildType = "Simple";
    };
    components = {
      "sets" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.commutative)
          (hsPkgs.contravariant)
          (hsPkgs.discrimination)
          (hsPkgs.invariant)
          (hsPkgs.witherable)
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
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.commutative)
            (hsPkgs.contravariant)
            (hsPkgs.discrimination)
            (hsPkgs.invariant)
            (hsPkgs.witherable)
          ];
        };
      };
    };
  }